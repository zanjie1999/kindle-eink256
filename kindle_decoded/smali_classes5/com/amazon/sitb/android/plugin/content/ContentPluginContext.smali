.class public Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;
.super Ljava/lang/Object;
.source "ContentPluginContext.java"


# static fields
.field private static final DELAY_BETWEEN_CHECKS_MS:J = 0x3e8L

.field private static final NUM_CHECKS_PER_SYNC:I = 0x3

.field private static final NUM_DOWNLOAD_CHECKS:I = 0xf

.field private static final NUM_SYNC_ATTEMPTS:I = 0x5

.field private static final PROVIDER_PRIORITY:I = 0x5f

.field private static final RECENT_CANCEL_DELAY_BETWEEN_SYNCS:J = 0xafc8L

.field private static final RECENT_CANCEL_NUM_SYNCS:I = 0x6


# instance fields
.field private final actionBarDecorationProvider:Lcom/amazon/sitb/android/plugin/content/ActionBarDecorationProvider;

.field private final applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

.field private final connectivityHandler:Lcom/amazon/sitb/android/ConnectivityHandler;

.field private final dialogService:Lcom/amazon/sitb/android/services/DialogService;

.field private final downloadStatusListenerFactory:Lcom/amazon/sitb/android/model/DownloadStatusListenerFactory;

.field private final excerptMatchingService:Lcom/amazon/sitb/android/transition/ExcerptMatchingService;

.field private final excerptService:Lcom/amazon/sitb/android/transition/ExcerptService;

.field private final purchaseProtectionService:Lcom/amazon/sitb/android/purchase/IPurchaseProtectionService;

.field private final reftagBundleService:Lcom/amazon/sitb/android/reftag/ReftagBundleService;

.field private final sampleBarDecoration:Lcom/amazon/kindle/krx/ui/IActionBarDecoration;

.field private final sampleBarPresenter:Lcom/amazon/sitb/android/UpsellBarPresenter;

.field private final sampleBarViewFactoryNLN:Lcom/amazon/sitb/android/view/ViewFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/sitb/android/view/ViewFactory<",
            "Lcom/amazon/sitb/android/view/UpsellBarView;",
            ">;"
        }
    .end annotation
.end field

.field private final sampleBarViewManager:Lcom/amazon/sitb/android/view/ViewManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/sitb/android/view/ViewManager<",
            "Lcom/amazon/sitb/android/UpsellBarPresenter;",
            "Lcom/amazon/sitb/android/view/UpsellBarView;",
            ">;"
        }
    .end annotation
.end field

.field private final sampleDeletionHandler:Lcom/amazon/sitb/android/plugin/content/SampleDeletionHandler;

.field private final sampleReftagBundle:Lcom/amazon/sitb/android/reftag/SampleReftagBundle;

.field private final seekerDecoration:Lcom/amazon/sitb/android/plugin/content/SeekerDecoration;

.field private final seekerDecorationProvider:Lcom/amazon/sitb/android/plugin/content/SeekerDecorationProvider;

.field private final seriesBarDecoration:Lcom/amazon/kindle/krx/ui/IActionBarDecoration;

.field private final seriesBarPresenter:Lcom/amazon/sitb/android/UpsellBarPresenter;

.field private final seriesBarViewFactoryNLN:Lcom/amazon/sitb/android/view/ViewFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/sitb/android/view/ViewFactory<",
            "Lcom/amazon/sitb/android/view/UpsellBarView;",
            ">;"
        }
    .end annotation
.end field

.field private final seriesBarViewManager:Lcom/amazon/sitb/android/view/ViewManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/sitb/android/view/ViewManager<",
            "Lcom/amazon/sitb/android/UpsellBarPresenter;",
            "Lcom/amazon/sitb/android/view/UpsellBarView;",
            ">;"
        }
    .end annotation
.end field

.field private final seriesReftagBundle:Lcom/amazon/sitb/android/reftag/SeriesReftagBundle;

.field private final seriesSeekBarChangeListener:Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;

.field private final showSampleBarDecider:Lcom/amazon/sitb/android/plugin/content/ShowBarDecider;

.field private final showSeriesBarDecider:Lcom/amazon/sitb/android/plugin/content/ShowBarDecider;

.field private final transitionFactory:Lcom/amazon/sitb/android/transition/TransitionFactory;

.field private final transitionManager:Lcom/amazon/sitb/android/transition/TransitionManager;

.field private final transitionToastFactory:Lcom/amazon/sitb/android/transition/TransitionToastFactory;

