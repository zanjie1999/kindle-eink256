.class public Lcom/amazon/nwstd/modules/NewsstandModule;
.super Lcom/amazon/kindle/modules/AbstractNewsstandModule;
.source "NewsstandModule.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mModuleInstance:Lcom/amazon/nwstd/modules/NewsstandModule;

.field private static mName:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNewsstandSharedPref:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lcom/amazon/nwstd/modules/NewsstandModule;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/modules/NewsstandModule;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcom/amazon/nwstd/modules/NewsstandModule;->mModuleInstance:Lcom/amazon/nwstd/modules/NewsstandModule;

    const-string v0, "NewsstandModule"

    .line 70
    sput-object v0, Lcom/amazon/nwstd/modules/NewsstandModule;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Lcom/amazon/kindle/modules/AbstractNewsstandModule;-><init>()V

    .line 89
    sget-object v0, Lcom/amazon/nwstd/modules/NewsstandModule;->mModuleInstance:Lcom/amazon/nwstd/modules/NewsstandModule;

    if-nez v0, :cond_0

    .line 91
    sput-object p0, Lcom/amazon/nwstd/modules/NewsstandModule;->mModuleInstance:Lcom/amazon/nwstd/modules/NewsstandModule;

    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Module constructors can only be called once."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lcom/amazon/nwstd/modules/NewsstandModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/nwstd/modules/NewsstandModule;)Landroid/content/Context;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/amazon/nwstd/modules/NewsstandModule;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private initializeService(Landroid/content/Context;)V
    .locals 2

    .line 217
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/modules/NewsstandModule;->registerIssueDeletedCallback(Landroid/content/Context;)V

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_upsell_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazon/nwstd/modules/NewsstandModule$3;

    invoke-direct {v1, p0, p1}, Lcom/amazon/nwstd/modules/NewsstandModule$3;-><init>(Lcom/amazon/nwstd/modules/NewsstandModule;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 274
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private registerIssueDeletedCallback(Landroid/content/Context;)V
    .locals 2

    .line 312
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 321
    :cond_1
    new-instance v1, Lcom/amazon/nwstd/service/ContentDeletedHandler;

    invoke-direct {v1, p1}, Lcom/amazon/nwstd/service/ContentDeletedHandler;-><init>(Landroid/content/Context;)V

    .line 322
    invoke-interface {v0, v1}, Lcom/amazon/kindle/event/IEventProvider;->registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    .line 323
    new-instance v1, Lcom/amazon/nwstd/service/ContentDeletedFromCloudHandler;

    invoke-direct {v1, p1, v0}, Lcom/amazon/nwstd/service/ContentDeletedFromCloudHandler;-><init>(Landroid/content/Context;Lcom/amazon/kindle/content/ILibraryService;)V

    .line 324
    invoke-interface {v0, v1}, Lcom/amazon/kindle/event/IEventProvider;->registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    return-void
.end method

.method private resetNewsstandSharedPreferences()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/amazon/nwstd/modules/NewsstandModule;->mNewsstandSharedPref:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->clear()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getDependentModules()Ljava/util/Collection;
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

.method public getName()Ljava/lang/String;
    .locals 1

    .line 188
    sget-object v0, Lcom/amazon/nwstd/modules/NewsstandModule;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 6

    .line 104
    iput-object p1, p0, Lcom/amazon/nwstd/modules/NewsstandModule;->mContext:Landroid/content/Context;

    const-string v0, "initializeModules"

    const/4 v1, 0x1

    .line 106
    invoke-static {v0, v1}, Lcom/amazon/kcp/util/Utils;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 108
    new-instance v2, Lcom/amazon/kindle/config/PropertiesModuleInitializer;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/newsstand/core/R$raw;->newsstandmodules:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/amazon/kindle/config/PropertiesModuleInitializer;-><init>(Landroid/content/Context;Ljava/io/InputStream;)V

    .line 109
    invoke-virtual {v2, p1}, Lcom/amazon/kindle/config/AbstractModuleInitializer;->initializeModules(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 110
    invoke-static {v0, v2}, Lcom/amazon/kcp/util/Utils;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 112
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v3

    .line 115
    new-instance v4, Lcom/amazon/android/docviewer/NewsstandKindleDocViewerFactory;

    invoke-direct {v4}, Lcom/amazon/android/docviewer/NewsstandKindleDocViewerFactory;-><init>()V

    invoke-interface {v3, v4}, Lcom/amazon/kcp/reader/IReaderController;->registerKindleDocViewerFactory(Lcom/amazon/android/docviewer/KindleDocViewerFactory;)V

    .line 118
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    const-string v3, "initializeDBState"

    .line 120
    invoke-static {v3, v1}, Lcom/amazon/kcp/util/Utils;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 122
    invoke-static {p1}, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->initialize(Landroid/content/Context;)V

    .line 123
    invoke-static {v3, v2}, Lcom/amazon/kcp/util/Utils;->LogPerfMarker(Ljava/lang/String;Z)V

    const-string/jumbo v3, "registerLayoutProvider"

    .line 125
    invoke-static {v3, v1}, Lcom/amazon/kcp/util/Utils;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 126
    sget-object v4, Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;->locationSeekerProviders:Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;

    new-instance v5, Lcom/amazon/nwstd/modules/NewsstandModule$1;

    invoke-direct {v5, p0}, Lcom/amazon/nwstd/modules/NewsstandModule$1;-><init>(Lcom/amazon/nwstd/modules/NewsstandModule;)V

    invoke-virtual {v4, v5}, Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;->registerProvider(Lcom/amazon/kindle/factory/IKindleObjectProvider;)V

    .line 136
    invoke-static {v3, v2}, Lcom/amazon/kcp/util/Utils;->LogPerfMarker(Ljava/lang/String;Z)V

    const-string/jumbo v3, "setLeftNavPannel"

    .line 138
    invoke-static {v3, v1}, Lcom/amazon/kcp/util/Utils;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_left_side_panel_enabled:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/panels/IPanelController;->getLeftPanelProviderRegistry()Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;

    move-result-object v1

    .line 145
    new-instance v4, Lcom/amazon/nwstd/modules/NewsstandModule$2;

    invoke-direct {v4, p0}, Lcom/amazon/nwstd/modules/NewsstandModule$2;-><init>(Lcom/amazon/nwstd/modules/NewsstandModule;)V

    invoke-virtual {v1, v4}, Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;->registerProvider(Lcom/amazon/kindle/factory/IKindleObjectProvider;)V

    .line 159
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    new-instance v1, Lcom/amazon/nwstd/toc/ReplicaTOCCommandItemProvider;

    invoke-direct {v1}, Lcom/amazon/nwstd/toc/ReplicaTOCCommandItemProvider;-><init>()V

    .line 162
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerActionBarWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 163
    new-instance v1, Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItemProvider;

    invoke-direct {v1}, Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItemProvider;-><init>()V

    .line 164
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerActionBarWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/modules/NewsstandModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/nwstd/toc/ReplicaTOCProvider;->initializeTOCProvider(Landroid/content/Context;)V

    .line 169
    invoke-static {v3, v2}, Lcom/amazon/kcp/util/Utils;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 172
    sget v0, Lcom/amazon/kindle/newsstand/core/R$layout;->periodicals_debug_settings_layout:I

    invoke-static {v0}, Lcom/amazon/kcp/debug/DebugActivity;->addDebugView(I)V

    .line 175
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/modules/NewsstandModule;->initializeService(Landroid/content/Context;)V

    return-void
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 291
    sget-object v0, Lcom/amazon/nwstd/modules/NewsstandModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Newsstand receives onAuthenticationEvent of type: [%s]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 293
    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGIN:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 295
    iget-object p1, p0, Lcom/amazon/nwstd/modules/NewsstandModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_upsell_enabled:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 296
    invoke-static {}, Lcom/amazon/nwstd/upsell/UpsellUtils;->clearUpsellData()V

    .line 297
    iget-object p1, p0, Lcom/amazon/nwstd/modules/NewsstandModule;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->launchOneShotFullSync(Landroid/content/Context;)V

    goto :goto_0

    .line 299
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    if-ne v0, p1, :cond_1

    .line 300
    invoke-direct {p0}, Lcom/amazon/nwstd/modules/NewsstandModule;->resetNewsstandSharedPreferences()V

    .line 301
    iget-object p1, p0, Lcom/amazon/nwstd/modules/NewsstandModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_upsell_enabled:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 302
    invoke-static {}, Lcom/amazon/nwstd/upsell/UpsellUtils;->clearUpsellData()V

    :cond_1
    :goto_0
    return-void
.end method
