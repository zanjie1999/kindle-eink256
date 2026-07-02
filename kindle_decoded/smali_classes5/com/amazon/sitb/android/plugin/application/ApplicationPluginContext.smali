.class public Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;
.super Ljava/lang/Object;
.source "ApplicationPluginContext.java"


# instance fields
.field private final activityService:Lcom/amazon/sitb/android/services/ActivityService;

.field private final applicationBookNavigationHandler:Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;

.field private final applicationLibraryContentUpdatedHandler:Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryContentUpdatedHandler;

.field private final applicationLibraryEventListener:Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;

.field private final applicationReaderActivityLifecycleListener:Lcom/amazon/sitb/android/plugin/application/ApplicationReaderActivityLifecycleListener;

.field private final applicationReaderNavigationListener:Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;

.field private final bookIdParser:Lcom/amazon/sitb/android/services/BookIdParser;

.field private final broadcastReceivers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/sitb/android/broadcasts/BroadcastReceiverInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final classInstantiationService:Lcom/amazon/sitb/android/services/ClassInstantiationService;

.field private final clockService:Lcom/amazon/sitb/android/services/ClockService;

.field private final deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

.field private final deviceInformationFactory:Lcom/amazon/sitb/android/services/DeviceInformationFactory;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

.field private final pfmCorChangedHandler:Lcom/amazon/sitb/android/plugin/application/PfmCorChangedHandler;

.field private final pluginMetadataService:Lcom/amazon/sitb/android/services/PluginMetadataService;

.field private final priceCache:Lcom/amazon/sitb/android/cache/price/PriceCache;

.field private final pricePropertyProvider:Lcom/amazon/sitb/android/plugin/application/PricePropertyProvider;

.field private final priceScheduler:Lcom/amazon/sitb/android/updater/price/PriceScheduler;

.field private final priceUpdater:Lcom/amazon/sitb/android/updater/Updater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/sitb/android/updater/Updater<",
            "Lcom/amazon/sitb/android/BookPrice;",
            ">;"
        }
    .end annotation
.end field

.field private final pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

.field private final readerActions:Lcom/amazon/sitb/android/ReaderActions;

.field private final recentCancelCache:Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;

.field private final seriesCache:Lcom/amazon/sitb/android/cache/series/SeriesCache;

.field private final seriesInfoUpdatedHandler:Lcom/amazon/sitb/android/plugin/application/SeriesInfoUpdatedHandler;

.field private final seriesScheduler:Lcom/amazon/sitb/android/updater/series/SeriesScheduler;

.field private final seriesUpdater:Lcom/amazon/sitb/android/updater/Updater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/sitb/android/updater/Updater<",
            "Lcom/amazon/sitb/android/SeriesInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedPreferencesStorage:Lcom/amazon/sitb/android/IPersistentStorage;

.field private final storeActions:Lcom/amazon/sitb/android/IStoreActions;

.field private final taskRunner:Lcom/amazon/sitb/android/ITaskRunner;

.field private final tokenCache:Lcom/amazon/sitb/android/cache/token/TokenCache;

.field private final userRoleService:Lcom/amazon/sitb/android/services/UserRoleService;

