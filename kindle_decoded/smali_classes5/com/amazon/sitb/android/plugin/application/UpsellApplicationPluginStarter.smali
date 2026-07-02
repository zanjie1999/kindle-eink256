.class public Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPluginStarter;
.super Ljava/lang/Object;
.source "UpsellApplicationPluginStarter.java"


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPluginStarter;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPluginStarter;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPluginStarter;->applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/sitb/android/metrics/NotRunException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPluginStarter;->applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getUserRoleService()Lcom/amazon/sitb/android/services/UserRoleService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/sitb/android/services/UserRoleService;->getRole()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/sitb/android/utils/RoleUtils;->isChildRole(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPluginStarter;->applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPluginStarter;->applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    invoke-virtual {v2}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getApplicationReaderActivityLifecycleListener()Lcom/amazon/sitb/android/plugin/application/ApplicationReaderActivityLifecycleListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerActivityLifecycleListener(Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;)V

    .line 37
    iget-object v1, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPluginStarter;->applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    invoke-virtual {v1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getPubSubEventsManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPluginStarter;->applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    invoke-virtual {v2}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getApplicationLibraryContentUpdatedHandler()Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryContentUpdatedHandler;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 39
    iget-object v2, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPluginStarter;->applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    invoke-virtual {v2}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getApplicationBookNavigationHandler()Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 40
    iget-object v2, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPluginStarter;->applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    invoke-virtual {v2}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getSeriesInfoUpdatedHandler()Lcom/amazon/sitb/android/plugin/application/SeriesInfoUpdatedHandler;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 41
    iget-object v2, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPluginStarter;->applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    invoke-virtual {v2}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getPriceScheduler()Lcom/amazon/sitb/android/updater/price/PriceScheduler;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 42
    iget-object v2, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPluginStarter;->applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    invoke-virtual {v2}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getSeriesScheduler()Lcom/amazon/sitb/android/updater/series/SeriesScheduler;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 44
    iget-object v1, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPluginStarter;->applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    invoke-virtual {v1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getBroadcastReceivers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/sitb/android/broadcasts/BroadcastReceiverInfo;

    .line 46
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/sitb/android/broadcasts/BroadcastReceiverInfo;->getBroadcastListener()Lcom/amazon/kindle/krx/system/IBroadcastListener;

    move-result-object v4

    invoke-virtual {v2}, Lcom/amazon/sitb/android/broadcasts/BroadcastReceiverInfo;->getIntentType()Lcom/amazon/kindle/krx/system/IntentType;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerIntentListener(Lcom/amazon/kindle/krx/system/IBroadcastListener;Lcom/amazon/kindle/krx/system/IntentType;)V

    goto :goto_0

    .line 49
    :cond_0
    sget-object v0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPluginStarter;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started application plugin version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPluginStarter;->applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    invoke-virtual {v2}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getPluginMetadataService()Lcom/amazon/sitb/android/services/PluginMetadataService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/sitb/android/services/PluginMetadataService;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    return-void

    .line 31
    :cond_1
    new-instance v0, Lcom/amazon/sitb/android/metrics/NotRunException;

    const-string v1, "Not starting application plugin for child role"

    invoke-direct {v0, v1}, Lcom/amazon/sitb/android/metrics/NotRunException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