.field private final upsellModel:Lcom/amazon/sitb/android/model/UpsellModel;


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;)V
    .locals 40

    move-object/from16 v0, p0

    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    .line 108
    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/sitb/R$bool;->show_message_on_payment_failure:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v39

    .line 112
    new-instance v2, Lcom/amazon/sitb/android/transition/ExcerptService;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazon/sitb/android/transition/ExcerptService;-><init>(Lcom/amazon/kindle/krx/reader/IReaderManager;)V

    iput-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->excerptService:Lcom/amazon/sitb/android/transition/ExcerptService;

    .line 113
    new-instance v2, Lcom/amazon/sitb/android/transition/ExcerptMatchingService;

    invoke-direct {v2}, Lcom/amazon/sitb/android/transition/ExcerptMatchingService;-><init>()V

    iput-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->excerptMatchingService:Lcom/amazon/sitb/android/transition/ExcerptMatchingService;

    .line 114
    new-instance v2, Lcom/amazon/sitb/android/transition/TransitionFactory;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v3

    iget-object v4, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->excerptService:Lcom/amazon/sitb/android/transition/ExcerptService;

    iget-object v5, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->excerptMatchingService:Lcom/amazon/sitb/android/transition/ExcerptMatchingService;

    invoke-direct {v2, v3, v4, v5}, Lcom/amazon/sitb/android/transition/TransitionFactory;-><init>(Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/sitb/android/transition/ExcerptService;Lcom/amazon/sitb/android/transition/ExcerptMatchingService;)V

    iput-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->transitionFactory:Lcom/amazon/sitb/android/transition/TransitionFactory;

    .line 117
    new-instance v3, Lcom/amazon/sitb/android/transition/TransitionManager;

    iget-object v4, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->excerptService:Lcom/amazon/sitb/android/transition/ExcerptService;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getPubSubEventsManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Lcom/amazon/sitb/android/transition/TransitionManager;-><init>(Lcom/amazon/sitb/android/transition/TransitionFactory;Lcom/amazon/sitb/android/transition/ExcerptService;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V

    iput-object v3, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->transitionManager:Lcom/amazon/sitb/android/transition/TransitionManager;

    .line 118
    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->transitionFactory:Lcom/amazon/sitb/android/transition/TransitionFactory;

    invoke-virtual {v2, v3}, Lcom/amazon/sitb/android/transition/TransitionFactory;->setTransitionManager(Lcom/amazon/sitb/android/transition/TransitionManager;)V

    .line 120
    new-instance v2, Lcom/amazon/sitb/android/transition/TransitionToastFactory;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazon/sitb/android/transition/TransitionToastFactory;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->transitionToastFactory:Lcom/amazon/sitb/android/transition/TransitionToastFactory;

    .line 122
    new-instance v2, Lcom/amazon/sitb/android/reftag/SampleReftagBundle;

    invoke-direct {v2}, Lcom/amazon/sitb/android/reftag/SampleReftagBundle;-><init>()V

    iput-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->sampleReftagBundle:Lcom/amazon/sitb/android/reftag/SampleReftagBundle;

    .line 123
    new-instance v2, Lcom/amazon/sitb/android/reftag/SeriesReftagBundle;

    invoke-direct {v2}, Lcom/amazon/sitb/android/reftag/SeriesReftagBundle;-><init>()V

    iput-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->seriesReftagBundle:Lcom/amazon/sitb/android/reftag/SeriesReftagBundle;

    .line 124
    new-instance v3, Lcom/amazon/sitb/android/reftag/ReftagBundleService;

    iget-object v4, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->sampleReftagBundle:Lcom/amazon/sitb/android/reftag/SampleReftagBundle;

    invoke-direct {v3, v4, v2}, Lcom/amazon/sitb/android/reftag/ReftagBundleService;-><init>(Lcom/amazon/sitb/android/reftag/ReftagBundle;Lcom/amazon/sitb/android/reftag/ReftagBundle;)V

    iput-object v3, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->reftagBundleService:Lcom/amazon/sitb/android/reftag/ReftagBundleService;

    .line 126
    new-instance v2, Lcom/amazon/sitb/android/ConnectivityHandler;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazon/sitb/android/ConnectivityHandler;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->connectivityHandler:Lcom/amazon/sitb/android/ConnectivityHandler;

    .line 128
    new-instance v2, Lcom/amazon/sitb/android/plugin/content/SampleDeletionHandler;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getReaderActions()Lcom/amazon/sitb/android/ReaderActions;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazon/sitb/android/plugin/content/SampleDeletionHandler;-><init>(Lcom/amazon/sitb/android/ReaderActions;)V

    iput-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->sampleDeletionHandler:Lcom/amazon/sitb/android/plugin/content/SampleDeletionHandler;

    .line 129
    new-instance v2, Lcom/amazon/sitb/android/services/DialogService;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v3

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v4

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/amazon/sitb/android/services/DialogService;-><init>(Lcom/amazon/kindle/krx/application/IApplicationManager;Lcom/amazon/kindle/krx/ui/IReaderUIManager;Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;)V

    iput-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->dialogService:Lcom/amazon/sitb/android/services/DialogService;

    .line 133
    new-instance v2, Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getReaderActions()Lcom/amazon/sitb/android/ReaderActions;

    move-result-object v7

    .line 134
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v8

    .line 135
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getClockService()Lcom/amazon/sitb/android/services/ClockService;

    move-result-object v9

    const/4 v10, 0x5

    const/4 v11, 0x3

    const-wide/16 v12, 0x3e8

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;-><init>(Lcom/amazon/sitb/android/ReaderActions;Lcom/amazon/kindle/krx/library/ILibraryManager;Lcom/amazon/sitb/android/services/ClockService;IIJ)V

    .line 139
    new-instance v12, Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v15

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getClockService()Lcom/amazon/sitb/android/services/ClockService;

    move-result-object v16

    const/16 v17, 0xf

    const-wide/16 v18, 0x3e8

    move-object v14, v12

    invoke-direct/range {v14 .. v19}, Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;-><init>(Lcom/amazon/kindle/krx/library/ILibraryManager;Lcom/amazon/sitb/android/services/ClockService;IJ)V

    .line 143
    new-instance v31, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getStoreActions()Lcom/amazon/sitb/android/IStoreActions;

    move-result-object v7

    iget-object v8, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->dialogService:Lcom/amazon/sitb/android/services/DialogService;

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getMetricsService()Lcom/amazon/sitb/android/metrics/MetricsService;

    move-result-object v9

    iget-object v10, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->reftagBundleService:Lcom/amazon/sitb/android/reftag/ReftagBundleService;

    .line 149
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v13

    iget-object v14, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->connectivityHandler:Lcom/amazon/sitb/android/ConnectivityHandler;

    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getWeblabClient()Lcom/amazon/sitb/android/utils/WeblabClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/sitb/android/utils/WeblabClient;->isGlideWeblabEnabled()Z

    move-result v15

    move-object/from16 v6, v31

    move-object v11, v2

    invoke-direct/range {v6 .. v15}, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;-><init>(Lcom/amazon/sitb/android/IStoreActions;Lcom/amazon/sitb/android/services/DialogService;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/reftag/ReftagBundleService;Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/sitb/android/ConnectivityHandler;Z)V

    .line 152
    new-instance v2, Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getReaderActions()Lcom/amazon/sitb/android/ReaderActions;

    move-result-object v17

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v18

    .line 154
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getPriceUpdater()Lcom/amazon/sitb/android/updater/Updater;

    move-result-object v19

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getSeriesUpdater()Lcom/amazon/sitb/android/updater/Updater;

    move-result-object v20

    .line 156
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getPriceCache()Lcom/amazon/sitb/android/cache/price/PriceCache;

    move-result-object v21

    .line 157
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getSeriesCache()Lcom/amazon/sitb/android/cache/series/SeriesCache;

    move-result-object v22

    iget-object v3, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->reftagBundleService:Lcom/amazon/sitb/android/reftag/ReftagBundleService;

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getRecentCancelCache()Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;

    move-result-object v24

    move-object/from16 v16, v2

    move-object/from16 v23, v3

    invoke-direct/range {v16 .. v24}, Lcom/amazon/sitb/android/model/UpsellModel;-><init>(Lcom/amazon/sitb/android/ReaderActions;Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/sitb/android/updater/Updater;Lcom/amazon/sitb/android/updater/Updater;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/reftag/ReftagBundleService;Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;)V

    iput-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->upsellModel:Lcom/amazon/sitb/android/model/UpsellModel;

    .line 160
    new-instance v3, Lcom/amazon/sitb/android/model/DownloadStatusListenerFactory;

    invoke-direct {v3, v2}, Lcom/amazon/sitb/android/model/DownloadStatusListenerFactory;-><init>(Lcom/amazon/sitb/android/model/UpsellModel;)V

    iput-object v3, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->downloadStatusListenerFactory:Lcom/amazon/sitb/android/model/DownloadStatusListenerFactory;

    .line 162
    new-instance v2, Lcom/amazon/sitb/android/model/ClosedState;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getPriceCache()Lcom/amazon/sitb/android/cache/price/PriceCache;

    move-result-object v3

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getSeriesCache()Lcom/amazon/sitb/android/cache/series/SeriesCache;

    move-result-object v4

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getBookIdParser()Lcom/amazon/sitb/android/services/BookIdParser;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/amazon/sitb/android/model/ClosedState;-><init>(Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/services/BookIdParser;)V

    .line 165
    new-instance v3, Lcom/amazon/sitb/android/model/UnownedState;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getPriceCache()Lcom/amazon/sitb/android/cache/price/PriceCache;

    move-result-object v4

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getSeriesCache()Lcom/amazon/sitb/android/cache/series/SeriesCache;

    move-result-object v5

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getBookIdParser()Lcom/amazon/sitb/android/services/BookIdParser;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/amazon/sitb/android/model/UnownedState;-><init>(Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/services/BookIdParser;)V

    .line 168
    new-instance v4, Lcom/amazon/sitb/android/model/PurchasingState;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getPriceCache()Lcom/amazon/sitb/android/cache/price/PriceCache;

    move-result-object v8

    .line 169
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getSeriesCache()Lcom/amazon/sitb/android/cache/series/SeriesCache;

    move-result-object v9

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getReaderActions()Lcom/amazon/sitb/android/ReaderActions;

    move-result-object v10

    xor-int/lit8 v11, v39, 0x1

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getBookIdParser()Lcom/amazon/sitb/android/services/BookIdParser;

    move-result-object v12

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/amazon/sitb/android/model/PurchasingState;-><init>(Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/ReaderActions;ZLcom/amazon/sitb/android/services/BookIdParser;)V

    .line 173
    new-instance v5, Lcom/amazon/sitb/android/model/OwnedState;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getPriceCache()Lcom/amazon/sitb/android/cache/price/PriceCache;

    move-result-object v6

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getSeriesCache()Lcom/amazon/sitb/android/cache/series/SeriesCache;

    move-result-object v7

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getBookIdParser()Lcom/amazon/sitb/android/services/BookIdParser;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/amazon/sitb/android/model/OwnedState;-><init>(Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/services/BookIdParser;)V

    .line 176
    new-instance v6, Lcom/amazon/sitb/android/model/DownloadingState;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getPriceCache()Lcom/amazon/sitb/android/cache/price/PriceCache;

    move-result-object v10

    .line 177
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getSeriesCache()Lcom/amazon/sitb/android/cache/series/SeriesCache;

    move-result-object v11

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object v12

    iget-object v13, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->downloadStatusListenerFactory:Lcom/amazon/sitb/android/model/DownloadStatusListenerFactory;

    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getReaderActions()Lcom/amazon/sitb/android/ReaderActions;

    move-result-object v14

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getBookIdParser()Lcom/amazon/sitb/android/services/BookIdParser;

    move-result-object v15

    move-object v9, v6

    invoke-direct/range {v9 .. v15}, Lcom/amazon/sitb/android/model/DownloadingState;-><init>(Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/kindle/krx/download/IKRXDownloadManager;Lcom/amazon/sitb/android/model/DownloadStatusListenerFactory;Lcom/amazon/sitb/android/ReaderActions;Lcom/amazon/sitb/android/services/BookIdParser;)V

    .line 182
    new-instance v7, Lcom/amazon/sitb/android/model/DownloadedState;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getPriceCache()Lcom/amazon/sitb/android/cache/price/PriceCache;

    move-result-object v8

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getSeriesCache()Lcom/amazon/sitb/android/cache/series/SeriesCache;

    move-result-object v9

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getBookIdParser()Lcom/amazon/sitb/android/services/BookIdParser;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/amazon/sitb/android/model/DownloadedState;-><init>(Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/services/BookIdParser;)V

    .line 185
    new-instance v8, Lcom/amazon/sitb/android/model/CancelingState;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getPriceCache()Lcom/amazon/sitb/android/cache/price/PriceCache;

    move-result-object v9

    .line 186
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getSeriesCache()Lcom/amazon/sitb/android/cache/series/SeriesCache;

    move-result-object v10

    .line 187
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getBookIdParser()Lcom/amazon/sitb/android/services/BookIdParser;

    move-result-object v11

    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getRecentCancelCache()Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;

    move-result-object v12

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/amazon/sitb/android/model/CancelingState;-><init>(Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/services/BookIdParser;Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;)V

    .line 189
    new-instance v9, Lcom/amazon/sitb/android/model/PaymentErrorState;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getPriceCache()Lcom/amazon/sitb/android/cache/price/PriceCache;

    move-result-object v10

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getSeriesCache()Lcom/amazon/sitb/android/cache/series/SeriesCache;

    move-result-object v11

    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getBookIdParser()Lcom/amazon/sitb/android/services/BookIdParser;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/amazon/sitb/android/model/PaymentErrorState;-><init>(Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/services/BookIdParser;)V

    .line 192
    new-instance v10, Lcom/amazon/sitb/android/model/PaymentFailureState;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getPriceCache()Lcom/amazon/sitb/android/cache/price/PriceCache;

    move-result-object v11

    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getSeriesCache()Lcom/amazon/sitb/android/cache/series/SeriesCache;

    move-result-object v12

    .line 194
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getBookIdParser()Lcom/amazon/sitb/android/services/BookIdParser;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/amazon/sitb/android/model/PaymentFailureState;-><init>(Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/services/BookIdParser;)V

    .line 195
    new-instance v11, Lcom/amazon/sitb/android/model/TransitioningState;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getPriceCache()Lcom/amazon/sitb/android/cache/price/PriceCache;

    move-result-object v12

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getSeriesCache()Lcom/amazon/sitb/android/cache/series/SeriesCache;

    move-result-object v13

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getBookIdParser()Lcom/amazon/sitb/android/services/BookIdParser;

    move-result-object v14

    invoke-direct {v11, v12, v13, v14}, Lcom/amazon/sitb/android/model/TransitioningState;-><init>(Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/services/BookIdParser;)V

    .line 198
    new-instance v12, Lcom/amazon/sitb/android/model/RecentlyCanceledState;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getPriceCache()Lcom/amazon/sitb/android/cache/price/PriceCache;

    move-result-object v16

    .line 199
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getSeriesCache()Lcom/amazon/sitb/android/cache/series/SeriesCache;

    move-result-object v17

    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getBookIdParser()Lcom/amazon/sitb/android/services/BookIdParser;

    move-result-object v18

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v19

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getTaskRunner()Lcom/amazon/sitb/android/ITaskRunner;

    move-result-object v20

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getReaderActions()Lcom/amazon/sitb/android/ReaderActions;

    move-result-object v21

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getRecentCancelCache()Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;

    move-result-object v22

    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getClockService()Lcom/amazon/sitb/android/services/ClockService;

    move-result-object v23

    const-wide/32 v24, 0x493e0

    const/16 v26, 0x6

    const-wide/32 v27, 0xafc8

    move-object v15, v12

    invoke-direct/range {v15 .. v28}, Lcom/amazon/sitb/android/model/RecentlyCanceledState;-><init>(Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/services/BookIdParser;Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/sitb/android/ITaskRunner;Lcom/amazon/sitb/android/ReaderActions;Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;Lcom/amazon/sitb/android/services/ClockService;JIJ)V

    .line 209
    iget-object v13, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->upsellModel:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v13, v2}, Lcom/amazon/sitb/android/model/UpsellModel;->addState(Lcom/amazon/sitb/android/model/State;)V

    .line 210
    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->upsellModel:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v2, v3}, Lcom/amazon/sitb/android/model/UpsellModel;->addState(Lcom/amazon/sitb/android/model/State;)V

    .line 211
    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->upsellModel:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v2, v4}, Lcom/amazon/sitb/android/model/UpsellModel;->addState(Lcom/amazon/sitb/android/model/State;)V

    .line 212
    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->upsellModel:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v2, v5}, Lcom/amazon/sitb/android/model/UpsellModel;->addState(Lcom/amazon/sitb/android/model/State;)V

    .line 213
    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->upsellModel:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v2, v6}, Lcom/amazon/sitb/android/model/UpsellModel;->addState(Lcom/amazon/sitb/android/model/State;)V

    .line 214
    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->upsellModel:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v2, v7}, Lcom/amazon/sitb/android/model/UpsellModel;->addState(Lcom/amazon/sitb/android/model/State;)V

    .line 215
    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->upsellModel:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v2, v8}, Lcom/amazon/sitb/android/model/UpsellModel;->addState(Lcom/amazon/sitb/android/model/State;)V

    .line 216
    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->upsellModel:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v2, v9}, Lcom/amazon/sitb/android/model/UpsellModel;->addState(Lcom/amazon/sitb/android/model/State;)V

    .line 217
    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->upsellModel:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v2, v10}, Lcom/amazon/sitb/android/model/UpsellModel;->addState(Lcom/amazon/sitb/android/model/State;)V

    .line 218
    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->upsellModel:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v2, v11}, Lcom/amazon/sitb/android/model/UpsellModel;->addState(Lcom/amazon/sitb/android/model/State;)V

    .line 219
    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->upsellModel:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v2, v12}, Lcom/amazon/sitb/android/model/UpsellModel;->addState(Lcom/amazon/sitb/android/model/State;)V

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 223
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getClassInstantiationService()Lcom/amazon/sitb/android/services/ClassInstantiationService;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/sitb/R$string;->sample_bar_view_factory_class_name_nln:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/sitb/android/services/ClassInstantiationService;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/sitb/android/view/ViewFactory;

    iput-object v3, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->sampleBarViewFactoryNLN:Lcom/amazon/sitb/android/view/ViewFactory;

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getClassInstantiationService()Lcom/amazon/sitb/android/services/ClassInstantiationService;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/sitb/R$string;->series_bar_view_factory_class_name_nln:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/amazon/sitb/android/services/ClassInstantiationService;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/sitb/android/view/ViewFactory;

    iput-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->seriesBarViewFactoryNLN:Lcom/amazon/sitb/android/view/ViewFactory;

    .line 226
    new-instance v2, Lcom/amazon/sitb/android/view/ViewManager;

    iget-object v3, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->sampleBarViewFactoryNLN:Lcom/amazon/sitb/android/view/ViewFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazon/sitb/android/view/ViewManager;-><init>(Lcom/amazon/sitb/android/view/ViewFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->sampleBarViewManager:Lcom/amazon/sitb/android/view/ViewManager;

    .line 227
    new-instance v2, Lcom/amazon/sitb/android/view/ViewManager;

    iget-object v3, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->seriesBarViewFactoryNLN:Lcom/amazon/sitb/android/view/ViewFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazon/sitb/android/view/ViewManager;-><init>(Lcom/amazon/sitb/android/view/ViewFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->seriesBarViewManager:Lcom/amazon/sitb/android/view/ViewManager;

    .line 229
    new-instance v2, Lcom/amazon/sitb/android/transition/TransitionService;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getReaderActions()Lcom/amazon/sitb/android/ReaderActions;

    move-result-object v3

    iget-object v4, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->transitionToastFactory:Lcom/amazon/sitb/android/transition/TransitionToastFactory;

    iget-object v5, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->transitionManager:Lcom/amazon/sitb/android/transition/TransitionManager;

    invoke-direct {v2, v3, v4, v5}, Lcom/amazon/sitb/android/transition/TransitionService;-><init>(Lcom/amazon/sitb/android/ReaderActions;Lcom/amazon/sitb/android/transition/TransitionToastFactory;Lcom/amazon/sitb/android/transition/TransitionManager;)V

    .line 232
    new-instance v3, Lcom/amazon/sitb/android/transition/SampleTransitionTaskFactory;

    move-object v15, v3

    invoke-direct {v3, v2}, Lcom/amazon/sitb/android/transition/SampleTransitionTaskFactory;-><init>(Lcom/amazon/sitb/android/transition/TransitionService;)V

    .line 233
    new-instance v3, Lcom/amazon/sitb/android/transition/SeriesTransitionTaskFactory;

    move-object/from16 v33, v3

    invoke-direct {v3, v2}, Lcom/amazon/sitb/android/transition/SeriesTransitionTaskFactory;-><init>(Lcom/amazon/sitb/android/transition/TransitionService;)V

    .line 235
    new-instance v2, Lcom/amazon/sitb/android/services/OneClickSupportService;

    move-object/from16 v36, v2

    move-object/from16 v18, v2

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazon/sitb/android/services/OneClickSupportService;-><init>(Lcom/amazon/kindle/krx/application/IUserAccount;)V

    .line 236
    new-instance v2, Lcom/amazon/sitb/android/purchase/DefaultPurchaseProtectionService;

    invoke-direct {v2}, Lcom/amazon/sitb/android/purchase/DefaultPurchaseProtectionService;-><init>()V

    iput-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->purchaseProtectionService:Lcom/amazon/sitb/android/purchase/IPurchaseProtectionService;

    .line 237
    new-instance v2, Lcom/amazon/sitb/android/UpsellBarPresenter;

    move-object v4, v2

    iget-object v5, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->upsellModel:Lcom/amazon/sitb/android/model/UpsellModel;

    iget-object v6, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->sampleBarViewManager:Lcom/amazon/sitb/android/view/ViewManager;

    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getReaderActions()Lcom/amazon/sitb/android/ReaderActions;

    move-result-object v7

    .line 240
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getStoreActions()Lcom/amazon/sitb/android/IStoreActions;

    move-result-object v8

    iget-object v9, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->purchaseProtectionService:Lcom/amazon/sitb/android/purchase/IPurchaseProtectionService;

    iget-object v10, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->connectivityHandler:Lcom/amazon/sitb/android/ConnectivityHandler;

    .line 243
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object v11

    .line 244
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getMetricsService()Lcom/amazon/sitb/android/metrics/MetricsService;

    move-result-object v12

    iget-object v14, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->sampleReftagBundle:Lcom/amazon/sitb/android/reftag/SampleReftagBundle;

    .line 248
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getActivityService()Lcom/amazon/sitb/android/services/ActivityService;

    move-result-object v16

    sget-object v17, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    const/16 v19, 0x1

    iget-object v3, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->dialogService:Lcom/amazon/sitb/android/services/DialogService;

    move-object/from16 v20, v3

    move-object/from16 v13, v31

    move/from16 v21, v39

    invoke-direct/range {v4 .. v21}, Lcom/amazon/sitb/android/UpsellBarPresenter;-><init>(Lcom/amazon/sitb/android/model/UpsellModel;Lcom/amazon/sitb/android/view/ViewManager;Lcom/amazon/sitb/android/ReaderActions;Lcom/amazon/sitb/android/IStoreActions;Lcom/amazon/sitb/android/purchase/IPurchaseProtectionService;Lcom/amazon/sitb/android/ConnectivityHandler;Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;Lcom/amazon/sitb/android/reftag/ReftagBundle;Lcom/amazon/sitb/android/transition/TransitionTaskFactory;Lcom/amazon/sitb/android/services/ActivityService;Lcom/amazon/kindle/krx/content/ContentType;Lcom/amazon/sitb/android/services/OneClickSupportService;ZLcom/amazon/sitb/android/services/DialogService;Z)V

    iput-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->sampleBarPresenter:Lcom/amazon/sitb/android/UpsellBarPresenter;

    .line 254
    new-instance v2, Lcom/amazon/sitb/android/UpsellBarPresenter;

    move-object/from16 v22, v2

    iget-object v3, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->upsellModel:Lcom/amazon/sitb/android/model/UpsellModel;

    move-object/from16 v23, v3

    iget-object v3, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->seriesBarViewManager:Lcom/amazon/sitb/android/view/ViewManager;

    move-object/from16 v24, v3

    .line 256
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getReaderActions()Lcom/amazon/sitb/android/ReaderActions;

    move-result-object v25

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getStoreActions()Lcom/amazon/sitb/android/IStoreActions;

    move-result-object v26

    iget-object v3, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->purchaseProtectionService:Lcom/amazon/sitb/android/purchase/IPurchaseProtectionService;

    move-object/from16 v27, v3

    iget-object v3, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->connectivityHandler:Lcom/amazon/sitb/android/ConnectivityHandler;

    move-object/from16 v28, v3

    .line 260
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object v29

    .line 261
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getMetricsService()Lcom/amazon/sitb/android/metrics/MetricsService;

    move-result-object v30

    iget-object v3, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->seriesReftagBundle:Lcom/amazon/sitb/android/reftag/SeriesReftagBundle;

    move-object/from16 v32, v3

    .line 265
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getActivityService()Lcom/amazon/sitb/android/services/ActivityService;

    move-result-object v34

    sget-object v35, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    const/16 v37, 0x0

    iget-object v3, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->dialogService:Lcom/amazon/sitb/android/services/DialogService;

    move-object/from16 v38, v3

    invoke-direct/range {v22 .. v39}, Lcom/amazon/sitb/android/UpsellBarPresenter;-><init>(Lcom/amazon/sitb/android/model/UpsellModel;Lcom/amazon/sitb/android/view/ViewManager;Lcom/amazon/sitb/android/ReaderActions;Lcom/amazon/sitb/android/IStoreActions;Lcom/amazon/sitb/android/purchase/IPurchaseProtectionService;Lcom/amazon/sitb/android/ConnectivityHandler;Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;Lcom/amazon/sitb/android/reftag/ReftagBundle;Lcom/amazon/sitb/android/transition/TransitionTaskFactory;Lcom/amazon/sitb/android/services/ActivityService;Lcom/amazon/kindle/krx/content/ContentType;Lcom/amazon/sitb/android/services/OneClickSupportService;ZLcom/amazon/sitb/android/services/DialogService;Z)V

    iput-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->seriesBarPresenter:Lcom/amazon/sitb/android/UpsellBarPresenter;

    .line 272
    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->sampleBarViewManager:Lcom/amazon/sitb/android/view/ViewManager;

    iget-object v3, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->sampleBarPresenter:Lcom/amazon/sitb/android/UpsellBarPresenter;

    invoke-virtual {v2, v3}, Lcom/amazon/sitb/android/view/ViewManager;->setPresenter(Ljava/lang/Object;)V

    .line 273
    iget-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->seriesBarViewManager:Lcom/amazon/sitb/android/view/ViewManager;

    iget-object v3, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->seriesBarPresenter:Lcom/amazon/sitb/android/UpsellBarPresenter;

    invoke-virtual {v2, v3}, Lcom/amazon/sitb/android/view/ViewManager;->setPresenter(Ljava/lang/Object;)V

    .line 275
    new-instance v2, Lcom/amazon/sitb/android/view/samples/ShowSampleBarDecider;

    invoke-direct/range {p0 .. p1}, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->getRestrictionHandler(Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;)Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v3

    iget-object v4, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->upsellModel:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-direct {v2, v3, v4}, Lcom/amazon/sitb/android/view/samples/ShowSampleBarDecider;-><init>(Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;Lcom/amazon/sitb/android/model/UpsellModel;)V

    iput-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->showSampleBarDecider:Lcom/amazon/sitb/android/plugin/content/ShowBarDecider;

    .line 277
    new-instance v2, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;

    invoke-direct/range {p0 .. p1}, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->getRestrictionHandler(Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;)Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v3

    iget-object v4, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->upsellModel:Lcom/amazon/sitb/android/model/UpsellModel;

    .line 279
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;-><init>(Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;Lcom/amazon/sitb/android/model/UpsellModel;Lcom/amazon/kindle/krx/reader/IBookNavigator;)V

    iput-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->showSeriesBarDecider:Lcom/amazon/sitb/android/plugin/content/ShowBarDecider;

    .line 281
    new-instance v2, Lcom/amazon/sitb/android/plugin/content/ActionBarDecoration;

    iget-object v3, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->sampleBarViewManager:Lcom/amazon/sitb/android/view/ViewManager;

    iget-object v4, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->upsellModel:Lcom/amazon/sitb/android/model/UpsellModel;

    iget-object v5, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->showSampleBarDecider:Lcom/amazon/sitb/android/plugin/content/ShowBarDecider;

    sget-object v6, Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;->CENTER:Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amazon/sitb/android/plugin/content/ActionBarDecoration;-><init>(Lcom/amazon/sitb/android/view/ViewManager;Ljava/lang/Object;Lcom/amazon/sitb/android/plugin/content/ShowBarDecider;Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;)V

    iput-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->sampleBarDecoration:Lcom/amazon/kindle/krx/ui/IActionBarDecoration;

    .line 285
    new-instance v2, Lcom/amazon/sitb/android/plugin/content/ActionBarDecoration;

    iget-object v3, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->seriesBarViewManager:Lcom/amazon/sitb/android/view/ViewManager;

    iget-object v4, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->upsellModel:Lcom/amazon/sitb/android/model/UpsellModel;

    iget-object v5, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->showSeriesBarDecider:Lcom/amazon/sitb/android/plugin/content/ShowBarDecider;

    sget-object v6, Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;->CENTER:Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amazon/sitb/android/plugin/content/ActionBarDecoration;-><init>(Lcom/amazon/sitb/android/view/ViewManager;Ljava/lang/Object;Lcom/amazon/sitb/android/plugin/content/ShowBarDecider;Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;)V

    iput-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->seriesBarDecoration:Lcom/amazon/kindle/krx/ui/IActionBarDecoration;

    .line 290
    new-instance v2, Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getReaderActions()Lcom/amazon/sitb/android/ReaderActions;

    move-result-object v1

    iget-object v3, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->upsellModel:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-direct {v2, v1, v3}, Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;-><init>(Lcom/amazon/sitb/android/ReaderActions;Lcom/amazon/sitb/android/model/UpsellModel;)V

    iput-object v2, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->seriesSeekBarChangeListener:Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;

    .line 291
    new-instance v1, Lcom/amazon/sitb/android/plugin/content/ActionBarDecorationProvider;

    const/16 v2, 0x5f

    invoke-direct {v1, v2}, Lcom/amazon/sitb/android/plugin/content/ActionBarDecorationProvider;-><init>(I)V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->actionBarDecorationProvider:Lcom/amazon/sitb/android/plugin/content/ActionBarDecorationProvider;

    .line 292
    sget-object v3, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    iget-object v4, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->sampleBarDecoration:Lcom/amazon/kindle/krx/ui/IActionBarDecoration;

    invoke-virtual {v1, v3, v4}, Lcom/amazon/sitb/android/plugin/content/ActionBarDecorationProvider;->setDecoration(Lcom/amazon/kindle/krx/content/ContentType;Lcom/amazon/kindle/krx/ui/IActionBarDecoration;)V

    .line 293
    iget-object v1, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->actionBarDecorationProvider:Lcom/amazon/sitb/android/plugin/content/ActionBarDecorationProvider;

    sget-object v3, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    iget-object v4, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->seriesBarDecoration:Lcom/amazon/kindle/krx/ui/IActionBarDecoration;

    invoke-virtual {v1, v3, v4}, Lcom/amazon/sitb/android/plugin/content/ActionBarDecorationProvider;->setDecoration(Lcom/amazon/kindle/krx/content/ContentType;Lcom/amazon/kindle/krx/ui/IActionBarDecoration;)V

    .line 294
    new-instance v1, Lcom/amazon/sitb/android/plugin/content/SeekerDecoration;

    iget-object v3, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->seriesSeekBarChangeListener:Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;

    invoke-direct {v1, v3}, Lcom/amazon/sitb/android/plugin/content/SeekerDecoration;-><init>(Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;)V

    iput-object v1, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->seekerDecoration:Lcom/amazon/sitb/android/plugin/content/SeekerDecoration;

    .line 295
    new-instance v3, Lcom/amazon/sitb/android/plugin/content/SeekerDecorationProvider;

    invoke-direct {v3, v2, v1}, Lcom/amazon/sitb/android/plugin/content/SeekerDecorationProvider;-><init>(ILcom/amazon/sitb/android/plugin/content/SeekerDecoration;)V

    iput-object v3, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->seekerDecorationProvider:Lcom/amazon/sitb/android/plugin/content/SeekerDecorationProvider;

    .line 297
    iget-object v1, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->sampleBarViewFactoryNLN:Lcom/amazon/sitb/android/view/ViewFactory;

    invoke-interface {v1, v0}, Lcom/amazon/sitb/android/view/ViewFactory;->resolveDependencies(Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;)V

    .line 298
    iget-object v1, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->seriesBarViewFactoryNLN:Lcom/amazon/sitb/android/view/ViewFactory;

    invoke-interface {v1, v0}, Lcom/amazon/sitb/android/view/ViewFactory;->resolveDependencies(Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;)V

    .line 299
    iget-object v1, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->purchaseProtectionService:Lcom/amazon/sitb/android/purchase/IPurchaseProtectionService;

    invoke-interface {v1, v0}, Lcom/amazon/sitb/android/purchase/IPurchaseProtectionService;->resolveDependencies(Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;)V

    .line 301
    iget-object v1, v0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->upsellModel:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/sitb/android/model/UpsellModel;->start(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method private getRestrictionHandler(Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;)Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;
    .locals 0

    .line 308
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getActionBarDecorationProvider()Lcom/amazon/sitb/android/plugin/content/ActionBarDecorationProvider;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->actionBarDecorationProvider:Lcom/amazon/sitb/android/plugin/content/ActionBarDecorationProvider;

    return-object v0
.end method

.method public getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsService()Lcom/amazon/sitb/android/metrics/MetricsService;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getMetricsService()Lcom/amazon/sitb/android/metrics/MetricsService;

    move-result-object v0

    return-object v0
.end method

.method public getPluginMetadataService()Lcom/amazon/sitb/android/services/PluginMetadataService;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getPluginMetadataService()Lcom/amazon/sitb/android/services/PluginMetadataService;

    move-result-object v0

    return-object v0
.end method

.method public getPubSubEventsManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getPubSubEventsManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    return-object v0
.end method

.method public getSampleBarPresenter()Lcom/amazon/sitb/android/UpsellBarPresenter;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->sampleBarPresenter:Lcom/amazon/sitb/android/UpsellBarPresenter;

    return-object v0
.end method

.method public getSampleDeletionHandler()Lcom/amazon/sitb/android/plugin/content/SampleDeletionHandler;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->sampleDeletionHandler:Lcom/amazon/sitb/android/plugin/content/SampleDeletionHandler;

    return-object v0
.end method

.method public getSeekerDecorationProvider()Lcom/amazon/sitb/android/plugin/content/SeekerDecorationProvider;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->seekerDecorationProvider:Lcom/amazon/sitb/android/plugin/content/SeekerDecorationProvider;

    return-object v0
.end method

.method public getSeriesBarPresenter()Lcom/amazon/sitb/android/UpsellBarPresenter;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->seriesBarPresenter:Lcom/amazon/sitb/android/UpsellBarPresenter;

    return-object v0
.end method

.method public getUpsellModel()Lcom/amazon/sitb/android/model/UpsellModel;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->upsellModel:Lcom/amazon/sitb/android/model/UpsellModel;

    return-object v0
.end method

.method public getUserRoleService()Lcom/amazon/sitb/android/services/UserRoleService;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->applicationContext:Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getUserRoleService()Lcom/amazon/sitb/android/services/UserRoleService;

    move-result-object v0

    return-object v0
.end method