.field private final weblabClient:Lcom/amazon/sitb/android/utils/WeblabClient;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/sitb/android/metrics/MetricsService;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v14, p2

    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object v9, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 113
    iput-object v14, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    .line 114
    new-instance v1, Lcom/amazon/sitb/android/services/ClockService;

    invoke-direct {v1}, Lcom/amazon/sitb/android/services/ClockService;-><init>()V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    .line 115
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    .line 116
    const-class v2, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 118
    new-instance v1, Lcom/amazon/sitb/android/services/BookIdParser;

    invoke-direct {v1}, Lcom/amazon/sitb/android/services/BookIdParser;-><init>()V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->bookIdParser:Lcom/amazon/sitb/android/services/BookIdParser;

    .line 119
    new-instance v1, Lcom/amazon/sitb/android/services/UserRoleService;

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/sitb/android/services/UserRoleService;-><init>(Lcom/amazon/kindle/krx/application/IApplicationManager;)V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->userRoleService:Lcom/amazon/sitb/android/services/UserRoleService;

    .line 120
    new-instance v1, Lcom/amazon/sitb/android/services/PluginMetadataService;

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/sitb/android/services/PluginMetadataService;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->pluginMetadataService:Lcom/amazon/sitb/android/services/PluginMetadataService;

    .line 122
    new-instance v1, Lcom/amazon/sitb/android/impl/SharedPreferencesStorage;

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/sitb/android/impl/SharedPreferencesStorage;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->sharedPreferencesStorage:Lcom/amazon/sitb/android/IPersistentStorage;

    .line 123
    new-instance v1, Lcom/amazon/sitb/android/cache/price/PriceCache;

    iget-object v5, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->sharedPreferencesStorage:Lcom/amazon/sitb/android/IPersistentStorage;

    new-instance v6, Lcom/amazon/sitb/android/cache/price/BookPriceParser;

    invoke-direct {v6}, Lcom/amazon/sitb/android/cache/price/BookPriceParser;-><init>()V

    new-instance v7, Lcom/amazon/sitb/android/cache/price/BookPriceFormatter;

    invoke-direct {v7}, Lcom/amazon/sitb/android/cache/price/BookPriceFormatter;-><init>()V

    iget-object v8, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    const-string/jumbo v4, "price-"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/sitb/android/cache/price/PriceCache;-><init>(Ljava/lang/String;Lcom/amazon/sitb/android/IPersistentStorage;Lcom/amazon/sitb/android/cache/CacheObjectParser;Lcom/amazon/sitb/android/cache/CacheObjectFormatter;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->priceCache:Lcom/amazon/sitb/android/cache/price/PriceCache;

    .line 124
    new-instance v1, Lcom/amazon/sitb/android/cache/series/SeriesCache;

    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->sharedPreferencesStorage:Lcom/amazon/sitb/android/IPersistentStorage;

    new-instance v18, Lcom/amazon/sitb/android/cache/series/SeriesInfoParser;

    invoke-direct/range {v18 .. v18}, Lcom/amazon/sitb/android/cache/series/SeriesInfoParser;-><init>()V

    new-instance v19, Lcom/amazon/sitb/android/cache/series/SeriesInfoFormatter;

    invoke-direct/range {v19 .. v19}, Lcom/amazon/sitb/android/cache/series/SeriesInfoFormatter;-><init>()V

    iget-object v3, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    const-string/jumbo v16, "series-"

    move-object v15, v1

    move-object/from16 v17, v2

    move-object/from16 v20, v3

    invoke-direct/range {v15 .. v20}, Lcom/amazon/sitb/android/cache/series/SeriesCache;-><init>(Ljava/lang/String;Lcom/amazon/sitb/android/IPersistentStorage;Lcom/amazon/sitb/android/cache/CacheObjectParser;Lcom/amazon/sitb/android/cache/CacheObjectFormatter;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->seriesCache:Lcom/amazon/sitb/android/cache/series/SeriesCache;

    .line 125
    new-instance v1, Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;

    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->sharedPreferencesStorage:Lcom/amazon/sitb/android/IPersistentStorage;

    new-instance v23, Lcom/amazon/sitb/android/cache/cancel/CancelRecordParser;

    invoke-direct/range {v23 .. v23}, Lcom/amazon/sitb/android/cache/cancel/CancelRecordParser;-><init>()V

    new-instance v24, Lcom/amazon/sitb/android/cache/cancel/CancelRecordFormatter;

    invoke-direct/range {v24 .. v24}, Lcom/amazon/sitb/android/cache/cancel/CancelRecordFormatter;-><init>()V

    iget-object v3, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    const-string v21, "cancel-"

    const-wide/32 v25, 0x493e0

    move-object/from16 v20, v1

    move-object/from16 v22, v2

    move-object/from16 v27, v3

    invoke-direct/range {v20 .. v27}, Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;-><init>(Ljava/lang/String;Lcom/amazon/sitb/android/IPersistentStorage;Lcom/amazon/sitb/android/cache/CacheObjectParser;Lcom/amazon/sitb/android/cache/CacheObjectFormatter;JLcom/amazon/sitb/android/services/ClockService;)V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->recentCancelCache:Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;

    .line 131
    new-instance v1, Lcom/amazon/sitb/android/plugin/application/PricePropertyProvider;

    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->priceCache:Lcom/amazon/sitb/android/cache/price/PriceCache;

    invoke-direct {v1, v2}, Lcom/amazon/sitb/android/plugin/application/PricePropertyProvider;-><init>(Lcom/amazon/sitb/android/cache/price/PriceCache;)V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->pricePropertyProvider:Lcom/amazon/sitb/android/plugin/application/PricePropertyProvider;

    .line 132
    new-instance v1, Lcom/amazon/sitb/android/plugin/application/PfmCorChangedHandler;

    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->priceCache:Lcom/amazon/sitb/android/cache/price/PriceCache;

    iget-object v3, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->seriesCache:Lcom/amazon/sitb/android/cache/series/SeriesCache;

    invoke-direct {v1, v2, v3}, Lcom/amazon/sitb/android/plugin/application/PfmCorChangedHandler;-><init>(Lcom/amazon/sitb/android/cache/price/PriceCache;Lcom/amazon/sitb/android/cache/series/SeriesCache;)V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->pfmCorChangedHandler:Lcom/amazon/sitb/android/plugin/application/PfmCorChangedHandler;

    .line 134
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 135
    new-instance v2, Lcom/amazon/sitb/android/impl/AsyncTaskRunner;

    invoke-direct {v2, v1}, Lcom/amazon/sitb/android/impl/AsyncTaskRunner;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    iput-object v2, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->taskRunner:Lcom/amazon/sitb/android/ITaskRunner;

    .line 137
    new-instance v1, Lcom/amazon/sitb/android/services/ClassInstantiationService;

    invoke-direct {v1}, Lcom/amazon/sitb/android/services/ClassInstantiationService;-><init>()V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->classInstantiationService:Lcom/amazon/sitb/android/services/ClassInstantiationService;

    .line 138
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/sitb/R$string;->device_information_factory_class_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/sitb/android/services/ClassInstantiationService;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/sitb/android/services/DeviceInformationFactory;

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->deviceInformationFactory:Lcom/amazon/sitb/android/services/DeviceInformationFactory;

    .line 139
    invoke-interface {v1, v9}, Lcom/amazon/sitb/android/services/DeviceInformationFactory;->create(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    .line 141
    new-instance v15, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v3

    iget-object v4, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    .line 143
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v5

    .line 144
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/sitb/R$string;->series_hostname_key:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 145
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/sitb/R$bool;->cookie_token_is_quoted:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    move-object v2, v15

    invoke-direct/range {v2 .. v7}, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;-><init>(Lcom/amazon/kindle/krx/application/IUserAccount;Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/kindle/krx/store/IStoreManager;Ljava/lang/String;Z)V

    .line 146
    new-instance v4, Lcom/amazon/sitb/android/reftag/ReftagService;

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v4, v15, v1}, Lcom/amazon/sitb/android/reftag/ReftagService;-><init>(Lcom/amazon/sitb/android/IDeviceInformationProvider;Landroid/content/res/Resources;)V

    .line 149
    new-instance v1, Lcom/amazon/sitb/android/cache/token/TokenCache;

    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->sharedPreferencesStorage:Lcom/amazon/sitb/android/IPersistentStorage;

    new-instance v3, Lcom/amazon/sitb/android/cache/StringParser;

    invoke-direct {v3}, Lcom/amazon/sitb/android/cache/StringParser;-><init>()V

    new-instance v5, Lcom/amazon/sitb/android/cache/StringFormatter;

    invoke-direct {v5}, Lcom/amazon/sitb/android/cache/StringFormatter;-><init>()V

    const-string/jumbo v6, "token-"

    invoke-direct {v1, v6, v2, v3, v5}, Lcom/amazon/sitb/android/cache/token/TokenCache;-><init>(Ljava/lang/String;Lcom/amazon/sitb/android/IPersistentStorage;Lcom/amazon/sitb/android/cache/CacheObjectParser;Lcom/amazon/sitb/android/cache/CacheObjectFormatter;)V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->tokenCache:Lcom/amazon/sitb/android/cache/token/TokenCache;

    .line 150
    new-instance v6, Lcom/amazon/sitb/android/purchase/PrepareBuyResponseParser;

    invoke-direct {v6}, Lcom/amazon/sitb/android/purchase/PrepareBuyResponseParser;-><init>()V

    .line 152
    new-instance v1, Lcom/amazon/sitb/android/utils/WeblabClient;

    invoke-direct {v1, v9}, Lcom/amazon/sitb/android/utils/WeblabClient;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->weblabClient:Lcom/amazon/sitb/android/utils/WeblabClient;

    .line 154
    new-instance v8, Lcom/amazon/sitb/android/purchase/GlideClient;

    iget-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/amazon/sitb/android/purchase/GlideClient;-><init>(Lcom/amazon/kindle/krx/store/IStoreManager;)V

    .line 156
    new-instance v10, Lcom/amazon/sitb/android/impl/StoreActions;

    iget-object v5, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->tokenCache:Lcom/amazon/sitb/android/cache/token/TokenCache;

    move-object v1, v10

    move-object/from16 v2, p1

    move-object v3, v15

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/amazon/sitb/android/impl/StoreActions;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/sitb/android/IDeviceInformationProvider;Lcom/amazon/sitb/android/reftag/ReftagService;Lcom/amazon/sitb/android/cache/token/TokenCache;Lcom/amazon/sitb/android/purchase/PrepareBuyResponseParser;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/purchase/GlideClient;)V

    iput-object v10, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->storeActions:Lcom/amazon/sitb/android/IStoreActions;

    .line 164
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object v1

    .line 165
    new-instance v2, Lcom/amazon/sitb/android/services/ConnectivityService;

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-direct {v2, v3}, Lcom/amazon/sitb/android/services/ConnectivityService;-><init>(Landroid/net/ConnectivityManager;)V

    .line 167
    new-instance v11, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;

    iget-object v3, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->storeActions:Lcom/amazon/sitb/android/IStoreActions;

    iget-object v4, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 169
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object v5

    iget-object v6, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->weblabClient:Lcom/amazon/sitb/android/utils/WeblabClient;

    .line 170
    invoke-virtual {v6}, Lcom/amazon/sitb/android/utils/WeblabClient;->isGlideWeblabEnabled()Z

    move-result v6

    invoke-direct {v11, v3, v4, v5, v6}, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;-><init>(Lcom/amazon/sitb/android/IStoreActions;Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;Z)V

    .line 171
    new-instance v3, Lcom/amazon/sitb/android/updater/RequestService;

    sget-object v16, Lcom/amazon/sitb/android/Metric;->PRICE_UPDATE_TASK_RUN_TIME:Lcom/amazon/sitb/android/Metric;

    sget-object v17, Lcom/amazon/sitb/android/Metric;->PRICE_UPDATE_TASK_RUN_ATTEMPT:Lcom/amazon/sitb/android/Metric;

    sget-object v18, Lcom/amazon/sitb/android/Metric;->PRICE_UPDATE_TASK_RUN_SUCCESS:Lcom/amazon/sitb/android/Metric;

    sget-object v19, Lcom/amazon/sitb/android/Metric;->PRICE_UPDATE_TASK_RUN_FAILURE:Lcom/amazon/sitb/android/Metric;

    const-string/jumbo v13, "price"

    const-wide/32 v4, 0xea60

    move-object v10, v3

    move-object/from16 v12, p2

    move-object v6, v14

    move-object v7, v15

    move-wide v14, v4

    invoke-direct/range {v10 .. v19}, Lcom/amazon/sitb/android/updater/RequestService;-><init>(Lcom/amazon/sitb/android/updater/RequestExecutorService;Lcom/amazon/sitb/android/metrics/MetricsService;Ljava/lang/String;JLcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;)V

    .line 179
    new-instance v4, Lcom/amazon/sitb/android/updater/Updater;

    iget-object v5, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->priceCache:Lcom/amazon/sitb/android/cache/price/PriceCache;

    invoke-direct {v4, v5, v3, v2}, Lcom/amazon/sitb/android/updater/Updater;-><init>(Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/updater/RequestService;Lcom/amazon/sitb/android/services/ConnectivityService;)V

    iput-object v4, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->priceUpdater:Lcom/amazon/sitb/android/updater/Updater;

    .line 180
    new-instance v3, Lcom/amazon/sitb/android/updater/price/PriceScheduler;

    iget-object v5, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->taskRunner:Lcom/amazon/sitb/android/ITaskRunner;

    iget-object v8, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->priceCache:Lcom/amazon/sitb/android/cache/price/PriceCache;

    invoke-direct {v3, v5, v4, v8}, Lcom/amazon/sitb/android/updater/price/PriceScheduler;-><init>(Lcom/amazon/sitb/android/ITaskRunner;Lcom/amazon/sitb/android/updater/Updater;Lcom/amazon/sitb/android/cache/Cache;)V

    iput-object v3, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->priceScheduler:Lcom/amazon/sitb/android/updater/price/PriceScheduler;

    .line 182
    new-instance v3, Lcom/amazon/sitb/android/updater/series/SeriesInfoJsonParser;

    iget-object v4, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    invoke-direct {v3, v4}, Lcom/amazon/sitb/android/updater/series/SeriesInfoJsonParser;-><init>(Lcom/amazon/sitb/android/services/ClockService;)V

    .line 183
    new-instance v4, Lcom/amazon/sitb/android/updater/series/SeriesResponseHandlerFactory;

    iget-object v5, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    iget-object v8, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    invoke-direct {v4, v5, v3, v8}, Lcom/amazon/sitb/android/updater/series/SeriesResponseHandlerFactory;-><init>(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/sitb/android/updater/series/SeriesInfoJsonParser;Lcom/amazon/sitb/android/services/ClockService;)V

    .line 184
    new-instance v11, Lcom/amazon/sitb/android/updater/series/SeriesRequestExecutorService;

    invoke-direct {v11, v7, v1, v4}, Lcom/amazon/sitb/android/updater/series/SeriesRequestExecutorService;-><init>(Lcom/amazon/sitb/android/IDeviceInformationProvider;Lcom/amazon/kindle/krx/download/IKRXDownloadManager;Lcom/amazon/sitb/android/updater/series/SeriesResponseHandlerFactory;)V

    .line 187
    new-instance v1, Lcom/amazon/sitb/android/updater/RequestService;

    sget-object v16, Lcom/amazon/sitb/android/Metric;->SERIES_UPDATE_TASK_RUN_TIME:Lcom/amazon/sitb/android/Metric;

    sget-object v17, Lcom/amazon/sitb/android/Metric;->SERIES_UPDATE_TASK_RUN_ATTEMPT:Lcom/amazon/sitb/android/Metric;

    sget-object v18, Lcom/amazon/sitb/android/Metric;->SERIES_UPDATE_TASK_RUN_SUCCESS:Lcom/amazon/sitb/android/Metric;

    sget-object v19, Lcom/amazon/sitb/android/Metric;->SERIES_UPDATE_TASK_RUN_FAILURE:Lcom/amazon/sitb/android/Metric;

    const-string/jumbo v13, "series"

    const-wide/32 v14, 0xea60

    move-object v10, v1

    invoke-direct/range {v10 .. v19}, Lcom/amazon/sitb/android/updater/RequestService;-><init>(Lcom/amazon/sitb/android/updater/RequestExecutorService;Lcom/amazon/sitb/android/metrics/MetricsService;Ljava/lang/String;JLcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;)V

    .line 195
    new-instance v3, Lcom/amazon/sitb/android/updater/Updater;

    iget-object v4, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->seriesCache:Lcom/amazon/sitb/android/cache/series/SeriesCache;

    invoke-direct {v3, v4, v1, v2}, Lcom/amazon/sitb/android/updater/Updater;-><init>(Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/updater/RequestService;Lcom/amazon/sitb/android/services/ConnectivityService;)V

    iput-object v3, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->seriesUpdater:Lcom/amazon/sitb/android/updater/Updater;

    .line 196
    new-instance v1, Lcom/amazon/sitb/android/updater/series/SeriesScheduler;

    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->taskRunner:Lcom/amazon/sitb/android/ITaskRunner;

    iget-object v4, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->seriesCache:Lcom/amazon/sitb/android/cache/series/SeriesCache;

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/sitb/android/updater/series/SeriesScheduler;-><init>(Lcom/amazon/sitb/android/ITaskRunner;Lcom/amazon/sitb/android/updater/Updater;Lcom/amazon/sitb/android/cache/Cache;)V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->seriesScheduler:Lcom/amazon/sitb/android/updater/series/SeriesScheduler;

    .line 198
    new-instance v1, Lcom/amazon/sitb/android/ReaderActions;

    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->recentCancelCache:Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;

    invoke-direct {v1, v9, v2, v6}, Lcom/amazon/sitb/android/ReaderActions;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;Lcom/amazon/sitb/android/metrics/MetricsService;)V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->readerActions:Lcom/amazon/sitb/android/ReaderActions;

    .line 200
    new-instance v1, Lcom/amazon/sitb/android/broadcasts/BroadcastReceiverInfo;

    new-instance v2, Lcom/amazon/sitb/android/broadcasts/ConnectivityChangedReceiver;

    invoke-direct {v2}, Lcom/amazon/sitb/android/broadcasts/ConnectivityChangedReceiver;-><init>()V

    sget-object v3, Lcom/amazon/kindle/krx/system/IntentType;->CONNECTIVITY_CHANGE:Lcom/amazon/kindle/krx/system/IntentType;

    invoke-direct {v1, v2, v3}, Lcom/amazon/sitb/android/broadcasts/BroadcastReceiverInfo;-><init>(Lcom/amazon/kindle/krx/system/IBroadcastListener;Lcom/amazon/kindle/krx/system/IntentType;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->broadcastReceivers:Ljava/util/Collection;

    .line 202
    new-instance v1, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;

    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-direct {v1, v2}, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;-><init>(Lcom/amazon/kindle/krx/events/IMessageQueue;)V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->applicationLibraryEventListener:Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;

    .line 203
    new-instance v1, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;

    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-direct {v1, v2}, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;-><init>(Lcom/amazon/kindle/krx/events/IMessageQueue;)V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->applicationReaderNavigationListener:Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;

    .line 204
    new-instance v1, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderActivityLifecycleListener;

    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-direct {v1, v2}, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderActivityLifecycleListener;-><init>(Lcom/amazon/kindle/krx/events/IMessageQueue;)V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->applicationReaderActivityLifecycleListener:Lcom/amazon/sitb/android/plugin/application/ApplicationReaderActivityLifecycleListener;

    .line 206
    new-instance v1, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryContentUpdatedHandler;

    iget-object v4, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->priceCache:Lcom/amazon/sitb/android/cache/price/PriceCache;

    iget-object v5, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->seriesCache:Lcom/amazon/sitb/android/cache/series/SeriesCache;

    iget-object v6, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->priceUpdater:Lcom/amazon/sitb/android/updater/Updater;

    iget-object v7, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->seriesUpdater:Lcom/amazon/sitb/android/updater/Updater;

    iget-object v8, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->bookIdParser:Lcom/amazon/sitb/android/services/BookIdParser;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryContentUpdatedHandler;-><init>(Lcom/amazon/sitb/android/cache/price/PriceCache;Lcom/amazon/sitb/android/cache/series/SeriesCache;Lcom/amazon/sitb/android/updater/Updater;Lcom/amazon/sitb/android/updater/Updater;Lcom/amazon/sitb/android/services/BookIdParser;)V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->applicationLibraryContentUpdatedHandler:Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryContentUpdatedHandler;

    .line 207
    new-instance v1, Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;

    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->priceScheduler:Lcom/amazon/sitb/android/updater/price/PriceScheduler;

    iget-object v3, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->seriesScheduler:Lcom/amazon/sitb/android/updater/series/SeriesScheduler;

    iget-object v4, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->seriesCache:Lcom/amazon/sitb/android/cache/series/SeriesCache;

    iget-object v5, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->readerActions:Lcom/amazon/sitb/android/ReaderActions;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;-><init>(Lcom/amazon/sitb/android/updater/price/PriceScheduler;Lcom/amazon/sitb/android/updater/series/SeriesScheduler;Lcom/amazon/sitb/android/cache/series/SeriesCache;Lcom/amazon/sitb/android/ReaderActions;)V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->applicationBookNavigationHandler:Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;

    .line 208
    new-instance v1, Lcom/amazon/sitb/android/plugin/application/SeriesInfoUpdatedHandler;

    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->priceUpdater:Lcom/amazon/sitb/android/updater/Updater;

    invoke-direct {v1, v2}, Lcom/amazon/sitb/android/plugin/application/SeriesInfoUpdatedHandler;-><init>(Lcom/amazon/sitb/android/updater/Updater;)V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->seriesInfoUpdatedHandler:Lcom/amazon/sitb/android/plugin/application/SeriesInfoUpdatedHandler;

    .line 210
    new-instance v1, Lcom/amazon/sitb/android/services/ActivityService;

    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v2

    iget-object v3, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 211
    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/sitb/android/services/ActivityService;-><init>(Lcom/amazon/kindle/krx/ui/IReaderUIManager;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->activityService:Lcom/amazon/sitb/android/services/ActivityService;

    return-void
.end method


# virtual methods
.method public getActivityService()Lcom/amazon/sitb/android/services/ActivityService;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->activityService:Lcom/amazon/sitb/android/services/ActivityService;

    return-object v0
.end method

.method public getApplicationBookNavigationHandler()Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->applicationBookNavigationHandler:Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;

    return-object v0
.end method

.method public getApplicationLibraryContentUpdatedHandler()Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryContentUpdatedHandler;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->applicationLibraryContentUpdatedHandler:Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryContentUpdatedHandler;

    return-object v0
.end method

.method public getApplicationLibraryEventListener()Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->applicationLibraryEventListener:Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;

    return-object v0
.end method

.method public getApplicationReaderActivityLifecycleListener()Lcom/amazon/sitb/android/plugin/application/ApplicationReaderActivityLifecycleListener;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->applicationReaderActivityLifecycleListener:Lcom/amazon/sitb/android/plugin/application/ApplicationReaderActivityLifecycleListener;

    return-object v0
.end method

.method public getApplicationReaderNavigationListener()Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->applicationReaderNavigationListener:Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;

    return-object v0
.end method

.method public getBookIdParser()Lcom/amazon/sitb/android/services/BookIdParser;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->bookIdParser:Lcom/amazon/sitb/android/services/BookIdParser;

    return-object v0
.end method

.method public getBroadcastReceivers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/sitb/android/broadcasts/BroadcastReceiverInfo;",
            ">;"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->broadcastReceivers:Ljava/util/Collection;

    return-object v0
.end method

.method public getClassInstantiationService()Lcom/amazon/sitb/android/services/ClassInstantiationService;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->classInstantiationService:Lcom/amazon/sitb/android/services/ClassInstantiationService;

    return-object v0
.end method

.method public getClockService()Lcom/amazon/sitb/android/services/ClockService;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    return-object v0
.end method

.method public getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method public getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object v0
.end method

.method public getMetricsService()Lcom/amazon/sitb/android/metrics/MetricsService;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    return-object v0
.end method

.method public getPfmCorChangedHandler()Lcom/amazon/sitb/android/plugin/application/PfmCorChangedHandler;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->pfmCorChangedHandler:Lcom/amazon/sitb/android/plugin/application/PfmCorChangedHandler;

    return-object v0
.end method

.method public getPluginMetadataService()Lcom/amazon/sitb/android/services/PluginMetadataService;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->pluginMetadataService:Lcom/amazon/sitb/android/services/PluginMetadataService;

    return-object v0
.end method

.method public getPriceCache()Lcom/amazon/sitb/android/cache/price/PriceCache;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->priceCache:Lcom/amazon/sitb/android/cache/price/PriceCache;

    return-object v0
.end method

.method public getPricePropertyProvider()Lcom/amazon/sitb/android/plugin/application/PricePropertyProvider;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->pricePropertyProvider:Lcom/amazon/sitb/android/plugin/application/PricePropertyProvider;

    return-object v0
.end method

.method public getPriceScheduler()Lcom/amazon/sitb/android/updater/price/PriceScheduler;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->priceScheduler:Lcom/amazon/sitb/android/updater/price/PriceScheduler;

    return-object v0
.end method

.method public getPriceUpdater()Lcom/amazon/sitb/android/updater/Updater;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/sitb/android/updater/Updater<",
            "Lcom/amazon/sitb/android/BookPrice;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->priceUpdater:Lcom/amazon/sitb/android/updater/Updater;

    return-object v0
.end method

.method public getPubSubEventsManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    return-object v0
.end method

.method public getReaderActions()Lcom/amazon/sitb/android/ReaderActions;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->readerActions:Lcom/amazon/sitb/android/ReaderActions;

    return-object v0
.end method

.method public getRecentCancelCache()Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->recentCancelCache:Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;

    return-object v0
.end method

.method public getSeriesCache()Lcom/amazon/sitb/android/cache/series/SeriesCache;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->seriesCache:Lcom/amazon/sitb/android/cache/series/SeriesCache;

    return-object v0
.end method

.method public getSeriesInfoUpdatedHandler()Lcom/amazon/sitb/android/plugin/application/SeriesInfoUpdatedHandler;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->seriesInfoUpdatedHandler:Lcom/amazon/sitb/android/plugin/application/SeriesInfoUpdatedHandler;

    return-object v0
.end method

.method public getSeriesScheduler()Lcom/amazon/sitb/android/updater/series/SeriesScheduler;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->seriesScheduler:Lcom/amazon/sitb/android/updater/series/SeriesScheduler;

    return-object v0
.end method

.method public getSeriesUpdater()Lcom/amazon/sitb/android/updater/Updater;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/sitb/android/updater/Updater<",
            "Lcom/amazon/sitb/android/SeriesInfo;",
            ">;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->seriesUpdater:Lcom/amazon/sitb/android/updater/Updater;

    return-object v0
.end method

.method public getStoreActions()Lcom/amazon/sitb/android/IStoreActions;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->storeActions:Lcom/amazon/sitb/android/IStoreActions;

    return-object v0
.end method

.method public getTaskRunner()Lcom/amazon/sitb/android/ITaskRunner;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->taskRunner:Lcom/amazon/sitb/android/ITaskRunner;

    return-object v0
.end method

.method public getUserRoleService()Lcom/amazon/sitb/android/services/UserRoleService;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->userRoleService:Lcom/amazon/sitb/android/services/UserRoleService;

    return-object v0
.end method

.method public getWeblabClient()Lcom/amazon/sitb/android/utils/WeblabClient;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->weblabClient:Lcom/amazon/sitb/android/utils/WeblabClient;

    return-object v0
.end method
