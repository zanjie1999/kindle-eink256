.class public Lcom/amazon/phl/PopularHighlightsPlugin;
.super Ljava/lang/Object;
.source "PopularHighlightsPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    name = "popular highlights plugin"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.phl.PopularHighlightsPlugin"


# instance fields
.field private phlGestureHandler:Lcom/amazon/phl/handler/PhlGestureHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 5

    .line 42
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/phl/logging/Log;->setLogger(Lcom/amazon/kindle/krx/logging/ILogger;)V

    .line 43
    invoke-static {}, Lcom/amazon/phl/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/amazon/phl/PopularHighlightsPlugin;->TAG:Ljava/lang/String;

    const-string v1, "initializing Popular Highlights plugin"

    invoke-static {v0, v1}, Lcom/amazon/phl/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    new-instance v0, Lcom/amazon/phl/PopularHighlightsManager;

    new-instance v1, Lcom/amazon/phl/parser/SidecarReader;

    invoke-direct {v1, p1}, Lcom/amazon/phl/parser/SidecarReader;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-direct {v0, p1, v1}, Lcom/amazon/phl/PopularHighlightsManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/phl/parser/SidecarReader;)V

    .line 50
    new-instance v1, Lcom/amazon/phl/provider/ContentDecorationProvider;

    invoke-direct {v1, p1, v0}, Lcom/amazon/phl/provider/ContentDecorationProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/phl/PopularHighlightsManager;)V

    .line 51
    invoke-virtual {v0, v1}, Lcom/amazon/phl/PopularHighlightsManager;->setContentDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    .line 53
    new-instance v2, Lcom/amazon/phl/handler/PhlGestureHandler;

    invoke-direct {v2, p1, v0}, Lcom/amazon/phl/handler/PhlGestureHandler;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/phl/PopularHighlightsManager;)V

    iput-object v2, p0, Lcom/amazon/phl/PopularHighlightsPlugin;->phlGestureHandler:Lcom/amazon/phl/handler/PhlGestureHandler;

    .line 55
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/phl/PopularHighlightsPlugin;->phlGestureHandler:Lcom/amazon/phl/handler/PhlGestureHandler;

    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 58
    new-instance v2, Lcom/amazon/phl/settings/PHLOnOffToggle;

    invoke-direct {v2, v0}, Lcom/amazon/phl/settings/PHLOnOffToggle;-><init>(Lcom/amazon/kindle/krx/settings/ISettingsChangeListener;)V

    .line 59
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getSettingsControlManager()Lcom/amazon/kindle/krx/settings/ISettingsControlManager;

    move-result-object v3

    const-string/jumbo v4, "phl-PopularHighlights"

    .line 60
    invoke-interface {v3, v4, v2}, Lcom/amazon/kindle/krx/settings/ISettingsControlManager;->registerSettingsControl(Ljava/lang/String;Lcom/amazon/kindle/krx/settings/ISettingsControl;)V

    .line 62
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMessagingManager()Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    move-result-object v3

    new-instance v4, Lcom/amazon/phl/SidecarDownloader;

    invoke-direct {v4, p1, v0}, Lcom/amazon/phl/SidecarDownloader;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/phl/PopularHighlightsManager;)V

    invoke-interface {v3, v4}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->register(Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;)V

    .line 64
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 66
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerContentDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    .line 68
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getAnnotationItemManager()Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemManager;

    move-result-object v1

    new-instance v3, Lcom/amazon/phl/annotation/PhlAnnotationItemProvider;

    invoke-direct {v3, p1, v0}, Lcom/amazon/phl/annotation/PhlAnnotationItemProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/phl/PopularHighlightsManager;)V

    .line 69
    invoke-interface {v1, v3}, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemManager;->registerAnnotationItemProvider(Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemProvider;)V

    .line 71
    const-class v1, Lcom/amazon/kindle/setting/item/ItemsProvider;

    invoke-static {v1}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lcom/amazon/discovery/Discoveries;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/setting/item/ItemsProvider;

    .line 73
    instance-of v4, v3, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;

    if-eqz v4, :cond_1

    .line 74
    check-cast v3, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;

    invoke-virtual {v3, p1, v0, v2}, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/phl/PopularHighlightsManager;Lcom/amazon/phl/settings/PHLOnOffToggle;)V

    goto :goto_0

    .line 78
    :cond_2
    new-instance v1, Lcom/amazon/phl/metrics/InBookFastMetricsReporter;

    invoke-direct {v1}, Lcom/amazon/phl/metrics/InBookFastMetricsReporter;-><init>()V

    .line 83
    sget-object v3, Lcom/amazon/phl/PopularHighlightsAaSettingsProvider;->ProviderDelegate:Lcom/amazon/phl/PopularHighlightsAaSettingsProvider$ProviderDelegate;

    invoke-virtual {v3, p1, v0, v2, v1}, Lcom/amazon/phl/PopularHighlightsAaSettingsProvider$ProviderDelegate;->initializeDelegate(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/phl/PopularHighlightsManager;Lcom/amazon/phl/settings/PHLOnOffToggle;Lcom/amazon/phl/metrics/InBookMetricsReporter;)V

    return-void
.end method
