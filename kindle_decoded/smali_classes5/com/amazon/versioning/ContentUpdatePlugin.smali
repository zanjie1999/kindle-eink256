.class public Lcom/amazon/versioning/ContentUpdatePlugin;
.super Ljava/lang/Object;
.source "ContentUpdatePlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    minApi = 0x10
    name = "ContentUpdatePlugin"
    scope = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Scope;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Scope;
.end annotation


# static fields
.field private static final CLASS_TAG:Ljava/lang/String;

.field private static applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

.field private static coverManager:Lcom/amazon/kindle/krx/cover/ICoverManager;

.field private static downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

.field private static libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

.field private static libraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

.field private static pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

.field private static readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

.field private static readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

.field private static themeManager:Lcom/amazon/kindle/krx/theme/IThemeManager;

.field private static updateManager:Lcom/amazon/versioning/manager/UpdateManager;

.field private static updatePluginMetricsManger:Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/versioning/ContentUpdatePlugin;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/ContentUpdatePlugin;->CLASS_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;
    .locals 1

    .line 100
    sget-object v0, Lcom/amazon/versioning/ContentUpdatePlugin;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    return-object v0
.end method

.method public static getCoverManger()Lcom/amazon/kindle/krx/cover/ICoverManager;
    .locals 1

    .line 80
    sget-object v0, Lcom/amazon/versioning/ContentUpdatePlugin;->coverManager:Lcom/amazon/kindle/krx/cover/ICoverManager;

    return-object v0
.end method

.method public static getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;
    .locals 1

    .line 76
    sget-object v0, Lcom/amazon/versioning/ContentUpdatePlugin;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    return-object v0
.end method

.method public static getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;
    .locals 1

    .line 84
    sget-object v0, Lcom/amazon/versioning/ContentUpdatePlugin;->libraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    return-object v0
.end method

.method public static getPubSubEventsManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;
    .locals 1

    .line 111
    sget-object v0, Lcom/amazon/versioning/ContentUpdatePlugin;->pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    return-object v0
.end method

.method public static getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;
    .locals 1

    .line 88
    sget-object v0, Lcom/amazon/versioning/ContentUpdatePlugin;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    return-object v0
.end method

.method public static getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;
    .locals 1

    .line 109
    sget-object v0, Lcom/amazon/versioning/ContentUpdatePlugin;->themeManager:Lcom/amazon/kindle/krx/theme/IThemeManager;

    return-object v0
.end method

.method public static getUpdateManager()Lcom/amazon/versioning/manager/UpdateManager;
    .locals 1

    .line 107
    sget-object v0, Lcom/amazon/versioning/ContentUpdatePlugin;->updateManager:Lcom/amazon/versioning/manager/UpdateManager;

    return-object v0
.end method

.method public static getUpdatePluginMetricsManager()Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;
    .locals 1

    .line 104
    sget-object v0, Lcom/amazon/versioning/ContentUpdatePlugin;->updatePluginMetricsManger:Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;

    return-object v0
.end method

.method private static setupActivityKrxDependencies(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 3

    .line 114
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/ContentUpdatePlugin;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    .line 115
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getCoverManager()Lcom/amazon/kindle/krx/cover/ICoverManager;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/ContentUpdatePlugin;->coverManager:Lcom/amazon/kindle/krx/cover/ICoverManager;

    .line 116
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/ContentUpdatePlugin;->libraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    .line 117
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/ContentUpdatePlugin;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    .line 118
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/ContentUpdatePlugin;->downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    .line 119
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/ContentUpdatePlugin;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    .line 120
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/ContentUpdatePlugin;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    .line 121
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/ContentUpdatePlugin;->themeManager:Lcom/amazon/kindle/krx/theme/IThemeManager;

    .line 122
    new-instance v0, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v1

    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;-><init>(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;)V

    sput-object v0, Lcom/amazon/versioning/ContentUpdatePlugin;->updatePluginMetricsManger:Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;

    .line 123
    new-instance v0, Lcom/amazon/versioning/manager/UpdateManager;

    invoke-direct {v0}, Lcom/amazon/versioning/manager/UpdateManager;-><init>()V

    sput-object v0, Lcom/amazon/versioning/ContentUpdatePlugin;->updateManager:Lcom/amazon/versioning/manager/UpdateManager;

    .line 124
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p0

    sput-object p0, Lcom/amazon/versioning/ContentUpdatePlugin;->pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 5

    .line 45
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/versioning/ContentUpdatePlugin;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "initializing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KCUPA"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {p1}, Lcom/amazon/versioning/ContentUpdatePlugin;->setupActivityKrxDependencies(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 49
    new-instance v0, Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;

    .line 50
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getSettingsControlManager()Lcom/amazon/kindle/krx/settings/ISettingsControlManager;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    .line 51
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;-><init>(Lcom/amazon/kindle/krx/settings/ISettingsControlManager;Lcom/amazon/kindle/krx/application/IApplicationManager;Landroid/content/Context;)V

    .line 52
    new-instance v1, Lcom/amazon/versioning/reader/ui/controller/BookUpdateLeftNavController;

    .line 53
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v3

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/versioning/reader/ui/controller/BookUpdateLeftNavController;-><init>(Lcom/amazon/kindle/krx/ui/ILibraryUIManager;Lcom/amazon/kindle/krx/application/IApplicationManager;Landroid/content/Context;)V

    .line 54
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/versioning/UpdateDebugMenu;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazon/versioning/UpdateDebugMenu;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 56
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/versioning/util/DebugUtils;->isPluginEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;->initialize()V

    .line 60
    :cond_0
    const-class v0, Lcom/amazon/kindle/setting/item/ItemsProvider;

    invoke-static {v0}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/amazon/discovery/Discoveries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/setting/item/ItemsProvider;

    .line 62
    instance-of v2, v1, Lcom/amazon/versioning/reader/ui/controller/NewBookUpdatesSettingItemProvider;

    if-eqz v2, :cond_1

    .line 63
    check-cast v1, Lcom/amazon/versioning/reader/ui/controller/NewBookUpdatesSettingItemProvider;

    invoke-virtual {v1, p1}, Lcom/amazon/versioning/reader/ui/controller/NewBookUpdatesSettingItemProvider;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    goto :goto_0

    :cond_2
    return-void
.end method
