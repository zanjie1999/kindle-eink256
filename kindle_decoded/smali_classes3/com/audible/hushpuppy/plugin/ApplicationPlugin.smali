.class public final Lcom/audible/hushpuppy/plugin/ApplicationPlugin;
.super Ljava/lang/Object;
.source "ApplicationPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    entry = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
    name = "com.audible.hushpuppy.ApplicationPlugin"
    roles = {
        .enum Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/plugin/ApplicationPlugin$PfmEndpointsCallback;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field protected abstractPlatformSetting:Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;

.field protected applicationActivityLifeCycleController:Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;

.field protected audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field protected chapterController:Lcom/audible/hushpuppy/controller/ChapterController;

.field private currentHushpuppyState:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

.field protected endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

.field protected eventBus:Lde/greenrobot/event/EventBus;

.field protected hushpuppyStorage:Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;

.field private isHandleUserSignOutNeeded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private lastSignInUserId:Ljava/lang/String;

.field protected mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

.field protected ownershipManager:Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;

.field protected playbackMetricsLoggerController:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;

.field protected readerActivityLifecycleController:Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;

.field protected readerModeChangeListener:Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;

.field protected readerNavigationController:Lcom/audible/hushpuppy/controller/ReaderNavigationController;

.field protected samplePlaybackController:Lcom/audible/hushpuppy/controller/SamplePlaybackController;

.field protected sharedPreferences:Lcom/audible/mobile/preferences/PreferenceStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;",
            ">;"
        }
    .end annotation
.end field

.field private updatePfms:Z

.field protected userRegistrationHandler:Lcom/audible/hushpuppy/extensions/registration/IUserRegistrationHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->isHandleUserSignOutNeeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 229
    invoke-static {}, Lcom/audible/hushpuppy/common/event/EventBusFactory;->getInstance()Lcom/audible/hushpuppy/common/event/EventBusFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/event/EventBusFactory;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->eventBus:Lde/greenrobot/event/EventBus;

    .line 230
    sget-object v0, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;->DISABLED:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    iput-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->currentHushpuppyState:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    .line 231
    iput-boolean v1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->updatePfms:Z

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/plugin/ForceUpdate;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->updatePfms(Lcom/audible/hushpuppy/plugin/ForceUpdate;)V

    return-void
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;)Ljava/lang/String;
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->getCurrentUserPfm()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->publishHushpuppyState()V

    return-void
.end method

