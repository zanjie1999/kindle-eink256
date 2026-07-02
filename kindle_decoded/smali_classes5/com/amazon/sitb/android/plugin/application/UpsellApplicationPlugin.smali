.class public Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;
.super Ljava/lang/Object;
.source "UpsellApplicationPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    minApi = 0xe
    name = "SamplingUpsellApplicationPlugin"
    role = .enum Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;
    scope = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Scope;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Scope;
.end annotation


# static fields
.field private static instance:Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;


# instance fields
.field private applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

.field private enabled:Z

.field private startupReaderListener:Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->enabled:Z

    .line 33
    sput-object p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->instance:Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;)Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;)Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    return-object p1
.end method

.method public static getInstance()Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;
    .locals 1

    .line 95
    sget-object v0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->instance:Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized ensureEnabled(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 14

    monitor-enter p0

    .line 56
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->enabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->enabled:Z

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->startupReaderListener:Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;

    .line 60
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->setLogger(Lcom/amazon/kindle/krx/logging/ILogger;)V

    .line 61
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    const-string v1, "Enabling upsell application plugin"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 63
    new-instance v13, Lcom/amazon/sitb/android/metrics/MetricsService;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/sitb/android/metrics/MetricEventFactory;

    new-instance v2, Lcom/amazon/sitb/android/services/ClockService;

    invoke-direct {v2}, Lcom/amazon/sitb/android/services/ClockService;-><init>()V

    invoke-direct {v1, v2}, Lcom/amazon/sitb/android/metrics/MetricEventFactory;-><init>(Lcom/amazon/sitb/android/services/ClockService;)V

    invoke-direct {v13, v0, v1}, Lcom/amazon/sitb/android/metrics/MetricsService;-><init>(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/sitb/android/metrics/MetricEventFactory;)V

    .line 64
    new-instance v0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin$1;

    const-string v4, "Upsell application plugin enabling"

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    sget-object v7, Lcom/amazon/sitb/android/Metric;->MODULE_INIT_TIME:Lcom/amazon/sitb/android/Metric;

    sget-object v8, Lcom/amazon/sitb/android/Metric;->MODULE_INIT_ATTEMPT:Lcom/amazon/sitb/android/Metric;

    sget-object v9, Lcom/amazon/sitb/android/Metric;->MODULE_INIT_ENABLED:Lcom/amazon/sitb/android/Metric;

    sget-object v10, Lcom/amazon/sitb/android/Metric;->MODULE_INIT_FAILURE:Lcom/amazon/sitb/android/Metric;

    sget-object v11, Lcom/amazon/sitb/android/Metric;->MODULE_INIT_DISABLED:Lcom/amazon/sitb/android/Metric;

    move-object v2, v0

    move-object v3, p0

    move-object v6, v13

    move-object v12, p1

    invoke-direct/range {v2 .. v13}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin$1;-><init>(Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/sitb/android/metrics/MetricsService;)V

    .line 81
    invoke-virtual {v0}, Lcom/amazon/sitb/android/metrics/MeasuredTask;->execute()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getApplicationContext()Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    return-object v0
.end method

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 46
    new-instance v0, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;

    invoke-direct {v0, p0, p1}, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;-><init>(Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object v0, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->startupReaderListener:Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;

    .line 48
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->startupReaderListener:Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->registerLibraryEventListener(Lcom/amazon/kindle/krx/library/ILibraryEventListener;)V

    .line 49
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->startupReaderListener:Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerContentPropertyProvider(Lcom/amazon/kindle/krx/reader/IContentPropertyProvider;)V

    .line 50
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->startupReaderListener:Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 51
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->startupReaderListener:Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method
