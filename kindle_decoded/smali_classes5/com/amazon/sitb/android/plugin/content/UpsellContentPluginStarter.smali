.class public Lcom/amazon/sitb/android/plugin/content/UpsellContentPluginStarter;
.super Ljava/lang/Object;
.source "UpsellContentPluginStarter.java"


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private contentPluginContext:Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/plugin/content/UpsellContentPluginStarter;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/plugin/content/UpsellContentPluginStarter;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/sitb/android/plugin/content/UpsellContentPluginStarter;->contentPluginContext:Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;

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

    .line 33
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/content/UpsellContentPluginStarter;->contentPluginContext:Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->getUserRoleService()Lcom/amazon/sitb/android/services/UserRoleService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/sitb/android/services/UserRoleService;->getRole()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/sitb/android/utils/RoleUtils;->isChildRole(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/content/UpsellContentPluginStarter;->contentPluginContext:Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/amazon/sitb/android/plugin/content/UpsellContentPluginStarter;->contentPluginContext:Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;

    invoke-virtual {v1}, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->getPubSubEventsManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/amazon/sitb/android/plugin/content/UpsellContentPluginStarter;->contentPluginContext:Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;

    invoke-virtual {v2}, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->getSampleDeletionHandler()Lcom/amazon/sitb/android/plugin/content/SampleDeletionHandler;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 42
    iget-object v2, p0, Lcom/amazon/sitb/android/plugin/content/UpsellContentPluginStarter;->contentPluginContext:Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;

    invoke-virtual {v2}, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->getUpsellModel()Lcom/amazon/sitb/android/model/UpsellModel;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 43
    iget-object v2, p0, Lcom/amazon/sitb/android/plugin/content/UpsellContentPluginStarter;->contentPluginContext:Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;

    invoke-virtual {v2}, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->getSampleBarPresenter()Lcom/amazon/sitb/android/UpsellBarPresenter;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 44
    iget-object v2, p0, Lcom/amazon/sitb/android/plugin/content/UpsellContentPluginStarter;->contentPluginContext:Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;

    invoke-virtual {v2}, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->getSeriesBarPresenter()Lcom/amazon/sitb/android/UpsellBarPresenter;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 46
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/amazon/sitb/android/plugin/content/UpsellContentPluginStarter;->contentPluginContext:Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;

    invoke-virtual {v2}, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->getActionBarDecorationProvider()Lcom/amazon/sitb/android/plugin/content/ActionBarDecorationProvider;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerActionBarDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    .line 48
    iget-object v2, p0, Lcom/amazon/sitb/android/plugin/content/UpsellContentPluginStarter;->contentPluginContext:Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;

    invoke-virtual {v2}, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->getSeekerDecorationProvider()Lcom/amazon/sitb/android/plugin/content/SeekerDecorationProvider;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerLocationSeekerDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    .line 50
    sget-object v2, Lcom/amazon/sitb/android/plugin/content/UpsellContentPluginStarter;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Started content plugin version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/sitb/android/plugin/content/UpsellContentPluginStarter;->contentPluginContext:Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;

    invoke-virtual {v4}, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->getPluginMetadataService()Lcom/amazon/sitb/android/services/PluginMetadataService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/sitb/android/services/PluginMetadataService;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/amazon/sitb/android/utils/BuildUtils;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/sitb/R$bool;->show_debug_menu_option:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    new-instance v2, Lcom/amazon/sitb/android/plugin/debug/DebugActivityLauncherButton;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazon/sitb/android/plugin/debug/DebugActivityLauncherButton;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    if-ne v0, v3, :cond_0

    .line 58
    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerActionButtonProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerCustomActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    :cond_1
    :goto_0
    return-void

    .line 35
    :cond_2
    new-instance v0, Lcom/amazon/sitb/android/metrics/NotRunException;

    const-string v1, "Not starting content plugin for child role"

    invoke-direct {v0, v1}, Lcom/amazon/sitb/android/metrics/NotRunException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
