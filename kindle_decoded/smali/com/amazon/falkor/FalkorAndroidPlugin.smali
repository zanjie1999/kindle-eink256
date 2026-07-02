.class public final Lcom/amazon/falkor/FalkorAndroidPlugin;
.super Ljava/lang/Object;
.source "FalkorAndroidPlugin.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    name = "FalkorAndroidPlugin"
    target = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Target;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Target;
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-class v0, Lcom/amazon/falkor/FalkorAndroidPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/falkor/FalkorAndroidPlugin;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDependecies()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getDependecies()Ljava/util/Collection;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorAndroidPlugin;->getDependecies()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 20

    move-object/from16 v9, p1

    const-string/jumbo v0, "sdk"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v0, v9}, Lcom/amazon/falkor/KindleReaderSDKReference;->setSdk(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 47
    new-instance v10, Lcom/amazon/falkor/FalkorPluginPrefsImpl;

    invoke-direct {v10, v9}, Lcom/amazon/falkor/FalkorPluginPrefsImpl;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 48
    sget-object v0, Lcom/amazon/falkor/utils/FalkorUrlUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorUrlUtils;

    invoke-virtual {v0, v10}, Lcom/amazon/falkor/utils/FalkorUrlUtils;->setFalkorPrefs(Lcom/amazon/falkor/FalkorPluginPrefs;)V

    .line 51
    new-instance v11, Lcom/amazon/falkor/FalkorPlayBillingUtils;

    const-class v0, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-direct {v11, v0, v9}, Lcom/amazon/falkor/FalkorPlayBillingUtils;-><init>(Lcom/amazon/kindle/krx/payment/PlayBillingUtils;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 53
    new-instance v12, Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    invoke-direct {v12, v9}, Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 54
    new-instance v13, Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;

    invoke-direct {v13, v9, v12}, Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;)V

    .line 55
    new-instance v14, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-direct/range {v0 .. v5}, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/falkor/utils/BookGroupUtils;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 56
    new-instance v15, Lcom/amazon/falkor/download/TokenBalanceDownloadManager;

    invoke-direct {v15, v9, v11}, Lcom/amazon/falkor/download/TokenBalanceDownloadManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/payment/PlayBillingUtils;)V

    .line 57
    new-instance v8, Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;

    invoke-direct {v8, v9, v11, v10}, Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/payment/PlayBillingUtils;Lcom/amazon/falkor/FalkorPluginPrefs;)V

    .line 58
    new-instance v7, Lcom/amazon/falkor/download/FollowedStoriesDownloadManager;

    invoke-direct {v7, v9}, Lcom/amazon/falkor/download/FollowedStoriesDownloadManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 61
    new-instance v0, Lcom/amazon/falkor/panels/FalkorActionBarDecorationProvider;

    invoke-direct {v0, v9, v12}, Lcom/amazon/falkor/panels/FalkorActionBarDecorationProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;)V

    .line 62
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerActionBarDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    .line 64
    new-instance v6, Lcom/amazon/falkor/FalkorReaderNavigationListener;

    move-object/from16 v5, p0

    .line 66
    iget-object v4, v5, Lcom/amazon/falkor/FalkorAndroidPlugin;->TAG:Ljava/lang/String;

    const-string v0, "TAG"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v3, v13

    move-object/from16 v16, v4

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v17, v10

    move-object v10, v6

    move-object v6, v8

    move-object/from16 v18, v7

    move-object v7, v11

    move-object/from16 v19, v8

    move-object/from16 v8, v16

    .line 64
    invoke-direct/range {v0 .. v8}, Lcom/amazon/falkor/FalkorReaderNavigationListener;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;Lcom/amazon/falkor/download/EpisodeListDownloadHelper;Lcom/amazon/falkor/download/TokenBalanceDownloadManager;Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;Lcom/amazon/kindle/krx/payment/PlayBillingUtils;Ljava/lang/String;)V

    .line 69
    new-instance v7, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;

    move-object v0, v7

    move-object v1, v12

    move-object v2, v15

    move-object/from16 v3, v19

    move-object v4, v11

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;-><init>(Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/falkor/download/TokenBalanceDownloadManager;Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;Lcom/amazon/kindle/krx/payment/PlayBillingUtils;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 71
    new-instance v8, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;

    invoke-direct {v8, v12, v9}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;-><init>(Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 72
    new-instance v11, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v11

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v3, v13

    invoke-direct/range {v0 .. v6}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;Lcom/amazon/falkor/utils/BookGroupUtils;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 73
    new-instance v0, Lcom/amazon/falkor/sync/FalkorSyncUtils;

    invoke-direct {v0, v9, v12}, Lcom/amazon/falkor/sync/FalkorSyncUtils;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;)V

    .line 75
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1, v11}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 76
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1, v7}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 77
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1, v8}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 78
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/falkor/FalkorActivityLifecycleListener;

    invoke-direct {v2, v11, v7, v8}, Lcom/amazon/falkor/FalkorActivityLifecycleListener;-><init>(Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerActivityLifecycleListener(Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;)V

    .line 79
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1, v10}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 80
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 83
    new-instance v1, Lcom/amazon/falkor/panels/FalkorEpisodeListPanelProvider;

    invoke-direct {v1, v9, v14, v12}, Lcom/amazon/falkor/panels/FalkorEpisodeListPanelProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/EpisodeListDownloadHelper;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;)V

    .line 84
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerCustomPanelProvider(Lcom/amazon/kindle/krx/ui/panels/ICustomPanelContentProvider;)V

    .line 87
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v2

    new-instance v3, Lcom/amazon/falkor/widgets/AboutThisStoryWidgetItemProvider;

    invoke-direct {v3, v9, v12}, Lcom/amazon/falkor/widgets/AboutThisStoryWidgetItemProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;)V

    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerActionBarWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 93
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v2

    invoke-interface {v2, v14}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 94
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v2

    invoke-interface {v2, v11}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 95
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 96
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v2

    invoke-interface {v2, v12}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 97
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v2

    invoke-interface {v2, v13}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 98
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v2

    invoke-interface {v2, v8}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 99
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 100
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 101
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, v15}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 102
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 103
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    move-object/from16 v2, v17

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 106
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    new-instance v3, Lcom/amazon/falkor/FalkorAndroidPlugin$initialize$1;

    invoke-direct {v3, v2}, Lcom/amazon/falkor/FalkorAndroidPlugin$initialize$1;-><init>(Lcom/amazon/falkor/FalkorPluginPrefsImpl;)V

    invoke-interface {v0, v3}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 108
    sget-object v0, Lcom/amazon/falkor/bottomsheet/BottomSheetCollisionControl;->INSTANCE:Lcom/amazon/falkor/bottomsheet/BottomSheetCollisionControl;

    invoke-virtual {v0, v8}, Lcom/amazon/falkor/bottomsheet/BottomSheetCollisionControl;->initialize(Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;)V

    .line 110
    sget-object v0, Lcom/amazon/falkor/FalkorFullSync;->INSTANCE:Lcom/amazon/falkor/FalkorFullSync;

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v3, v2, v9}, Lcom/amazon/falkor/FalkorFullSync;->initialize(Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;Lcom/amazon/falkor/download/FollowedStoriesDownloadManager;Lcom/amazon/falkor/FalkorPluginPrefs;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 111
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/falkor/FalkorFullSync;->INSTANCE:Lcom/amazon/falkor/FalkorFullSync;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method
