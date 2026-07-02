.class public abstract Lcom/amazon/kindle/BaseUpgradePage;
.super Landroidx/fragment/app/FragmentActivity;
.source "BaseUpgradePage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/BaseUpgradePage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseUpgradePage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseUpgradePage.kt\ncom/amazon/kindle/BaseUpgradePage\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,485:1\n1#2:486\n*E\n"
.end annotation


# static fields
.field protected static final CONTENT_SCHEME:Ljava/lang/String; = "content"

.field public static final Companion:Lcom/amazon/kindle/BaseUpgradePage$Companion;

.field protected static final FILE_SCHEME:Ljava/lang/String; = "file"

.field private static final METRIC_ACTIVITY_ALREADY_FINISHED:Ljava/lang/String; = "ActivityAlreadyFinished"

.field private static final READER_AUDIOBOOK_COLLECTIONS_ACTION:Ljava/lang/String; = "com.amazon.kindle.action.SHOW_AUDIOBOOK_COLLECTIONS"

.field private static final READER_DOC_COLLECTIONS_ACTION:Ljava/lang/String; = "com.amazon.kindle.action.SHOW_DOC_COLLECTIONS"

.field private static volatile flags:I

.field private static volatile intentComponentName:Landroid/content/ComponentName;

.field private static volatile launcherIntent:Z


# instance fields
.field private androidApplicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;

.field protected factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

.field private final homeActivityLaunched:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private launcherTimerMetricsManager:Lcom/amazon/kcp/debug/LauncherTimerMetricManager;

.field protected metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/BaseUpgradePage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/BaseUpgradePage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/BaseUpgradePage;->Companion:Lcom/amazon/kindle/BaseUpgradePage$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kindle/BaseUpgradePage;->homeActivityLaunched:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$getFlags$cp()I
    .locals 1

    .line 58
    sget v0, Lcom/amazon/kindle/BaseUpgradePage;->flags:I

    return v0
.end method

.method public static final synthetic access$getIntentComponentName$cp()Landroid/content/ComponentName;
    .locals 1

    .line 58
    sget-object v0, Lcom/amazon/kindle/BaseUpgradePage;->intentComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public static final synthetic access$getLauncherIntent$cp()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/amazon/kindle/BaseUpgradePage;->launcherIntent:Z

    return v0
.end method

.method public static final synthetic access$setFlags$cp(I)V
    .locals 0

    .line 58
    sput p0, Lcom/amazon/kindle/BaseUpgradePage;->flags:I

    return-void
.end method

.method public static final synthetic access$setIntentComponentName$cp(Landroid/content/ComponentName;)V
    .locals 0

    .line 58
    sput-object p0, Lcom/amazon/kindle/BaseUpgradePage;->intentComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public static final synthetic access$setLauncherIntent$cp(Z)V
    .locals 0

    .line 58
    sput-boolean p0, Lcom/amazon/kindle/BaseUpgradePage;->launcherIntent:Z

    return-void
.end method

.method private final downloadAppConfig()V
    .locals 2

    .line 358
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "factory"

    .line 359
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/application/AppConfigRequest;

    invoke-direct {v1}, Lcom/amazon/kcp/application/AppConfigRequest;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method

.method private final handleAppMissingResourceStartupFailure()V
    .locals 1

    .line 424
    sget-object v0, Lcom/amazon/kcp/application/FatalErrorActivity;->Companion:Lcom/amazon/kcp/application/FatalErrorActivity$Companion;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/application/FatalErrorActivity$Companion;->showMissingResourceErrorActivity(Landroid/content/Context;)V

    return-void
.end method