.method static synthetic access$400(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->publishPfmUpdateForHPEnabled()V

    return-void
.end method

.method private checkHushpuppyEnabled()V
    .locals 2

    .line 401
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "HP-AppStart: Checking user logged in or not"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->CheckHushpuppyEnabledTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 403
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->isPfmReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    iget-boolean v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->updatePfms:Z

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin$1;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin$1;-><init>(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 412
    :cond_0
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->publishHushpuppyState()V

    .line 414
    :cond_1
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->CheckHushpuppyEnabledTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    return-void
.end method

.method private getCurrentUserId()Ljava/lang/String;
    .locals 3

    .line 446
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 448
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Active IUserAccount is null!"

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v1

    .line 452
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->isAuthenticated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 453
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "User is not authenticated!"

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v1

    .line 457
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 459
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "UserId of active user is null!"

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v1

    .line 468
    :cond_2
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 470
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "PFM of active user is null or blank!"

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v1

    :cond_3
    return-object v2
.end method

.method private getCurrentUserPfm()Ljava/lang/String;
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 686
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getHushpuppyStateChangeEvent()Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->getCurrentUserPfm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/pfm/endpoint/IEndpointFactory;->getEndpoints(Ljava/lang/String;)Lcom/audible/pfm/endpoint/INetworkEndpoints;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 651
    sget-object v0, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;->ENABLED:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;->DISABLED:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;

    :goto_1
    return-object v0
.end method

.method private handleDeregistration()V
    .locals 2

    .line 354
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "handleDeregistration"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->isHandleUserSignOutNeeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "handleDeregistration: Already deregistered, so ignoring to prevent double-eventing."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 361
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Clear lastSignInUserId"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 362
    iput-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->lastSignInUserId:Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->userRegistrationHandler:Lcom/audible/hushpuppy/extensions/registration/IUserRegistrationHandler;

    invoke-interface {v0}, Lcom/audible/hushpuppy/extensions/registration/IUserRegistrationHandler;->onUserDeregistration()V

    .line 365
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Set sign out needed flag to false"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->isHandleUserSignOutNeeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private handleRegistration()V
    .locals 3

    .line 374
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "handleRegistration"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 376
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 378
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "handleRegistration: User ID is null; ignoring to prevent double-eventing."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->lastSignInUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "handleRegistration: Already registered, so ignoring to prevent double-eventing."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->userRegistrationHandler:Lcom/audible/hushpuppy/extensions/registration/IUserRegistrationHandler;

    iget-object v2, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/extensions/registration/IUserRegistrationHandler;->onUserRegistration(Lcom/amazon/kindle/krx/application/IUserAccount;)V

    .line 389
    sget-object v1, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Set sign out needed flag to true"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->isHandleUserSignOutNeeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 392
    sget-object v1, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Update lastSignInUserId"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 393
    iput-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->lastSignInUserId:Ljava/lang/String;

    return-void
.end method

.method private initializeDagger()V
    .locals 2

    .line 618
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->create(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 619
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->inject(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;)V

    .line 621
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->eventBus:Lde/greenrobot/event/EventBus;

    const-string v1, "eventBus was not injected!"

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 622
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

    const-string v1, "endpointFactory was not injected!"

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 623
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->readerNavigationController:Lcom/audible/hushpuppy/controller/ReaderNavigationController;

    const-string v1, "readerNavigationController was not injected!"

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 624
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->readerActivityLifecycleController:Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;

    const-string v1, "readerActivityLifecycleController was not injected!"

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 625
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->playbackMetricsLoggerController:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;

    const-string v1, "playbackMetricsLoggerController was not injected!"

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 626
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->readerModeChangeListener:Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;

    const-string v1, "readerModeChangeListener was not injected!"

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 627
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->ownershipManager:Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;

    const-string v1, "ownershipManager was not injected!"

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 628
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    const-string v1, "audibleService was not injected!"

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 630
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->hushpuppyController()Lcom/audible/hushpuppy/controller/HushpuppyController;

    move-result-object v0

    .line 631
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 633
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->servicesCallbackController()Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;

    move-result-object v0

    .line 634
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private isPfmReady()Z
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getCountryOfResidence()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/mobile/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private publishHushpuppyState()V
    .locals 4

    .line 499
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->getHushpuppyStateChangeEvent()Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;->getState()Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->currentHushpuppyState:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    if-eq v1, v2, :cond_1

    .line 503
    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;->getState()Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    move-result-object v1

    iput-object v1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->currentHushpuppyState:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    .line 506
    sget-object v2, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;->ENABLED:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    new-instance v1, Lcom/audible/hushpuppy/plugin/ApplicationPlugin$2;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin$2;-><init>(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 522
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->registerListeners()V

    .line 524
    :cond_0
    sget-object v1, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New HushpuppyState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->currentHushpuppyState:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private publishPfmUpdateForHPEnabled()V
    .locals 3

    .line 674
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->getHushpuppyStateChangeEvent()Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;

    move-result-object v0

    .line 676
    sget-object v1, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;->ENABLED:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;

    if-ne v0, v1, :cond_0

    .line 677
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Posting PfmEnabledAndUpdatedEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/pfm/event/PfmEnabledAndUpdatedEvent;

    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->getCurrentUserPfm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/audible/pfm/event/PfmEnabledAndUpdatedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private registerGlobalSyncReceiver()V
    .locals 3

    .line 552
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Registering Global sync broadcast receiver"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->abstractPlatformSetting:Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;->onAirPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    new-instance v0, Lcom/audible/hushpuppy/common/receiver/StandAloneLibraryManualSyncListener;

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/receiver/StandAloneLibraryManualSyncListener;-><init>(Lde/greenrobot/event/EventBus;)V

    .line 557
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getSyncManager()Lcom/amazon/kindle/krx/sync/ISyncManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/sync/ISyncManager;->registerManualSyncListener(Lcom/amazon/kindle/krx/sync/IManualSyncListener;)V

    goto :goto_0

    .line 559
    :cond_0
    new-instance v0, Lcom/audible/hushpuppy/common/receiver/ReaderSyncListener;

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/receiver/ReaderSyncListener;-><init>(Lde/greenrobot/event/EventBus;)V

    .line 560
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/system/IntentType;->MANUAL_SYNC:Lcom/amazon/kindle/krx/system/IntentType;

    invoke-interface {v1, v0, v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerIntentListener(Lcom/amazon/kindle/krx/system/IBroadcastListener;Lcom/amazon/kindle/krx/system/IntentType;)V

    :goto_0
    return-void
.end method

.method private registerJitProvider()V
    .locals 2

    .line 605
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->jitTutorialProvider()Lcom/audible/hushpuppy/controller/IJitTutorialProvider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 607
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "JIT: jitTutorialProvider is null. Cannot register"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 610
    :cond_0
    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/IJitTutorialProvider;->registerJitProvider()V

    return-void
.end method

.method private registerListeners()V
    .locals 2

    .line 539
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Registering listeners"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 540
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->registerGlobalSyncReceiver()V

    .line 541
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->registerReaderContentLifecycleListener()V

    .line 542
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->registerReaderTOCLoadedListener()V

    .line 543
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->registerStartPageProvider()V

    .line 544
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->registerJitProvider()V

    return-void
.end method

.method private registerReaderTOCLoadedListener()V
    .locals 2

    .line 585
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Registering Reader TOC Listener for table of content load callbacks"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->chapterController:Lcom/audible/hushpuppy/controller/ChapterController;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerTOCLoadedListener(Lcom/amazon/kindle/krx/reader/IReaderTOCLoadedListener;)V

    return-void
.end method

.method private registerStartPageProvider()V
    .locals 2

    .line 595
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Registering Start Page Provider to provide LPR **"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->readerNavigationController:Lcom/audible/hushpuppy/controller/ReaderNavigationController;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerStartPageProvider(Lcom/amazon/kindle/krx/reader/IStartPageProvider;)V

    return-void
.end method

.method private updatePfms(Lcom/audible/hushpuppy/plugin/ForceUpdate;)V
    .locals 3

    .line 425
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->UpdatePfmsTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    const/4 v0, 0x1

    .line 427
    iput-boolean v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->updatePfms:Z

    .line 430
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->endPointController()Lcom/audible/pfm/controller/IEndpointController;

    move-result-object v0

    .line 431
    sget-object v1, Lcom/audible/hushpuppy/plugin/ForceUpdate;->FORCED:Lcom/audible/hushpuppy/plugin/ForceUpdate;

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    .line 432
    new-instance p1, Lcom/audible/hushpuppy/plugin/ApplicationPlugin$PfmEndpointsCallback;

    invoke-direct {p1, p0, v2}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin$PfmEndpointsCallback;-><init>(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/plugin/ApplicationPlugin$1;)V

    invoke-interface {v0, p1}, Lcom/audible/pfm/controller/IEndpointController;->getDevicePlatformConfigIgnoreCache(Lcom/audible/pfm/controller/IEndpointController$IEndpointCallback;)V

    goto :goto_0

    .line 434
    :cond_0
    new-instance p1, Lcom/audible/hushpuppy/plugin/ApplicationPlugin$PfmEndpointsCallback;

    invoke-direct {p1, p0, v2}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin$PfmEndpointsCallback;-><init>(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/plugin/ApplicationPlugin$1;)V

    invoke-interface {v0, p1}, Lcom/audible/pfm/controller/IEndpointController;->getDevicePlatformConfig(Lcom/audible/pfm/controller/IEndpointController$IEndpointCallback;)V

    .line 436
    :goto_0
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->UpdatePfmsTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    return-void
.end method


# virtual methods
.method public getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 289
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleColorChangeEvent(Lcom/amazon/kindle/krx/events/ColorModeChangeEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 316
    sget-object p1, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Handling ColorModeChangeEvent"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 317
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->eventBus:Lde/greenrobot/event/EventBus;

    sget-object v0, Lcom/audible/hushpuppy/common/event/reader/ReaderColorChangeEvent;->INSTANCE:Lcom/audible/hushpuppy/common/event/reader/ReaderColorChangeEvent;

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public handleUserRegistrationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 329
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "handleUserRegistrationEvent %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->userRegistrationHandler:Lcom/audible/hushpuppy/extensions/registration/IUserRegistrationHandler;

    if-nez v0, :cond_0

    .line 332
    sget-object p1, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "handleUserRegistrationEvent userRegistrationHandler is null!"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void

    .line 335
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin$3;->$SwitchMap$com$amazon$kindle$krx$events$KRXAuthenticationEvent$EventType:[I

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 341
    :cond_1
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;->UserDeregistration:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 342
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->handleDeregistration()V

    goto :goto_0

    .line 337
    :cond_2
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;->UserRegistration:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 338
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->handleRegistration()V

    :goto_0
    return-void
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 4

    .line 237
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 240
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object p1

    new-instance v0, Lcom/audible/hushpuppy/common/logging/KrxLogWriter;

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/logging/KrxLogWriter;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->registerLogWriter(Lcom/audible/hushpuppy/common/logging/ILogWriter;)V

    .line 243
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    new-instance v0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;->register(Lcom/audible/hushpuppy/common/metric/IMetricLogger;)V

    .line 245
    sget-object p1, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "HP-AppStart: Initializing Hushpuppy for KRX"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 246
    sget-object p1, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "HP-AppStart: Initializingcom.audible.hushpuppy.ApplicationPlugin"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->getCurrentUserId()Ljava/lang/String;

    move-result-object p1

    .line 250
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->isHandleUserSignOutNeeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 251
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "Is user signed in? %s"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->initializeDagger()V

    .line 257
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->ownershipManager:Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;->registerLibraryListener()V

    .line 262
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->abstractPlatformSetting:Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;->setAiRMetricsManager()V

    .line 265
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 268
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 271
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->readerModeChangeListener:Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 274
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->playbackMetricsLoggerController:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 277
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->playbackMetricsLoggerController:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->register()V

    .line 280
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;->registerKnownWeblabs()V

    .line 281
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->sharedPreferences:Lcom/audible/mobile/preferences/PreferenceStore;

    sget-object v0, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->DB_SCALING_TOGGLE_MISMATCH_EXPECTED_KEY:Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    invoke-interface {p1, v0, v2}, Lcom/audible/mobile/preferences/PreferenceStore;->setBoolean(Ljava/lang/Object;Z)V

    .line 283
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->checkHushpuppyEnabled()V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;)V
    .locals 3

    .line 299
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HP-AppStart: PFM-UPDATE - received GlobalSyncEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 302
    sget-object v0, Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;->MANUAL_LIBRARY_SYNC:Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 303
    :goto_0
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HP-AppStart: PFM-UPDATE - update PFM force =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 305
    sget-object p1, Lcom/audible/hushpuppy/plugin/ForceUpdate;->FORCED:Lcom/audible/hushpuppy/plugin/ForceUpdate;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/plugin/ForceUpdate;->NOT_FORCED:Lcom/audible/hushpuppy/plugin/ForceUpdate;

    :goto_1
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->updatePfms(Lcom/audible/hushpuppy/plugin/ForceUpdate;)V

    return-void
.end method

.method protected registerReaderContentLifecycleListener()V
    .locals 2

    .line 569
    sget-object v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Registering Reader navigation and activity lifecycle listeners"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->readerNavigationController:Lcom/audible/hushpuppy/controller/ReaderNavigationController;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 572
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->samplePlaybackController:Lcom/audible/hushpuppy/controller/SamplePlaybackController;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 573
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->readerActivityLifecycleController:Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerActivityLifecycleListener(Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;)V

    .line 575
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 576
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->applicationActivityLifeCycleController:Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
