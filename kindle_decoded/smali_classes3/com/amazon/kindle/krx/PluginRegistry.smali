.class public Lcom/amazon/kindle/krx/PluginRegistry;
.super Ljava/lang/Object;
.source "PluginRegistry.java"

# interfaces
.implements Lcom/amazon/kindle/krx/IPluginRegistry;


# instance fields
.field private applicationPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;",
            "Lcom/amazon/kindle/krx/plugin/IReaderPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private bookopen_afterPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;",
            "Lcom/amazon/kindle/krx/plugin/IReaderPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private bookopen_beforePlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;",
            "Lcom/amazon/kindle/krx/plugin/IReaderPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private content_changePlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;",
            "Lcom/amazon/kindle/krx/plugin/IReaderPlugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/amazon/kindle/krx/PluginRegistry;->content_changePlugins:Ljava/util/Map;

    .line 25
    iput-object v0, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    .line 27
    iput-object v0, p0, Lcom/amazon/kindle/krx/PluginRegistry;->bookopen_beforePlugins:Ljava/util/Map;

    .line 29
    iput-object v0, p0, Lcom/amazon/kindle/krx/PluginRegistry;->bookopen_afterPlugins:Ljava/util/Map;

    return-void
.end method

.method private initapplicationPlugins()V
    .locals 7

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    .line 49
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/16 v2, 0x8

    const v3, 0x7fffffff

    const-string v4, "com.audible.hushpuppy.plugin.DebugPlugin"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 50
    new-instance v1, Lcom/audible/hushpuppy/plugin/DebugPlugin;

    invoke-direct {v1}, Lcom/audible/hushpuppy/plugin/DebugPlugin;-><init>()V

    .line 51
    iget-object v4, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v4, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/16 v4, 0xe

    const-string v5, "X-Ray"

    invoke-direct {v0, v5, v4, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 54
    new-instance v1, Lcom/amazon/xray/plugin/XrayPlugin;

    invoke-direct {v1}, Lcom/amazon/xray/plugin/XrayPlugin;-><init>()V

    .line 55
    iget-object v5, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v5, "com.audible.hushpuppy.RelationshipPlugin"

    invoke-direct {v0, v5, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 58
    new-instance v1, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;

    invoke-direct {v1}, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;-><init>()V

    .line 59
    iget-object v5, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v5, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v5, "CommandBarButtonsKRXPlugin"

    invoke-direct {v0, v5, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 62
    new-instance v1, Lcom/amazon/kcp/reader/ui/buttons/CommandBarButtonsKRXPlugin;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/ui/buttons/CommandBarButtonsKRXPlugin;-><init>()V

    .line 63
    iget-object v5, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v5, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v5, "KindleRecapsAndroidPlugin"

    invoke-direct {v0, v5, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 66
    new-instance v1, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;

    invoke-direct {v1}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;-><init>()V

    .line 67
    iget-object v5, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v5, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v5, "Popular Highlights Panel Button"

    invoke-direct {v0, v5, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 70
    new-instance v1, Lcom/amazon/kindle/panels/PopularHighlightsPanelItem;

    invoke-direct {v1}, Lcom/amazon/kindle/panels/PopularHighlightsPanelItem;-><init>()V

    .line 71
    iget-object v5, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/16 v5, 0x10

    const-string v6, "Book Wizard"

    invoke-direct {v0, v6, v5, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 74
    new-instance v1, Lcom/amazon/bookwizard/BookWizardPlugin;

    invoke-direct {v1}, Lcom/amazon/bookwizard/BookWizardPlugin;-><init>()V

    .line 75
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "com.audible.hushpuppy.LibraryPlugin"

    invoke-direct {v0, v6, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 78
    new-instance v1, Lcom/audible/hushpuppy/plugin/LibraryPlugin;

    invoke-direct {v1}, Lcom/audible/hushpuppy/plugin/LibraryPlugin;-><init>()V

    .line 79
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "com.audible.hushpuppy.ContentDownloadPlugin"

    invoke-direct {v0, v6, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 82
    new-instance v1, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;

    invoke-direct {v1}, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;-><init>()V

    .line 83
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v6, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "ClickstreamMetrics"

    invoke-direct {v0, v6, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 86
    new-instance v1, Lcom/amazon/metrics/ClickstreamMetricsPlugin;

    invoke-direct {v1}, Lcom/amazon/metrics/ClickstreamMetricsPlugin;-><init>()V

    .line 87
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v6, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "Word Wise plugin"

    invoke-direct {v0, v6, v4, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 90
    new-instance v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;

    invoke-direct {v1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;-><init>()V

    .line 91
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "com.audible.hushpuppy.MetricLoggingPlugin"

    invoke-direct {v0, v6, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 94
    new-instance v1, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;

    invoke-direct {v1}, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;-><init>()V

    .line 95
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v6, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "FastMetrics Plugin"

    invoke-direct {v0, v6, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 98
    new-instance v1, Lcom/amazon/kindle/fastmetrics/service/provider/FastMetricsPlugin;

    invoke-direct {v1}, Lcom/amazon/kindle/fastmetrics/service/provider/FastMetricsPlugin;-><init>()V

    .line 99
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v6, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "Profiles Plugin"

    invoke-direct {v0, v6, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 102
    new-instance v1, Lcom/amazon/kcp/profiles/plugin/ProfilesPlugin;

    invoke-direct {v1}, Lcom/amazon/kcp/profiles/plugin/ProfilesPlugin;-><init>()V

    .line 103
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "endactions plugin"

    invoke-direct {v0, v6, v4, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 106
    new-instance v1, Lcom/amazon/ea/EndActionsPlugin;

    invoke-direct {v1}, Lcom/amazon/ea/EndActionsPlugin;-><init>()V

    .line 107
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "com.amazon.reader.EbookDownloadPlugin"

    invoke-direct {v0, v6, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 110
    new-instance v1, Lcom/amazon/reader/ebookdownloadplugin/EbookDownloadPlugin;

    invoke-direct {v1}, Lcom/amazon/reader/ebookdownloadplugin/EbookDownloadPlugin;-><init>()V

    .line 111
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v6, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "BirdsEyeViewPlugin"

    invoke-direct {v0, v6, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 114
    new-instance v1, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin;

    invoke-direct {v1}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin;-><init>()V

    .line 115
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v6, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "Notebook Plugin"

    invoke-direct {v0, v6, v4, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 118
    new-instance v1, Lcom/amazon/notebook/module/NotebookPlugin;

    invoke-direct {v1}, Lcom/amazon/notebook/module/NotebookPlugin;-><init>()V

    .line 119
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "com.audible.hushpuppy.UpsellPlugin"

    invoke-direct {v0, v6, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 122
    new-instance v1, Lcom/audible/hushpuppy/plugin/UpsellPlugin;

    invoke-direct {v1}, Lcom/audible/hushpuppy/plugin/UpsellPlugin;-><init>()V

    .line 123
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v6, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "ReadingRulerPlugin"

    invoke-direct {v0, v6, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 126
    new-instance v1, Lcom/amazon/kcp/readingruler/ReadingRulerPlugin;

    invoke-direct {v1}, Lcom/amazon/kcp/readingruler/ReadingRulerPlugin;-><init>()V

    .line 127
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "FFSPlugin"

    invoke-direct {v0, v6, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 130
    new-instance v1, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-direct {v1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;-><init>()V

    .line 131
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v6, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "Flashcards"

    invoke-direct {v0, v6, v4, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 134
    new-instance v1, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;

    invoke-direct {v1}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;-><init>()V

    .line 135
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v6, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "KindleLearningObject"

    invoke-direct {v0, v6, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 138
    new-instance v1, Lcom/amazon/klo/KindleLearningObjectPlugin;

    invoke-direct {v1}, Lcom/amazon/klo/KindleLearningObjectPlugin;-><init>()V

    .line 139
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "SocialSharingPlugin"

    invoke-direct {v0, v6, v4, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 142
    new-instance v1, Lcom/amazon/kindle/socialsharing/ThirdPartySocialSharingPlugin;

    invoke-direct {v1}, Lcom/amazon/kindle/socialsharing/ThirdPartySocialSharingPlugin;-><init>()V

    .line 143
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "SamplingUpsellApplicationPlugin"

    invoke-direct {v0, v6, v4, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 146
    new-instance v1, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    invoke-direct {v1}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;-><init>()V

    .line 147
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v6, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "Library Plugin"

    invoke-direct {v0, v6, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 150
    new-instance v1, Lcom/amazon/kcp/library/ThirdPartyLibraryPlugin;

    invoke-direct {v1}, Lcom/amazon/kcp/library/ThirdPartyLibraryPlugin;-><init>()V

    .line 151
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v6, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "KeduFTUEPlugin"

    invoke-direct {v0, v6, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 154
    new-instance v1, Lcom/amazon/kedu/ftue/Plugin;

    invoke-direct {v1}, Lcom/amazon/kedu/ftue/Plugin;-><init>()V

    .line 155
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v6, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "NotebookPlugin"

    invoke-direct {v0, v6, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 158
    new-instance v1, Lcom/amazon/kcp/reader/notebook/NotebookPlugin;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/notebook/NotebookPlugin;-><init>()V

    .line 159
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v6, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "FalkorAndroidPlugin"

    invoke-direct {v0, v6, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 162
    new-instance v1, Lcom/amazon/falkor/FalkorAndroidPlugin;

    invoke-direct {v1}, Lcom/amazon/falkor/FalkorAndroidPlugin;-><init>()V

    .line 163
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v6, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "RecentSearchDatabasePlugin"

    invoke-direct {v0, v6, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 166
    new-instance v1, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabasePlugin;

    invoke-direct {v1}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabasePlugin;-><init>()V

    .line 167
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "com.audible.hushpuppy.ApplicationPlugin"

    invoke-direct {v0, v6, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 170
    new-instance v1, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;

    invoke-direct {v1}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;-><init>()V

    .line 171
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "Kindle Unlimited Conversion"

    invoke-direct {v0, v6, v5, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 174
    new-instance v1, Lcom/amazon/ku/KuConversionPlugin;

    invoke-direct {v1}, Lcom/amazon/ku/KuConversionPlugin;-><init>()V

    .line 175
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v6, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "DcapsPlugin"

    invoke-direct {v0, v6, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 178
    new-instance v1, Lcom/amazon/dcapsmodule/DcapsPlugin;

    invoke-direct {v1}, Lcom/amazon/dcapsmodule/DcapsPlugin;-><init>()V

    .line 179
    iget-object v6, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v6, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "ContentUpdatePlugin"

    invoke-direct {v0, v6, v5, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 182
    new-instance v1, Lcom/amazon/versioning/ContentUpdatePlugin;

    invoke-direct {v1}, Lcom/amazon/versioning/ContentUpdatePlugin;-><init>()V

    .line 183
    iget-object v5, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v5, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v5, "HistoryPlugin"

    invoke-direct {v0, v5, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 186
    new-instance v1, Lcom/amazon/kcp/history/HistoryPlugin;

    invoke-direct {v1}, Lcom/amazon/kcp/history/HistoryPlugin;-><init>()V

    .line 187
    iget-object v5, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v5, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v5, "InAppNotificationsPlugin"

    const/16 v6, 0x15

    invoke-direct {v0, v5, v6, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 190
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;

    invoke-direct {v1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;-><init>()V

    .line 191
    iget-object v5, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v5, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v5, "MoreMenuPlugin"

    invoke-direct {v0, v5, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 194
    new-instance v1, Lcom/amazon/kcp/more/topnavbar/MoreMenuPlugin;

    invoke-direct {v1}, Lcom/amazon/kcp/more/topnavbar/MoreMenuPlugin;-><init>()V

    .line 195
    iget-object v5, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v5, "Report Content Error Plugin"

    const/16 v6, 0x13

    invoke-direct {v0, v5, v6, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 198
    new-instance v1, Lcom/amazon/kindle/reportcontenterror/RcePlugin;

    invoke-direct {v1}, Lcom/amazon/kindle/reportcontenterror/RcePlugin;-><init>()V

    .line 199
    iget-object v5, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v5, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v5, "popular highlights plugin"

    invoke-direct {v0, v5, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 202
    new-instance v1, Lcom/amazon/phl/PopularHighlightsPlugin;

    invoke-direct {v1}, Lcom/amazon/phl/PopularHighlightsPlugin;-><init>()V

    .line 203
    iget-object v5, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v5, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v5, "Delete Content Plugin"

    invoke-direct {v0, v5, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 206
    new-instance v1, Lcom/amazon/kindle/deletecontent/plugin/DeleteContentPlugin;

    invoke-direct {v1}, Lcom/amazon/kindle/deletecontent/plugin/DeleteContentPlugin;-><init>()V

    .line 207
    iget-object v5, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v5, "PentosPlugin"

    invoke-direct {v0, v5, v4, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 210
    new-instance v1, Lcom/amazon/kindle/pentos/PentosPlugin;

    invoke-direct {v1}, Lcom/amazon/kindle/pentos/PentosPlugin;-><init>()V

    .line 211
    iget-object v5, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v5, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v5, "RegisterNightModeSeekerDecorationPlugin"

    invoke-direct {v0, v5, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 214
    new-instance v1, Lcom/amazon/kcp/reader/nightmode/RegisterNightModeSeekerDecorationPlugin;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/nightmode/RegisterNightModeSeekerDecorationPlugin;-><init>()V

    .line 215
    iget-object v5, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v5, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v5, "Speed Reading Plugin"

    invoke-direct {v0, v5, v4, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 218
    new-instance v1, Lcom/amazon/kindle/speedreading/SpeedReadingPlugin;

    invoke-direct {v1}, Lcom/amazon/kindle/speedreading/SpeedReadingPlugin;-><init>()V

    .line 219
    iget-object v4, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v4, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v4, "FalkorProcessesPlugin"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 222
    new-instance v1, Lcom/amazon/kcp/library/FalkorProcessesPlugin;

    invoke-direct {v1}, Lcom/amazon/kcp/library/FalkorProcessesPlugin;-><init>()V

    .line 223
    iget-object v4, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v4, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v4, "Group Content Plugin"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 226
    new-instance v1, Lcom/amazon/kcp/groupcontent/GroupContentPlugin;

    invoke-direct {v1}, Lcom/amazon/kcp/groupcontent/GroupContentPlugin;-><init>()V

    .line 227
    iget-object v2, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initbookopen_afterPlugins()V
    .locals 6

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/PluginRegistry;->bookopen_afterPlugins:Ljava/util/Map;

    .line 257
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/16 v2, 0x8

    const v3, 0x7fffffff

    const-string v4, "Wikipedia Card Plugin"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 258
    new-instance v1, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardPlugin;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardPlugin;-><init>()V

    .line 259
    iget-object v4, p0, Lcom/amazon/kindle/krx/PluginRegistry;->bookopen_afterPlugins:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v4, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v4, "KLO Card Plugin"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 262
    new-instance v1, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    invoke-direct {v1}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;-><init>()V

    .line 263
    iget-object v4, p0, Lcom/amazon/kindle/krx/PluginRegistry;->bookopen_afterPlugins:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v4, "com.audible.hushpuppy.ReadAlongPlugin"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 266
    new-instance v1, Lcom/audible/hushpuppy/plugin/ReadAlongPlugin;

    invoke-direct {v1}, Lcom/audible/hushpuppy/plugin/ReadAlongPlugin;-><init>()V

    .line 267
    iget-object v4, p0, Lcom/amazon/kindle/krx/PluginRegistry;->bookopen_afterPlugins:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v4, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v4, "Definition Card Plugin"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 270
    new-instance v1, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin;-><init>()V

    .line 271
    iget-object v4, p0, Lcom/amazon/kindle/krx/PluginRegistry;->bookopen_afterPlugins:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v4, "SamplingUpsellContentPlugin"

    const/16 v5, 0xe

    invoke-direct {v0, v4, v5, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 274
    new-instance v1, Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin;

    invoke-direct {v1}, Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin;-><init>()V

    .line 275
    iget-object v4, p0, Lcom/amazon/kindle/krx/PluginRegistry;->bookopen_afterPlugins:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v4, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v4, "DefaultItemsPanelPlugin"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 278
    new-instance v1, Lcom/amazon/kindle/panels/ReaderDefaultItemsPanelProvider;

    invoke-direct {v1}, Lcom/amazon/kindle/panels/ReaderDefaultItemsPanelProvider;-><init>()V

    .line 279
    iget-object v4, p0, Lcom/amazon/kindle/krx/PluginRegistry;->bookopen_afterPlugins:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v4, "com.audible.hushpuppy.ReaderChromePlugin"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 282
    new-instance v1, Lcom/audible/hushpuppy/plugin/ViewPlugin;

    invoke-direct {v1}, Lcom/audible/hushpuppy/plugin/ViewPlugin;-><init>()V

    .line 283
    iget-object v2, p0, Lcom/amazon/kindle/krx/PluginRegistry;->bookopen_afterPlugins:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initbookopen_beforePlugins()V
    .locals 5

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/PluginRegistry;->bookopen_beforePlugins:Ljava/util/Map;

    .line 237
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v2, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const v2, 0x7fffffff

    const-string v3, "OverlayAndroidTranslator"

    const/16 v4, 0xe

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 238
    new-instance v1, Lcom/amazon/overlay/translation/TranslationReaderPlugin;

    invoke-direct {v1}, Lcom/amazon/overlay/translation/TranslationReaderPlugin;-><init>()V

    .line 239
    iget-object v3, p0, Lcom/amazon/kindle/krx/PluginRegistry;->bookopen_beforePlugins:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v3, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v3, "Lava magazine plugin"

    const/16 v4, 0x8

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 242
    new-instance v1, Lcom/amazon/kindle/dualreadingmode/LavaMagazinePlugin;

    invoke-direct {v1}, Lcom/amazon/kindle/dualreadingmode/LavaMagazinePlugin;-><init>()V

    .line 243
    iget-object v3, p0, Lcom/amazon/kindle/krx/PluginRegistry;->bookopen_beforePlugins:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v3, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v3, "Recaps3PTTSPlugin"

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 246
    new-instance v1, Lcom/amazon/kcp/reader/accessibility/Recaps3PTTSPlugin;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/accessibility/Recaps3PTTSPlugin;-><init>()V

    .line 247
    iget-object v2, p0, Lcom/amazon/kindle/krx/PluginRegistry;->bookopen_beforePlugins:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initcontent_changePlugins()V
    .locals 5

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/PluginRegistry;->content_changePlugins:Ljava/util/Map;

    .line 37
    new-instance v0, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    sget-object v2, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "com.amazon.kindle.cover.CoverImageServiceContentPlugin"

    const/16 v3, 0x8

    const v4, 0x7fffffff

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;-><init>(Ljava/lang/String;IILjava/util/Set;)V

    .line 38
    new-instance v1, Lcom/amazon/kindle/cover/CoverImageServiceContentPlugin;

    invoke-direct {v1}, Lcom/amazon/kindle/cover/CoverImageServiceContentPlugin;-><init>()V

    .line 39
    iget-object v2, p0, Lcom/amazon/kindle/krx/PluginRegistry;->content_changePlugins:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getPlugin(Lcom/amazon/kindle/krx/plugin/Plugin$Entry;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/plugin/Plugin$Entry;",
            ")",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;",
            "Lcom/amazon/kindle/krx/plugin/IReaderPlugin;",
            ">;"
        }
    .end annotation

    .line 290
    sget-object v0, Lcom/amazon/kindle/krx/PluginRegistry$1;->$SwitchMap$com$amazon$kindle$krx$plugin$Plugin$Entry:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 324
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 315
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/krx/PluginRegistry;->bookopen_afterPlugins:Ljava/util/Map;

    if-nez p1, :cond_1

    .line 317
    invoke-direct {p0}, Lcom/amazon/kindle/krx/PluginRegistry;->initbookopen_afterPlugins()V

    .line 319
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/krx/PluginRegistry;->bookopen_afterPlugins:Ljava/util/Map;

    return-object p1

    .line 308
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/krx/PluginRegistry;->bookopen_beforePlugins:Ljava/util/Map;

    if-nez p1, :cond_3

    .line 310
    invoke-direct {p0}, Lcom/amazon/kindle/krx/PluginRegistry;->initbookopen_beforePlugins()V

    .line 312
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/krx/PluginRegistry;->bookopen_beforePlugins:Ljava/util/Map;

    return-object p1

    .line 301
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    if-nez p1, :cond_5

    .line 303
    invoke-direct {p0}, Lcom/amazon/kindle/krx/PluginRegistry;->initapplicationPlugins()V

    .line 305
    :cond_5
    iget-object p1, p0, Lcom/amazon/kindle/krx/PluginRegistry;->applicationPlugins:Ljava/util/Map;

    return-object p1

    .line 294
    :cond_6
    iget-object p1, p0, Lcom/amazon/kindle/krx/PluginRegistry;->content_changePlugins:Ljava/util/Map;

    if-nez p1, :cond_7

    .line 296
    invoke-direct {p0}, Lcom/amazon/kindle/krx/PluginRegistry;->initcontent_changePlugins()V

    .line 298
    :cond_7
    iget-object p1, p0, Lcom/amazon/kindle/krx/PluginRegistry;->content_changePlugins:Ljava/util/Map;

    return-object p1
.end method