.method private final handleDeeplink(Landroid/net/Uri;)V
    .locals 1

    .line 244
    const-class v0, Lcom/amazon/kindle/content/IDeeplinkHandler;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/IDeeplinkHandler;

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/content/IDeeplinkHandler;->handleDeeplink(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/amazon/kindle/BaseUpgradePage;->launchToHomeActivity()V

    goto :goto_0

    .line 250
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/BaseUpgradePageKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "deeplink handler not found"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/amazon/kindle/BaseUpgradePage;->launchToHomeActivity()V

    .line 253
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final isNotificationUriAction(Ljava/lang/String;)Z
    .locals 5

    .line 98
    invoke-static {}, Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;->values()[Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 99
    invoke-virtual {v4}, Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/BaseUpgradePageKt;->access$getTAG$p()Ljava/lang/String;

    return v2
.end method

.method private final launchNewActivity()V
    .locals 8

    .line 366
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_a

    check-cast v0, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingApplication;->hasAppStartupFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/amazon/kindle/BaseUpgradePage;->handleAppMissingResourceStartupFailure()V

    goto/16 :goto_4

    .line 369
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "creationIntent"

    .line 370
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/BaseUpgradePage;->setContentLaunchStartTime(Landroid/content/Intent;)V

    :try_start_0
    const-string v1, "android.intent.category.LAUNCHER"

    .line 372
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/amazon/kindle/BaseUpgradePage;->launcherIntent:Z

    .line 373
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/BaseUpgradePage;->intentComponentName:Landroid/content/ComponentName;

    .line 374
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    sput v1, Lcom/amazon/kindle/BaseUpgradePage;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 381
    :goto_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 382
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/content/BookContentType;->getContentType(Ljava/lang/String;)Lcom/amazon/kindle/content/BookContentType$ContentType;

    move-result-object v2

    const-string v3, "factory"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 384
    invoke-virtual {p0, v1, v2}, Lcom/amazon/kindle/BaseUpgradePage;->launchToUri(Landroid/net/Uri;Lcom/amazon/kindle/content/BookContentType$ContentType;)V

    .line 385
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "SamsungEdge"

    .line 387
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 388
    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_3

    .line 394
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.amazon.kindle.action.SHOW_AUDIOBOOK_COLLECTIONS"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.amazon.kindle.action.SHOW_DOC_COLLECTIONS"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 406
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/BaseUpgradePage;->launchToHomeActivity()V

    goto :goto_3

    .line 395
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/BaseUpgradePage;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    sget-object v5, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTIONS:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-interface {v0, v5}, Lcom/amazon/kcp/library/ILibraryController;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    .line 396
    iget-object v0, p0, Lcom/amazon/kindle/BaseUpgradePage;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    if-eqz v0, :cond_8

    .line 397
    new-instance v5, Lcom/amazon/kindle/krx/metrics/MetricsData;

    invoke-static {}, Lcom/amazon/kindle/BaseUpgradePageKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AmazonKindle"

    invoke-direct {v5, v7, v6}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 398
    invoke-virtual {v5, v6}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v5

    .line 399
    sget-object v6, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v5, v6}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v5

    .line 400
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "CollectionsIntentFromAudibleReceived"

    goto :goto_2

    :cond_4
    const-string v1, "CollectionsIntentFromDocsReceived"

    :goto_2
    invoke-virtual {v5, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    .line 396
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 408
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/amazon/kindle/BaseUpgradePage;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    const-string v1, "factory.authenticationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 413
    invoke-static {p0}, Lcom/amazon/kindle/marketreferral/MarketReferralTracker;->logReferralViaMetrics(Landroid/content/Context;)V

    :cond_6
    :goto_4
    return-void

    .line 408
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_8
    const-string v0, "metricsManager"

    .line 396
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 395
    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 366
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.amazon.kcp.application.ReddingApplication"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final launchNotificationUriAction(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    .line 446
    iget-object v0, p0, Lcom/amazon/kindle/BaseUpgradePage;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    const/4 v1, 0x0

    const-string v2, "factory"

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getHistoryManager()Lcom/amazon/kcp/application/HistoryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/HistoryManager;->clear()V

    .line 447
    iget-object v0, p0, Lcom/amazon/kindle/BaseUpgradePage;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    .line 448
    invoke-static {p0}, Lcom/amazon/kindle/UpgradePageUtils;->getHomeActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "settings"

    .line 451
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAppSettingsController;->getLaunchToNotification()Z

    move-result v2

    const-string v3, "intent"

    if-eqz v2, :cond_1

    .line 452
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    const-string v2, "LaunchNotificationsAction"

    .line 453
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 454
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const/4 p1, 0x0

    .line 455
    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IAppSettingsController;->setLaunchToNotification(Z)V

    .line 458
    :cond_1
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/amazon/kindle/BaseUpgradePage;->launchIntent(Landroid/content/Intent;)V

    return-void

    .line 447
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 446
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final onAppStartup()V
    .locals 4

    .line 347
    invoke-static {}, Lcom/amazon/kindle/BaseUpgradePageKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KindleBookOpen start"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-direct {p0}, Lcom/amazon/kindle/BaseUpgradePage;->downloadAppConfig()V

    .line 349
    invoke-direct {p0}, Lcom/amazon/kindle/BaseUpgradePage;->launchNewActivity()V

    .line 350
    iget-object v0, p0, Lcom/amazon/kindle/BaseUpgradePage;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OsArchitecture-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kcp/util/OsArchitecture;->getDescriptorForMetrics()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "metricsManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final setContentLaunchStartTime(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "timerStartElapsedRealtime"

    const-wide/16 v1, -0x1

    .line 87
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 88
    iget-object p1, p0, Lcom/amazon/kindle/BaseUpgradePage;->launcherTimerMetricsManager:Lcom/amazon/kcp/debug/LauncherTimerMetricManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/debug/LauncherTimerMetricManager;->startTimerMetric(J)V

    return-void

    :cond_0
    const-string p1, "launcherTimerMetricsManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method protected abstract checkAndHandleSignOutState(Landroid/content/Intent;)Z
.end method

.method protected final getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/kindle/BaseUpgradePage;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "factory"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected final getHomeActivityLaunched()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/BaseUpgradePage;->homeActivityLaunched:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method protected final getMetricsManager()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/BaseUpgradePage;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "metricsManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected abstract handleContentScheme(Landroid/net/Uri;Lcom/amazon/kindle/content/BookContentType$ContentType;)V
.end method

.method protected abstract handleFileScheme(Landroid/net/Uri;Lcom/amazon/kindle/content/BookContentType$ContentType;)V
.end method

.method public final handleKindleProtocol(Landroid/net/Uri;)V
    .locals 14

    const-string v0, "searchTerms"

    const-string/jumbo v1, "uri"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/BaseUpgradePage;->parseUri(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "KindleProtocol"

    const/4 v2, 0x0

    const-string v3, "metricsManager"

    const/4 v4, 0x0

    if-eqz p1, :cond_a

    .line 150
    new-instance v11, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$EXTERNAL;

    invoke-direct {v11, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$EXTERNAL;-><init>(Ljava/lang/String;)V

    const-string v5, "book_id"

    .line 151
    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    const-string v12, "UpgradePage"

    const/4 v13, 0x1

    if-eqz v6, :cond_1

    .line 152
    new-instance v0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;

    invoke-direct {v0}, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;-><init>()V

    .line 153
    invoke-virtual {p0}, Lcom/amazon/kindle/BaseUpgradePage;->reportBookOpenedFromExternalSource()V

    .line 154
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0, v11}, Lcom/amazon/kcp/library/BookOpenHelper;->openLocalOrArchived(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Landroid/content/Intent;

    move-result-object p1

    .line 156
    iget-object v0, p0, Lcom/amazon/kindle/BaseUpgradePage;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    if-eqz v0, :cond_0

    const-string v5, "LaunchToBookId"

    invoke-virtual {v0, v12, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_a

    :goto_0
    const/4 v4, 0x1

    goto/16 :goto_6

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v5, "asin"

    .line 158
    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "open"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 159
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/BaseUpgradePage;->checkAndHandleSignOutState(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "sample"

    .line 160
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->UNKNOWN:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    :goto_1
    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    const-string v0, "if (intent.getBooleanExt\u2026icType.UNKNOWN.toString()"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    const-string v6, "referral_ordinal"

    .line 161
    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 162
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/kindle/BaseUpgradePage;->reportBookOpenedFromExternalSource()V

    const-string v0, "falkor"

    .line 163
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 164
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 165
    new-instance v9, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;

    invoke-direct {v9}, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;-><init>()V

    move-object v5, p0

    .line 164
    invoke-static/range {v5 .. v11}, Lcom/amazon/kcp/library/BookOpenHelper;->open(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;Lcom/amazon/kcp/reader/IReaderController$StartPage;ZLcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Landroid/content/Intent;

    move-result-object p1

    .line 166
    iget-object v0, p0, Lcom/amazon/kindle/BaseUpgradePage;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    if-eqz v0, :cond_4

    const-string v5, "LaunchToAsin"

    invoke-virtual {v0, v12, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    :goto_3
    if-nez p1, :cond_a

    goto :goto_0

    .line 169
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/amazon/kindle/BaseUpgradePage;->isNotificationUriAction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 170
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/amazon/kindle/BaseUpgradePage;->launchNotificationUriAction(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_6

    .line 171
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "search"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 173
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 175
    const-class v6, Lcom/amazon/kcp/library/SearchActivityProvider;

    invoke-static {v6}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kcp/library/SearchActivityProvider;

    if-eqz v6, :cond_8

    const-string v7, "UniqueDiscovery.of(Searc\u2026hActivityProvider found\")"

    .line 176
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-interface {v6, p0}, Lcom/amazon/kcp/library/SearchActivityProvider;->searchActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    .line 178
    invoke-virtual {v6, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 176
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v5, "No SearchActivityProvider found"

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_9
    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception v0

    .line 182
    :try_start_1
    invoke-static {}, Lcom/amazon/kindle/BaseUpgradePageKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Exception with ACTION_SEARCH"

    invoke-static {v5, v6, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 184
    :goto_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    throw p1

    :cond_a
    :goto_6
    if-eqz p1, :cond_e

    .line 188
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/BaseUpgradePage;->isNotificationUriAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 189
    invoke-static {}, Lcom/amazon/kindle/BaseUpgradePageKt;->access$getTAG$p()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 190
    invoke-static {}, Lcom/amazon/kindle/BaseUpgradePageKt;->access$getTAG$p()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 195
    invoke-static {}, Lcom/amazon/kindle/BaseUpgradePageKt;->access$getTAG$p()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 196
    :cond_b
    invoke-static {}, Lcom/amazon/kindle/BaseUpgradePageKt;->access$getTAG$p()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    .line 197
    :cond_c
    invoke-static {}, Lcom/amazon/kindle/BaseUpgradePageKt;->access$getTAG$p()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 198
    :cond_d
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    :cond_e
    if-nez v4, :cond_10

    .line 202
    iget-object p1, p0, Lcom/amazon/kindle/BaseUpgradePage;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    if-eqz p1, :cond_f

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "OpenBookNotInLibrary"

    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_7

    :cond_f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 204
    :cond_10
    :goto_7
    invoke-virtual {p0}, Lcom/amazon/kindle/BaseUpgradePage;->launchToHomeActivity()V

    :cond_11
    :goto_8
    return-void
.end method

.method protected handleOnResume()V
    .locals 3

    .line 325
    invoke-static {p0}, Lcom/amazon/kcp/application/ReddingApplication;->isSecureStorageUnavailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->app_name_full:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.app_name_full)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->error_secure_storage_unavailable:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.error\u2026cure_storage_unavailable)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    sget-object v2, Lcom/amazon/kcp/application/FatalErrorActivity;->Companion:Lcom/amazon/kcp/application/FatalErrorActivity$Companion;

    invoke-virtual {v2, p0, v0, v1}, Lcom/amazon/kcp/application/FatalErrorActivity$Companion;->showFatalErrorActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/BaseUpgradePage;->initializeComponents()V

    .line 334
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->blockOnAppInitialization()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    invoke-direct {p0}, Lcom/amazon/kindle/BaseUpgradePage;->onAppStartup()V

    goto :goto_0

    .line 338
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/BaseUpgradePage;->handleAppMissingResourceStartupFailure()V

    :goto_0
    return-void
.end method

.method protected final initializeComponents()V
    .locals 2

    .line 314
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "MetricsManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/BaseUpgradePage;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    .line 315
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    const-string v1, "AndroidApplicationController.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/BaseUpgradePage;->androidApplicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 316
    invoke-static {}, Lcom/amazon/kcp/debug/LauncherTimerMetricManager;->getInstance()Lcom/amazon/kcp/debug/LauncherTimerMetricManager;

    move-result-object v0

    const-string v1, "LauncherTimerMetricManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/BaseUpgradePage;->launcherTimerMetricsManager:Lcom/amazon/kcp/debug/LauncherTimerMetricManager;

    .line 317
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/BaseUpgradePage;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    return-void
.end method

.method protected final launchIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/BaseUpgradePage;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getHistoryManager()Lcom/amazon/kcp/application/HistoryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/HistoryManager;->clear()V

    .line 114
    iget-object v0, p0, Lcom/amazon/kindle/BaseUpgradePage;->androidApplicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    const/high16 p1, 0x10a0000

    const v0, 0x10a0001

    .line 116
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :cond_0
    const-string p1, "androidApplicationController"

    .line 114
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "factory"

    .line 113
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method protected launchToHomeActivity()V
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/amazon/kindle/BaseUpgradePage;->homeActivityLaunched:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-static {p0}, Lcom/amazon/kindle/UpgradePageUtils;->getHomeActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    .line 434
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/BaseUpgradePage;->launchIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final launchToUri(Landroid/net/Uri;Lcom/amazon/kindle/content/BookContentType$ContentType;)V
    .locals 3

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/amazon/kindle/BaseUpgradePageKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received launch intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 219
    invoke-static {}, Lcom/amazon/kindle/BaseUpgradePageKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Uri.getScheme() returned null "

    invoke-static {p2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 221
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleProtocol;->isKindleScheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/BaseUpgradePage;->handleKindleProtocol(Landroid/net/Uri;)V

    goto :goto_1

    .line 223
    :cond_1
    invoke-static {p1}, Lcom/amazon/kcp/application/DeeplinkParser;->isDeeplink(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 224
    invoke-static {p1}, Lcom/amazon/kcp/application/DeeplinkParser;->isDeeplinkCMXStore(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/BaseUpgradePage;->handleFileScheme(Landroid/net/Uri;Lcom/amazon/kindle/content/BookContentType$ContentType;)V

    goto :goto_1

    .line 229
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 230
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/BaseUpgradePage;->handleContentScheme(Landroid/net/Uri;Lcom/amazon/kindle/content/BookContentType$ContentType;)V

    goto :goto_1

    .line 232
    :cond_4
    invoke-static {}, Lcom/amazon/kindle/BaseUpgradePageKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t determine how to open URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with scheme "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 232
    invoke-static {v0, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 226
    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/BaseUpgradePage;->handleDeeplink(Landroid/net/Uri;)V

    .line 235
    :goto_1
    invoke-static {}, Lcom/amazon/kindle/BaseUpgradePageKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "URI: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "processed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "launchedFromShortcut"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 285
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ne v0, v2, :cond_1

    .line 286
    sget v0, Lcom/amazon/kindle/librarymodule/R$style;->Theme_NoBackground:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    .line 288
    :cond_1
    sget v0, Lcom/amazon/kindle/librarymodule/R$style;->Theme_Transparent:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 290
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 291
    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onPostResume()V
    .locals 4

    .line 300
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPostResume()V

    .line 302
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/BaseUpgradePage;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    const/4 v1, 0x0

    const-string v2, "metricsManager"

    if-eqz v0, :cond_3

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    const-string v3, "ActivityAlreadyFinished"

    .line 305
    invoke-virtual {v0, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    .line 306
    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    .line 307
    iget-object v3, p0, Lcom/amazon/kindle/BaseUpgradePage;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 308
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void

    .line 307
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method protected onResume()V
    .locals 0

    .line 295
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 296
    invoke-virtual {p0}, Lcom/amazon/kindle/BaseUpgradePage;->handleOnResume()V

    return-void
.end method

.method public final openDocumentForContent(Landroid/net/Uri;)V
    .locals 2

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const p1, 0x50008000

    .line 266
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected final parseUri(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-static {p0, p1}, Lcom/amazon/kcp/application/KindleProtocol;->parseUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected final reportBookOpenedFromExternalSource()V
    .locals 0

    .line 124
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->reportBookOpenedFromExternalSource()V

    return-void
.end method

.method protected final setFactory(Lcom/amazon/kcp/application/IKindleObjectFactory;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/amazon/kindle/BaseUpgradePage;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    return-void
.end method

.method protected final setMetricsManager(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/amazon/kindle/BaseUpgradePage;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    return-void
.end method
