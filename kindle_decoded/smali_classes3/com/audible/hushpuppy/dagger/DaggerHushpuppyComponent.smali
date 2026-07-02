.class public final Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;
.super Ljava/lang/Object;
.source "DaggerHushpuppyComponent.java"

# interfaces
.implements Lcom/audible/hushpuppy/dagger/HushpuppyComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;
    }
.end annotation


# instance fields
.field private actionBarUpsellControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ActionBarUpsellController;",
            ">;"
        }
    .end annotation
.end field

.field private applicationActivityLifeCycleControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;",
            ">;"
        }
    .end annotation
.end field

.field private audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

.field private audiblePlayerMetricsHelperProvider:Ljavax/inject/Provider;

.field private audiblePlayerMetricsReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;",
            ">;"
        }
    .end annotation
.end field

.field private autoDisappearTimeOutControllerProvider:Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController_Factory;

.field private cachedPricesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;",
            ">;"
        }
    .end annotation
.end field

.field private contentUpdateHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ContentUpdateHandler;",
            ">;"
        }
    .end annotation
.end field

.field private currencyFormatterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/common/CurrencyFormatter;",
            ">;"
        }
    .end annotation
.end field

.field private debugDbDumpControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/DebugDbDumpController;",
            ">;"
        }
    .end annotation
.end field

.field private debugModelDumpControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/DebugModelDumpController;",
            ">;"
        }
    .end annotation
.end field

.field private dialogManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/dialog/DialogManager;",
            ">;"
        }
    .end annotation
.end field

.field private highlightColorModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;",
            ">;"
        }
    .end annotation
.end field

.field private hushpuppyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/HushpuppyController;",
            ">;"
        }
    .end annotation
.end field

.field private hushpuppyPerformanceUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;",
            ">;"
        }
    .end annotation
.end field

.field private inBookChromeMetricsReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;",
            ">;"
        }
    .end annotation
.end field

.field private kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private kindleReaderSDKProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;"
        }
    .end annotation
.end field

.field private krxCompanionMappingClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;",
            ">;"
        }
    .end annotation
.end field

.field private libraryDownloadControllerProvider:Lcom/audible/hushpuppy/controller/LibraryDownloadController_Factory;

.field private locationSeekerControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/LocationSeekerController;",
            ">;"
        }
    .end annotation
.end field

.field private mainPlayerNarrationSpeedButtonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;",
            ">;"
        }
    .end annotation
.end field

.field private narrationRateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/player/NarrationRate;",
            ">;"
        }
    .end annotation
.end field

.field private navigationListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/NavigationListener;",
            ">;"
        }
    .end annotation
.end field

.field private paymentFlowsFeatureTogglerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureTogglerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private playerStateChangeListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private playerStateListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private priceClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/price/PriceClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideAbstractPlatformSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;",
            ">;"
        }
    .end annotation
.end field

.field private provideAbstractUserRegistrationHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/registration/IUserRegistrationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private provideAudibleServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;"
        }
    .end annotation
.end field

.field private provideAudioDownloadHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;",
            ">;"
        }
    .end annotation
.end field

.field private provideAudioDownloadedFileManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideAudioPurchaseRequestDelayedHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/IDelayRequestHandler<",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/hushpuppy/PurchaseAudioModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideAudiobookMetaDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/IHushpuppyAudiobookMetadataProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideAudiobookSwitcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;",
            ">;"
        }
    .end annotation
.end field

.field private provideAutoDownloadSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/autodownload/AbstractAutoDownloadSetting;",
            ">;"
        }
    .end annotation
.end field

.field private provideChapterNavigatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ChapterController;",
            ">;"
        }
    .end annotation
.end field

.field private provideCompanionMappingClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/network/client/ICompanionMappingClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideCompanionMappingSQLiteOpenHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;",
            ">;"
        }
    .end annotation
.end field

.field private provideConnectivityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private provideDownloadManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideEndpointFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/pfm/endpoint/IEndpointFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideEventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private provideExtensionsFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideFullPlayerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideHushpuppyModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;"
        }
    .end annotation
.end field

.field private provideHushpuppySettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;",
            ">;"
        }
    .end annotation
.end field

.field private provideHushpuppyStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideLegacyDownloadManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideLegacyHushpuppyStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideLibraryControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ILibraryController;",
            ">;"
        }
    .end annotation
.end field

.field private provideMainPlayerDecorationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;",
            ">;"
        }
    .end annotation
.end field

.field private provideMetricProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/metric/IMetricLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideOwnershipManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;",
            ">;"
        }
    .end annotation
.end field

.field private providePaymentFlowsFeatureTogglerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;",
            ">;"
        }
    .end annotation
.end field

.field private providePersistentPlayerDecorationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;",
            ">;"
        }
    .end annotation
.end field

.field private providePlayerViewManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private providePositionMarkerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/IPositionMarker;",
            ">;"
        }
    .end annotation
.end field

.field private provideReadAlongModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IReadAlongModel;",
            ">;"
        }
    .end annotation
.end field

.field private provideReadAlongPolicyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/readalong/IReadAlongPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private provideReaderManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IReaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideReaderUIManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/IReaderUIManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideRelationshipManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideRestrictionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private provideServiceCallbackControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;",
            ">;"
        }
    .end annotation
.end field

.field private provideSyncFileManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/ISyncFileManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideSyncMappingStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/ISyncMappingStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideToaRedeemClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideUpsellHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/IUpsellHelper;",
            ">;"
        }
    .end annotation
.end field

.field private provideUpsellModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/UpsellModelFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideUpsellModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IUpsellModel;",
            ">;"
        }
    .end annotation
.end field

.field private provideUpsellWritableModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
            ">;"
        }
    .end annotation
.end field

.field private provideUserModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IUserModel;",
            ">;"
        }
    .end annotation
.end field

.field private providesAsinPairBatchControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IAsinPairBatchController;",
            ">;"
        }
    .end annotation
.end field

.field private providesAsinPairBatchStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IAsinPairBatchStorage;",
            ">;"
        }
    .end annotation
.end field

.field private providesBuyAudioClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;",
            ">;"
        }
    .end annotation
.end field

.field private providesCacheableRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/pfm/repository/ICacheableRepository<",
            "Lcom/audible/pfm/domain/DevicePlatformConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private providesConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private providesCoverArtManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesDbScalingRelationshipManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IDBScalingRelationshipManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesDebugSharedPreferenesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private providesEndpointControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/pfm/controller/IEndpointController;",
            ">;"
        }
    .end annotation
.end field

.field private providesJitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/IJitTutorialProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesLegacyContentUpdateHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ILegacyContentUpdateHelper;",
            ">;"
        }
    .end annotation
.end field

.field private providesListeningStatsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesMobileWeblabHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;",
            ">;"
        }
    .end annotation
.end field

.field private providesPlayerStateContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;",
            ">;"
        }
    .end annotation
.end field

.field private providesReaderStateContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;",
            ">;"
        }
    .end annotation
.end field

.field private providesRelationshipCommandFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IRelationshipCommandFactory;",
            ">;"
        }
    .end annotation
.end field

.field private providesRelationshipRequestStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IRelationshipRequestStorage;",
            ">;"
        }
    .end annotation
.end field

.field private providesRelationshipStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IRelationshipStorage;",
            ">;"
        }
    .end annotation
.end field

.field private providesRelationshipSyncDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;",
            ">;"
        }
    .end annotation
.end field

.field private providesRelationshipUpdateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IRelationshipUpdateController;",
            ">;"
        }
    .end annotation
.end field

.field private providesSampleSyncFileDownloadClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/network/common/ISampleSyncFileDownloadClient;",
            ">;"
        }
    .end annotation
.end field

.field private providesSleepTimerControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ISleepTimerController;",
            ">;"
        }
    .end annotation
.end field

.field private providesTodoEventHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private providesUpsellWebviewProvider:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesUpsellWebviewFactory;

.field private providesWorkerHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/system/IWorkerHandler;",
            ">;"
        }
    .end annotation
.end field

.field private readAlongControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ReadAlongController;",
            ">;"
        }
    .end annotation
.end field

.field private readAlongModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/ReadAlongModel;",
            ">;"
        }
    .end annotation
.end field

.field private readerActivityLifecycleControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;",
            ">;"
        }
    .end annotation
.end field

.field private readerNavigationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ReaderNavigationController;",
            ">;"
        }
    .end annotation
.end field

.field private readerStateChangeListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private readerStateListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private seekControllerProvider:Lcom/audible/hushpuppy/controller/SeekController_Factory;

.field private startActionsUpsellControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/StartActionsUpsellController;",
            ">;"
        }
    .end annotation
.end field

.field private startActionsWidgetProvider:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget_Factory;

.field private statsMediaItemFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;",
            ">;"
        }
    .end annotation
.end field

.field private switchToReadingCommandItemProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;",
            ">;"
        }
    .end annotation
.end field

.field private upgradeWithAudioCommandItemProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;",
            ">;"
        }
    .end annotation
.end field

.field private upsellLogicProvider:Lcom/audible/hushpuppy/view/common/UpsellLogic_Factory;

.field private userControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/UserController;",
            ">;"
        }
    .end annotation
.end field

.field private viewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ViewController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)V
    .locals 0

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->initialize(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)V

    .line 481
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->initialize2(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$1;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;-><init>(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)V

    return-void
.end method

.method public static builder()Lcom/audible/hushpuppy/dagger/HushpuppyComponent$Builder;
    .locals 2

    .line 485
    new-instance v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;-><init>(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$1;)V

    return-object v0
.end method

.method private getAudibleTOAInfoModalJavaScriptBridge()Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->toaWebViewUpsellController()Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;

    move-result-object v0

    .line 606
    invoke-static {v0}, Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge_Factory;->newAudibleTOAInfoModalJavaScriptBridge(Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;)Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;

    move-result-object v0

    return-object v0
.end method

.method private getForegroundStateController()Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;
    .locals 3

    .line 542
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesReaderStateContextProvider:Ljavax/inject/Provider;

    .line 543
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesWorkerHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/hushpuppy/common/system/IWorkerHandler;

    invoke-direct {v0, v1, v2}, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;-><init>(Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;Lcom/audible/hushpuppy/common/system/IWorkerHandler;)V

    return-object v0
.end method

.method private getHighlightTextDecoratorProvider()Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;
    .locals 10

    .line 556
    new-instance v9, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;

    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideReaderManagerProvider:Ljavax/inject/Provider;

    .line 557
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/kindle/krx/reader/IReaderManager;

    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideReaderUIManagerProvider:Ljavax/inject/Provider;

    .line 558
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideReadAlongModelProvider:Ljavax/inject/Provider;

    .line 559
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/audible/hushpuppy/model/read/IReadAlongModel;

    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    .line 560
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->highlightColorModeProvider:Ljavax/inject/Provider;

    .line 561
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;

    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->dialogManagerProvider:Ljavax/inject/Provider;

    .line 562
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/audible/hushpuppy/common/dialog/DialogManager;

    iget-object v7, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providePlayerViewManagerProvider:Ljavax/inject/Provider;

    .line 564
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;-><init>(Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/kindle/krx/ui/IReaderUIManager;Lcom/audible/hushpuppy/model/read/IReadAlongModel;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;Lcom/audible/hushpuppy/common/dialog/DialogManager;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;)V

    return-object v9
.end method

.method private getLegacyHushpuppyStorage()Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;
    .locals 2

    .line 510
    new-instance v0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object v0
.end method

.method private getLibraryContextualActionButtonProvider()Lcom/audible/hushpuppy/view/library/LibraryContextualActionButtonProvider;
    .locals 3

    .line 520
    new-instance v0, Lcom/audible/hushpuppy/view/library/LibraryContextualActionButtonProvider;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->libraryDownloadController()Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/audible/hushpuppy/view/library/LibraryContextualActionButtonProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/LibraryDownloadController;)V

    return-object v0
.end method

.method private getLibraryLeftNavProvider()Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;
    .locals 6

    .line 524
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 526
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/greenrobot/event/EventBus;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideLegacyHushpuppyStorageProvider:Ljavax/inject/Provider;

    .line 527
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudiobookSwitcherProvider:Ljavax/inject/Provider;

    .line 528
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    iget-object v4, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideRestrictionHandlerProvider:Ljavax/inject/Provider;

    .line 529
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    iget-object v5, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providePaymentFlowsFeatureTogglerProvider:Ljavax/inject/Provider;

    .line 530
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;

    .line 524
    invoke-static/range {v0 .. v5}, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider_Factory;->newLibraryLeftNavProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;)Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;

    move-result-object v0

    return-object v0
.end method

.method private getLibraryPersistentPlayerProvider()Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providePlayerViewManagerProvider:Ljavax/inject/Provider;

    .line 516
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    .line 515
    invoke-static {v0}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_Factory;->newLibraryPersistentPlayerProvider(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;)Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;

    move-result-object v0

    .line 514
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectLibraryPersistentPlayerProvider(Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;)Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;

    return-object v0
.end method

.method private getPlaySelectionProvider()Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;
    .locals 5

    .line 587
    new-instance v0, Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    .line 589
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->locationSeekerControllerProvider:Ljavax/inject/Provider;

    .line 590
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/audible/hushpuppy/controller/LocationSeekerController;

    iget-object v4, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 591
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/greenrobot/event/EventBus;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lde/greenrobot/event/EventBus;)V

    return-object v0
.end method

.method private getPlaybackMetricsLoggerController()Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;
    .locals 5

    .line 497
    new-instance v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 499
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/greenrobot/event/EventBus;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    .line 500
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    iget-object v4, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideMetricProvider:Ljavax/inject/Provider;

    .line 501
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/common/metric/IMetricLogger;)V

    return-object v0
.end method

.method private getPlaybackPositionController()Lcom/audible/hushpuppy/controller/audible/readingstream/PlaybackPositionController;
    .locals 2

    .line 534
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlaybackPositionController;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesPlayerStateContextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/controller/audible/readingstream/PlaybackPositionController;-><init>(Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;)V

    return-object v0
.end method

.method private getPlayerStateController()Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateController;
    .locals 2

    .line 538
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateController;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesPlayerStateContextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateController;-><init>(Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;)V

    return-object v0
.end method

.method private getReaderLeftNavProvider()Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;
    .locals 9

    .line 595
    new-instance v8, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    .line 597
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 598
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getUpsellLogic()Lcom/audible/hushpuppy/view/common/UpsellLogic;

    move-result-object v3

    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudiobookSwitcherProvider:Ljavax/inject/Provider;

    .line 599
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideRestrictionHandlerProvider:Ljavax/inject/Provider;

    .line 600
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->inBookChromeMetricsReporterProvider:Ljavax/inject/Provider;

    .line 601
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providePaymentFlowsFeatureTogglerProvider:Ljavax/inject/Provider;

    .line 602
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/view/common/UpsellLogic;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;)V

    return-object v8
.end method

.method private getReaderModeChangeListener()Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;
    .locals 4

    .line 505
    new-instance v0, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    .line 506
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/greenrobot/event/EventBus;

    invoke-direct {v0, v1, v2, v3}, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;-><init>(Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;)V

    return-object v0
.end method

.method private getReaderModeController()Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderModeController;
    .locals 2

    .line 547
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderModeController;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesReaderStateContextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderModeController;-><init>(Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;)V

    return-object v0
.end method

.method private getSamplePlaybackController()Lcom/audible/hushpuppy/controller/SamplePlaybackController;
    .locals 5

    .line 489
    new-instance v0, Lcom/audible/hushpuppy/controller/SamplePlaybackController;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    .line 490
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 491
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/greenrobot/event/EventBus;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    .line 492
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    iget-object v4, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/audible/hushpuppy/controller/SamplePlaybackController;-><init>(Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object v0
.end method

.method private getScreenOnOffReceiver()Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;
    .locals 3

    .line 551
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesReaderStateContextProvider:Ljavax/inject/Provider;

    .line 552
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesWorkerHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/hushpuppy/common/system/IWorkerHandler;

    invoke-direct {v0, v1, v2}, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;-><init>(Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;Lcom/audible/hushpuppy/common/system/IWorkerHandler;)V

    return-object v0
.end method

.method private getSeekController()Lcom/audible/hushpuppy/controller/SeekController;
    .locals 3

    .line 611
    new-instance v0, Lcom/audible/hushpuppy/controller/SeekController;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    .line 612
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-direct {v0, v1, v2}, Lcom/audible/hushpuppy/controller/SeekController;-><init>(Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)V

    return-object v0
.end method

.method private getStartActionsProvider()Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 579
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelper()Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    move-result-object v1

    .line 578
    invoke-static {v0, v1}, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider_Factory;->newStartActionsProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;

    move-result-object v0

    .line 577
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectStartActionsProvider(Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;)Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;

    return-object v0
.end method

.method private getUpsellLogic()Lcom/audible/hushpuppy/view/common/UpsellLogic;
    .locals 7

    .line 568
    new-instance v6, Lcom/audible/hushpuppy/view/common/UpsellLogic;

    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    .line 569
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideLegacyHushpuppyStorageProvider:Ljavax/inject/Provider;

    .line 570
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideRestrictionHandlerProvider:Ljavax/inject/Provider;

    .line 571
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    iget-object v4, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providePaymentFlowsFeatureTogglerProvider:Ljavax/inject/Provider;

    .line 573
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/audible/hushpuppy/view/common/UpsellLogic;-><init>(Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;)V

    return-object v6
.end method

.method private getUpsellPlayerProvider()Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;
    .locals 1

    .line 583
    invoke-static {}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider_Factory;->newUpsellPlayerProvider()Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectUpsellPlayerProvider(Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;)Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;

    return-object v0
.end method

.method private initialize(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)V
    .locals 17

    move-object/from16 v0, p0

    .line 617
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$100(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 621
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 620
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideEndpointFactoryFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideEndpointFactoryFactory;

    move-result-object v1

    .line 619
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEndpointFactoryProvider:Ljavax/inject/Provider;

    .line 624
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideEventBusFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideEventBusFactory;

    move-result-object v1

    .line 623
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 628
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 627
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideContextFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideContextFactory;

    move-result-object v1

    .line 626
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideContextProvider:Ljavax/inject/Provider;

    .line 632
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideContextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 631
    invoke-static {v1, v2, v3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideExtensionsFactoryFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideExtensionsFactoryFactory;

    move-result-object v1

    .line 630
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideExtensionsFactoryProvider:Ljavax/inject/Provider;

    .line 636
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideContextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideExtensionsFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 635
    invoke-static {v1, v2, v3, v4}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideRestrictionHandlerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideRestrictionHandlerFactory;

    move-result-object v1

    .line 634
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideRestrictionHandlerProvider:Ljavax/inject/Provider;

    .line 643
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 642
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideReaderManagerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideReaderManagerFactory;

    move-result-object v1

    .line 641
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideReaderManagerProvider:Ljavax/inject/Provider;

    .line 647
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideRestrictionHandlerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideReaderManagerProvider:Ljavax/inject/Provider;

    .line 646
    invoke-static {v1, v2, v3, v4, v5}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideHushpuppyModelFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideHushpuppyModelFactory;

    move-result-object v1

    .line 645
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    .line 655
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    .line 654
    invoke-static {v1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideReadAlongPolicyFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideReadAlongPolicyFactory;

    move-result-object v1

    .line 653
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideReadAlongPolicyProvider:Ljavax/inject/Provider;

    .line 656
    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideReaderManagerProvider:Ljavax/inject/Provider;

    .line 658
    invoke-static {v2, v3, v1, v4}, Lcom/audible/hushpuppy/model/write/ReadAlongModel_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/model/write/ReadAlongModel_Factory;

    move-result-object v1

    .line 657
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->readAlongModelProvider:Ljavax/inject/Provider;

    .line 666
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->readAlongModelProvider:Ljavax/inject/Provider;

    .line 665
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideReadAlongModelFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideReadAlongModelFactory;

    move-result-object v1

    .line 664
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideReadAlongModelProvider:Ljavax/inject/Provider;

    .line 670
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 669
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideReaderUIManagerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideReaderUIManagerFactory;

    move-result-object v1

    .line 668
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideReaderUIManagerProvider:Ljavax/inject/Provider;

    .line 674
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 673
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideLegacyHushpuppyStorageFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideLegacyHushpuppyStorageFactory;

    move-result-object v1

    .line 672
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideLegacyHushpuppyStorageProvider:Ljavax/inject/Provider;

    .line 678
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 677
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideCompanionMappingSQLiteOpenHelperFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideCompanionMappingSQLiteOpenHelperFactory;

    move-result-object v1

    .line 676
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideCompanionMappingSQLiteOpenHelperProvider:Ljavax/inject/Provider;

    .line 682
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideCompanionMappingSQLiteOpenHelperProvider:Ljavax/inject/Provider;

    .line 681
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesConfigurationFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesConfigurationFactory;

    move-result-object v1

    .line 680
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesConfigurationProvider:Ljavax/inject/Provider;

    .line 686
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideCompanionMappingSQLiteOpenHelperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesConfigurationProvider:Ljavax/inject/Provider;

    .line 685
    invoke-static {v1, v2, v3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipStorageFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipStorageFactory;

    move-result-object v1

    .line 684
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesRelationshipStorageProvider:Ljavax/inject/Provider;

    .line 692
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideCompanionMappingSQLiteOpenHelperProvider:Ljavax/inject/Provider;

    .line 691
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipRequestStorageFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipRequestStorageFactory;

    move-result-object v1

    .line 690
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesRelationshipRequestStorageProvider:Ljavax/inject/Provider;

    .line 696
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideContextProvider:Ljavax/inject/Provider;

    .line 695
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDebugSharedPreferenesFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDebugSharedPreferenesFactory;

    move-result-object v1

    .line 694
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesDebugSharedPreferenesProvider:Ljavax/inject/Provider;

    .line 697
    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideContextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    .line 698
    invoke-static {v2, v1, v3}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    .line 705
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEndpointFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 704
    invoke-static {v1, v2, v3, v4}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideCompanionMappingClientFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideCompanionMappingClientFactory;

    move-result-object v1

    .line 703
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideCompanionMappingClientProvider:Ljavax/inject/Provider;

    .line 712
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v2

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideCompanionMappingClientProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesRelationshipStorageProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesConfigurationProvider:Ljavax/inject/Provider;

    .line 711
    invoke-static/range {v2 .. v7}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipCommandFactoryFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipCommandFactoryFactory;

    move-result-object v1

    .line 710
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesRelationshipCommandFactoryProvider:Ljavax/inject/Provider;

    .line 721
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesRelationshipRequestStorageProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesRelationshipCommandFactoryProvider:Ljavax/inject/Provider;

    .line 720
    invoke-static {v1, v2, v3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipUpdateControllerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipUpdateControllerFactory;

    move-result-object v1

    .line 719
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesRelationshipUpdateControllerProvider:Ljavax/inject/Provider;

    .line 727
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideContextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesRelationshipStorageProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesRelationshipUpdateControllerProvider:Ljavax/inject/Provider;

    .line 726
    invoke-static {v1, v2, v3, v4, v5}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDbScalingRelationshipManagerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDbScalingRelationshipManagerFactory;

    move-result-object v1

    .line 725
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesDbScalingRelationshipManagerProvider:Ljavax/inject/Provider;

    .line 735
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideCompanionMappingSQLiteOpenHelperProvider:Ljavax/inject/Provider;

    .line 734
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideSyncMappingStorageFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideSyncMappingStorageFactory;

    move-result-object v1

    .line 733
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideSyncMappingStorageProvider:Ljavax/inject/Provider;

    .line 739
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideSyncMappingStorageProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideCompanionMappingClientProvider:Ljavax/inject/Provider;

    .line 738
    invoke-static {v1, v2, v3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideSyncFileManagerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideSyncFileManagerFactory;

    move-result-object v1

    .line 737
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideSyncFileManagerProvider:Ljavax/inject/Provider;

    .line 745
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesDbScalingRelationshipManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideSyncFileManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesConfigurationProvider:Ljavax/inject/Provider;

    .line 744
    invoke-static {v1, v2, v3, v4}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideHushpuppyStorageFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideHushpuppyStorageFactory;

    move-result-object v1

    .line 743
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyStorageProvider:Ljavax/inject/Provider;

    .line 752
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 751
    invoke-static {v1, v2, v3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesSampleSyncFileDownloadClientFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesSampleSyncFileDownloadClientFactory;

    move-result-object v1

    .line 750
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesSampleSyncFileDownloadClientProvider:Ljavax/inject/Provider;

    .line 756
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesDebugSharedPreferenesProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    .line 755
    invoke-static {v1, v2, v3, v4}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesMobileWeblabHandlerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesMobileWeblabHandlerFactory;

    move-result-object v1

    .line 754
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesMobileWeblabHandlerProvider:Ljavax/inject/Provider;

    .line 763
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v2

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideContextProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideExtensionsFactoryProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideLegacyHushpuppyStorageProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyStorageProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesSampleSyncFileDownloadClientProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesMobileWeblabHandlerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    iget-object v12, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 762
    invoke-static/range {v2 .. v12}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudibleServiceFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudibleServiceFactory;

    move-result-object v1

    .line 761
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    .line 777
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideExtensionsFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 776
    invoke-static {v1, v2, v3, v4, v5}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudiobookSwitcherFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudiobookSwitcherFactory;

    move-result-object v1

    .line 775
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudiobookSwitcherProvider:Ljavax/inject/Provider;

    .line 782
    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideReaderUIManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 784
    invoke-static {v2, v3, v4, v1}, Lcom/audible/hushpuppy/common/dialog/DialogManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/common/dialog/DialogManager_Factory;

    move-result-object v1

    .line 783
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->dialogManagerProvider:Ljavax/inject/Provider;

    .line 791
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMetricFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMetricFactory;

    move-result-object v1

    .line 790
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideMetricProvider:Ljavax/inject/Provider;

    .line 795
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideMetricProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 794
    invoke-static {v1, v2, v3, v4, v5}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideChapterNavigatorFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideChapterNavigatorFactory;

    move-result-object v1

    .line 793
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideChapterNavigatorProvider:Ljavax/inject/Provider;

    .line 803
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v2

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideChapterNavigatorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 802
    invoke-static/range {v2 .. v7}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesSleepTimerControllerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesSleepTimerControllerFactory;

    move-result-object v1

    .line 801
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesSleepTimerControllerProvider:Ljavax/inject/Provider;

    .line 809
    iget-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    .line 811
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/controller/NavigationListener_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/NavigationListener_Factory;

    move-result-object v1

    .line 810
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->navigationListenerProvider:Ljavax/inject/Provider;

    .line 812
    iget-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    .line 813
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/controller/SeekController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/SeekController_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->seekControllerProvider:Lcom/audible/hushpuppy/controller/SeekController_Factory;

    .line 814
    iget-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 815
    invoke-static {v1}, Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils_Factory;->create(Ljavax/inject/Provider;)Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v14

    iput-object v14, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->hushpuppyPerformanceUtilsProvider:Ljavax/inject/Provider;

    .line 816
    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideReadAlongModelProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideReaderManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideReaderUIManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->dialogManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesSleepTimerControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->navigationListenerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->seekControllerProvider:Lcom/audible/hushpuppy/controller/SeekController_Factory;

    iget-object v12, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    .line 818
    invoke-static/range {v2 .. v14}, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;

    move-result-object v1

    .line 817
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->readAlongControllerProvider:Ljavax/inject/Provider;

    .line 835
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideReaderManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    .line 834
    invoke-static {v1, v2, v3, v4, v5}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidePositionMarkerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidePositionMarkerFactory;

    move-result-object v1

    .line 833
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providePositionMarkerProvider:Ljavax/inject/Provider;

    .line 840
    iget-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 841
    invoke-static {v1}, Lcom/audible/hushpuppy/service/upsell/price/CachedPrices_Factory;->create(Ljavax/inject/Provider;)Lcom/audible/hushpuppy/service/upsell/price/CachedPrices_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->cachedPricesProvider:Ljavax/inject/Provider;

    .line 842
    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEndpointFactoryProvider:Ljavax/inject/Provider;

    .line 844
    invoke-static {v1, v2, v3}, Lcom/audible/hushpuppy/service/upsell/price/PriceClient_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/service/upsell/price/PriceClient_Factory;

    move-result-object v1

    .line 843
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v11

    iput-object v11, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->priceClientProvider:Ljavax/inject/Provider;

    .line 846
    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideReadAlongModelProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideReaderManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->seekControllerProvider:Lcom/audible/hushpuppy/controller/SeekController_Factory;

    iget-object v9, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providePositionMarkerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    .line 848
    invoke-static/range {v2 .. v11}, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;

    move-result-object v1

    .line 847
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->hushpuppyControllerProvider:Ljavax/inject/Provider;

    .line 862
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 861
    invoke-static {v1, v2, v3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellModelFactoryFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellModelFactoryFactory;

    move-result-object v1

    .line 860
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideUpsellModelFactoryProvider:Ljavax/inject/Provider;

    .line 868
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideUpsellModelFactoryProvider:Ljavax/inject/Provider;

    .line 867
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellModelFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellModelFactory;

    move-result-object v1

    .line 866
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v7

    iput-object v7, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideUpsellModelProvider:Ljavax/inject/Provider;

    .line 869
    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->readAlongControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->hushpuppyControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providePositionMarkerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->readAlongModelProvider:Ljavax/inject/Provider;

    .line 871
    invoke-static/range {v2 .. v10}, Lcom/audible/hushpuppy/controller/ReaderNavigationController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/ReaderNavigationController_Factory;

    move-result-object v1

    .line 870
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->readerNavigationControllerProvider:Ljavax/inject/Provider;

    .line 881
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$100(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 882
    iget-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideContextProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    .line 884
    invoke-static {v1, v2, v3, v4, v5}, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController_Factory;

    move-result-object v1

    .line 883
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->readerActivityLifecycleControllerProvider:Ljavax/inject/Provider;

    .line 890
    iget-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 892
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController_Factory;

    move-result-object v1

    .line 891
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->applicationActivityLifeCycleControllerProvider:Ljavax/inject/Provider;

    .line 897
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideExtensionsFactoryProvider:Ljavax/inject/Provider;

    .line 896
    invoke-static {v1, v2, v3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideOwnershipManagerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideOwnershipManagerFactory;

    move-result-object v1

    .line 895
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideOwnershipManagerProvider:Ljavax/inject/Provider;

    .line 903
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideExtensionsFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 902
    invoke-static {v1, v2, v3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAbstractPlatformSettingFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAbstractPlatformSettingFactory;

    move-result-object v1

    .line 901
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAbstractPlatformSettingProvider:Ljavax/inject/Provider;

    .line 909
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideExtensionsFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 908
    invoke-static {v1, v2, v3, v4}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAbstractUserRegistrationHandlerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAbstractUserRegistrationHandlerFactory;

    move-result-object v1

    .line 907
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAbstractUserRegistrationHandlerProvider:Ljavax/inject/Provider;

    .line 913
    iget-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideContextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideReadAlongModelProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideUpsellModelProvider:Ljavax/inject/Provider;

    .line 915
    invoke-static {v1, v2, v3, v4}, Lcom/audible/hushpuppy/controller/DebugModelDumpController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/DebugModelDumpController_Factory;

    move-result-object v1

    .line 914
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->debugModelDumpControllerProvider:Ljavax/inject/Provider;

    .line 920
    iget-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideContextProvider:Ljavax/inject/Provider;

    .line 921
    invoke-static {v1}, Lcom/audible/hushpuppy/controller/DebugDbDumpController_Factory;->create(Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/DebugDbDumpController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->debugDbDumpControllerProvider:Ljavax/inject/Provider;

    .line 925
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v2

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideContextProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideLegacyHushpuppyStorageProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyStorageProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesMobileWeblabHandlerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    .line 924
    invoke-static/range {v2 .. v8}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudiobookMetaDataProviderFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudiobookMetaDataProviderFactory;

    move-result-object v1

    .line 923
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudiobookMetaDataProvider:Ljavax/inject/Provider;

    .line 935
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideContextProvider:Ljavax/inject/Provider;

    .line 934
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideHushpuppySettingsFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideHushpuppySettingsFactory;

    move-result-object v1

    .line 933
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppySettingsProvider:Ljavax/inject/Provider;

    .line 939
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideSyncFileManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 938
    invoke-static {v1, v2, v3, v4}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioDownloadedFileManagerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioDownloadedFileManagerFactory;

    move-result-object v1

    .line 937
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudioDownloadedFileManagerProvider:Ljavax/inject/Provider;

    .line 946
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v2

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideLegacyHushpuppyStorageProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyStorageProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudiobookMetaDataProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideOwnershipManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppySettingsProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideRestrictionHandlerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAbstractPlatformSettingProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudioDownloadedFileManagerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesMobileWeblabHandlerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    move-object/from16 v16, v1

    .line 945
    invoke-static/range {v2 .. v16}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideLibraryControllerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideLibraryControllerFactory;

    move-result-object v1

    .line 944
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideLibraryControllerProvider:Ljavax/inject/Provider;

    .line 964
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideUpsellModelFactoryProvider:Ljavax/inject/Provider;

    .line 963
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellWritableModelFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellWritableModelFactory;

    move-result-object v1

    .line 962
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideUpsellWritableModelProvider:Ljavax/inject/Provider;

    .line 968
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 967
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUserModelFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUserModelFactory;

    move-result-object v1

    .line 966
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v5

    iput-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideUserModelProvider:Ljavax/inject/Provider;

    .line 969
    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideUpsellWritableModelProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    iget-object v7, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->priceClientProvider:Ljavax/inject/Provider;

    .line 971
    invoke-static/range {v2 .. v8}, Lcom/audible/hushpuppy/controller/ViewController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/ViewController_Factory;

    move-result-object v1

    .line 970
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->viewControllerProvider:Ljavax/inject/Provider;

    .line 982
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->viewControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 981
    invoke-static {v1, v2, v3, v4, v5}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidePlayerViewManagerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidePlayerViewManagerFactory;

    move-result-object v1

    .line 980
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providePlayerViewManagerProvider:Ljavax/inject/Provider;

    .line 988
    invoke-static {}, Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureTogglerImpl_Factory;->create()Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureTogglerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->paymentFlowsFeatureTogglerImplProvider:Ljavax/inject/Provider;

    .line 992
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->paymentFlowsFeatureTogglerImplProvider:Ljavax/inject/Provider;

    .line 991
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidePaymentFlowsFeatureTogglerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidePaymentFlowsFeatureTogglerFactory;

    move-result-object v1

    .line 990
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providePaymentFlowsFeatureTogglerProvider:Ljavax/inject/Provider;

    .line 996
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v2

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideExtensionsFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesMobileWeblabHandlerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    iget-object v8, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 995
    invoke-static/range {v2 .. v8}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioDownloadHandlerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioDownloadHandlerFactory;

    move-result-object v1

    .line 994
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudioDownloadHandlerProvider:Ljavax/inject/Provider;

    .line 1006
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    .line 1005
    invoke-static {v1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesWorkerHandlerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesWorkerHandlerFactory;

    move-result-object v1

    .line 1004
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesWorkerHandlerProvider:Ljavax/inject/Provider;

    .line 1010
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesWorkerHandlerProvider:Ljavax/inject/Provider;

    .line 1009
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesPlayerStateContextFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesPlayerStateContextFactory;

    move-result-object v1

    .line 1008
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesPlayerStateContextProvider:Ljavax/inject/Provider;

    .line 1014
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 1013
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesReaderStateContextFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesReaderStateContextFactory;

    move-result-object v1

    .line 1012
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesReaderStateContextProvider:Ljavax/inject/Provider;

    .line 1018
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    .line 1017
    invoke-static {v1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipSyncDataFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipSyncDataFactory;

    move-result-object v1

    .line 1016
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesRelationshipSyncDataProvider:Ljavax/inject/Provider;

    .line 1019
    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesPlayerStateContextProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesReaderStateContextProvider:Ljavax/inject/Provider;

    .line 1021
    invoke-static {v2, v3, v4, v5, v1}, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener_Factory;

    move-result-object v1

    .line 1020
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->playerStateListenerProvider:Ljavax/inject/Provider;

    .line 1027
    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesPlayerStateContextProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesReaderStateContextProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesRelationshipSyncDataProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    .line 1029
    invoke-static/range {v2 .. v7}, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener_Factory;

    move-result-object v1

    .line 1028
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->readerStateListenerProvider:Ljavax/inject/Provider;

    .line 1039
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEndpointFactoryProvider:Ljavax/inject/Provider;

    .line 1038
    invoke-static {v1, v2, v3, v4}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesListeningStatsManagerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesListeningStatsManagerFactory;

    move-result-object v1

    .line 1037
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesListeningStatsManagerProvider:Ljavax/inject/Provider;

    .line 1043
    iget-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesReaderStateContextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesRelationshipSyncDataProvider:Ljavax/inject/Provider;

    .line 1045
    invoke-static {v1, v2, v3}, Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory_Factory;

    move-result-object v1

    .line 1044
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->statsMediaItemFactoryProvider:Ljavax/inject/Provider;

    .line 1049
    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesListeningStatsManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesPlayerStateContextProvider:Ljavax/inject/Provider;

    .line 1051
    invoke-static {v2, v3, v1}, Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener_Factory;

    move-result-object v1

    .line 1050
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->playerStateChangeListenerProvider:Ljavax/inject/Provider;

    .line 1055
    iget-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesListeningStatsManagerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->statsMediaItemFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesPlayerStateContextProvider:Ljavax/inject/Provider;

    .line 1057
    invoke-static {v1, v2, v3}, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener_Factory;

    move-result-object v1

    .line 1056
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->readerStateChangeListenerProvider:Ljavax/inject/Provider;

    .line 1061
    iget-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideContextProvider:Ljavax/inject/Provider;

    .line 1062
    invoke-static {v1}, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider_Factory;->create(Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->highlightColorModeProvider:Ljavax/inject/Provider;

    .line 1066
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideContextProvider:Ljavax/inject/Provider;

    .line 1065
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideConnectivityManagerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideConnectivityManagerFactory;

    move-result-object v1

    .line 1064
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideConnectivityManagerProvider:Ljavax/inject/Provider;

    .line 1067
    iget-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEndpointFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppySettingsProvider:Ljavax/inject/Provider;

    .line 1069
    invoke-static {v1, v2, v3, v4}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient_Factory;

    move-result-object v1

    .line 1068
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->krxCompanionMappingClientProvider:Ljavax/inject/Provider;

    .line 1077
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v2

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideContextProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->krxCompanionMappingClientProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppySettingsProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesDbScalingRelationshipManagerProvider:Ljavax/inject/Provider;

    .line 1076
    invoke-static/range {v2 .. v8}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideRelationshipManagerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideRelationshipManagerFactory;

    move-result-object v1

    .line 1075
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideRelationshipManagerProvider:Ljavax/inject/Provider;

    .line 1084
    iget-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->viewControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    .line 1085
    invoke-static {v1, v2, v3, v4}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/startactions/StartActionsWidget_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->startActionsWidgetProvider:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget_Factory;

    .line 1092
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideContextProvider:Ljavax/inject/Provider;

    .line 1091
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesUpsellWebviewFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesUpsellWebviewFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesUpsellWebviewProvider:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesUpsellWebviewFactory;

    .line 1093
    iget-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideUserModelProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEndpointFactoryProvider:Ljavax/inject/Provider;

    .line 1095
    invoke-static {v1, v2, v3, v4, v5}, Lcom/audible/hushpuppy/controller/UserController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/UserController_Factory;

    move-result-object v1

    .line 1094
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->userControllerProvider:Ljavax/inject/Provider;

    .line 1104
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEndpointFactoryProvider:Ljavax/inject/Provider;

    .line 1103
    invoke-static {v1, v2, v3, v4}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesBuyAudioClientFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesBuyAudioClientFactory;

    move-result-object v1

    .line 1102
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesBuyAudioClientProvider:Ljavax/inject/Provider;

    .line 1111
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEndpointFactoryProvider:Ljavax/inject/Provider;

    .line 1110
    invoke-static {v1, v2, v3, v4}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideToaRedeemClientFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideToaRedeemClientFactory;

    move-result-object v1

    .line 1109
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideToaRedeemClientProvider:Ljavax/inject/Provider;

    .line 1118
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 1117
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioPurchaseRequestDelayedHandlerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioPurchaseRequestDelayedHandlerFactory;

    move-result-object v1

    .line 1116
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudioPurchaseRequestDelayedHandlerProvider:Ljavax/inject/Provider;

    .line 1119
    iget-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideUpsellWritableModelProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 1120
    invoke-static {v1, v2, v3}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->autoDisappearTimeOutControllerProvider:Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController_Factory;

    .line 1127
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v2

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideUpsellWritableModelProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudioPurchaseRequestDelayedHandlerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesBuyAudioClientProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->autoDisappearTimeOutControllerProvider:Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController_Factory;

    iget-object v11, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideToaRedeemClientProvider:Ljavax/inject/Provider;

    .line 1126
    invoke-static/range {v2 .. v11}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;

    move-result-object v1

    .line 1125
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v14

    iput-object v14, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideUpsellHelperProvider:Ljavax/inject/Provider;

    .line 1137
    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideUpsellWritableModelProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudiobookSwitcherProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->dialogManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->priceClientProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesBuyAudioClientProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideToaRedeemClientProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideRestrictionHandlerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    .line 1139
    invoke-static/range {v2 .. v14}, Lcom/audible/hushpuppy/controller/ActionBarUpsellController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/ActionBarUpsellController_Factory;

    move-result-object v1

    .line 1138
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->actionBarUpsellControllerProvider:Ljavax/inject/Provider;

    .line 1153
    iget-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideContextProvider:Ljavax/inject/Provider;

    .line 1154
    invoke-static {v1}, Lcom/audible/hushpuppy/common/player/NarrationRate_Factory;->create(Ljavax/inject/Provider;)Lcom/audible/hushpuppy/common/player/NarrationRate_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->narrationRateProvider:Ljavax/inject/Provider;

    .line 1155
    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideLegacyHushpuppyStorageProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyStorageProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesMobileWeblabHandlerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    iget-object v8, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 1156
    invoke-static/range {v2 .. v8}, Lcom/audible/hushpuppy/controller/LibraryDownloadController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/LibraryDownloadController_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->libraryDownloadControllerProvider:Lcom/audible/hushpuppy/controller/LibraryDownloadController_Factory;

    .line 1164
    iget-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesReaderStateContextProvider:Ljavax/inject/Provider;

    .line 1166
    invoke-static {v1, v2}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper_Factory;

    move-result-object v1

    .line 1165
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audiblePlayerMetricsHelperProvider:Ljavax/inject/Provider;

    .line 1168
    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesReaderStateContextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesPlayerStateContextProvider:Ljavax/inject/Provider;

    .line 1170
    invoke-static {v1, v2, v3}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter_Factory;

    move-result-object v1

    .line 1169
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audiblePlayerMetricsReporterProvider:Ljavax/inject/Provider;

    .line 1174
    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->seekControllerProvider:Lcom/audible/hushpuppy/controller/SeekController_Factory;

    iget-object v7, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->dialogManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideReaderManagerProvider:Ljavax/inject/Provider;

    .line 1184
    invoke-static {}, Lcom/audible/hushpuppy/common/system/SingleElementQueueHandler_Factory;->create()Lcom/audible/hushpuppy/common/system/SingleElementQueueHandler_Factory;

    move-result-object v9

    iget-object v10, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->narrationRateProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->readAlongControllerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->libraryDownloadControllerProvider:Lcom/audible/hushpuppy/controller/LibraryDownloadController_Factory;

    iget-object v13, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudiobookSwitcherProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideReadAlongModelProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    iget-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audiblePlayerMetricsReporterProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    .line 1176
    invoke-static/range {v2 .. v16}, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;

    move-result-object v1

    .line 1175
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->locationSeekerControllerProvider:Ljavax/inject/Provider;

    .line 1195
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v2

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->locationSeekerControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providePlayerViewManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideRestrictionHandlerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudiobookSwitcherProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 1194
    invoke-static/range {v2 .. v8}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;

    move-result-object v1

    .line 1193
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideMainPlayerDecorationProvider:Ljavax/inject/Provider;

    .line 1205
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v2

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->locationSeekerControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providePlayerViewManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideRestrictionHandlerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    .line 1204
    invoke-static/range {v2 .. v8}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidePersistentPlayerDecorationFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidePersistentPlayerDecorationFactory;

    move-result-object v1

    .line 1203
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providePersistentPlayerDecorationProvider:Ljavax/inject/Provider;

    .line 1215
    invoke-static/range {p1 .. p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v2

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->locationSeekerControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->actionBarUpsellControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideMainPlayerDecorationProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providePersistentPlayerDecorationProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providePlayerViewManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 1214
    invoke-static/range {v2 .. v10}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;

    move-result-object v1

    .line 1213
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideFullPlayerProvider:Ljavax/inject/Provider;

    .line 1225
    invoke-static {}, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter_Factory;->create()Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->inBookChromeMetricsReporterProvider:Ljavax/inject/Provider;

    .line 1226
    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideReaderUIManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->locationSeekerControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providePlayerViewManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 1228
    invoke-static/range {v2 .. v7}, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider_Factory;

    move-result-object v1

    .line 1227
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->mainPlayerNarrationSpeedButtonProvider:Ljavax/inject/Provider;

    .line 1235
    iget-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudiobookSwitcherProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->inBookChromeMetricsReporterProvider:Ljavax/inject/Provider;

    .line 1237
    invoke-static {v1, v2, v3}, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider_Factory;

    move-result-object v1

    .line 1236
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->switchToReadingCommandItemProvider:Ljavax/inject/Provider;

    .line 1241
    iget-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideLegacyHushpuppyStorageProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideRestrictionHandlerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providePaymentFlowsFeatureTogglerProvider:Ljavax/inject/Provider;

    .line 1242
    invoke-static {v1, v2, v3, v4, v5}, Lcom/audible/hushpuppy/view/common/UpsellLogic_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/common/UpsellLogic_Factory;

    move-result-object v9

    iput-object v9, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->upsellLogicProvider:Lcom/audible/hushpuppy/view/common/UpsellLogic_Factory;

    .line 1248
    iget-object v6, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideRestrictionHandlerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudiobookSwitcherProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->inBookChromeMetricsReporterProvider:Ljavax/inject/Provider;

    .line 1250
    invoke-static/range {v6 .. v11}, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider_Factory;

    move-result-object v1

    .line 1249
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->upgradeWithAudioCommandItemProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private initialize2(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)V
    .locals 12

    .line 1261
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideUpsellWritableModelProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesBuyAudioClientProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideRestrictionHandlerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudiobookSwitcherProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideToaRedeemClientProvider:Ljavax/inject/Provider;

    .line 1263
    invoke-static/range {v0 .. v8}, Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;

    move-result-object v0

    .line 1262
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->startActionsUpsellControllerProvider:Ljavax/inject/Provider;

    .line 1273
    invoke-static {}, Lcom/audible/hushpuppy/view/common/CurrencyFormatter_Factory;->create()Lcom/audible/hushpuppy/view/common/CurrencyFormatter_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->currencyFormatterProvider:Ljavax/inject/Provider;

    .line 1277
    invoke-static {p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v0

    .line 1276
    invoke-static {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesCoverArtManagerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesCoverArtManagerFactory;

    move-result-object v0

    .line 1275
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesCoverArtManagerProvider:Ljavax/inject/Provider;

    .line 1281
    invoke-static {p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideExtensionsFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 1280
    invoke-static {v0, v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAutoDownloadSettingFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAutoDownloadSettingFactory;

    move-result-object v0

    .line 1279
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAutoDownloadSettingProvider:Ljavax/inject/Provider;

    .line 1287
    invoke-static {p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideLibraryControllerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideLegacyHushpuppyStorageProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideRelationshipManagerProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppySettingsProvider:Ljavax/inject/Provider;

    .line 1286
    invoke-static/range {v1 .. v9}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesLegacyContentUpdateHelperFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesLegacyContentUpdateHelperFactory;

    move-result-object v0

    .line 1285
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v9

    iput-object v9, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesLegacyContentUpdateHelperProvider:Ljavax/inject/Provider;

    .line 1296
    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideLibraryControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesDbScalingRelationshipManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideSyncFileManagerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudioDownloadedFileManagerProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesMobileWeblabHandlerProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    .line 1298
    invoke-static/range {v1 .. v11}, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;

    move-result-object v0

    .line 1297
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->contentUpdateHandlerProvider:Ljavax/inject/Provider;

    .line 1313
    invoke-static {p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideOwnershipManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudioDownloadedFileManagerProvider:Ljavax/inject/Provider;

    .line 1312
    invoke-static {v0, v1, v2, v3, v4}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideDownloadManagerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideDownloadManagerFactory;

    move-result-object v0

    .line 1311
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideDownloadManagerProvider:Ljavax/inject/Provider;

    .line 1321
    invoke-static {p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    .line 1320
    invoke-static {v0, v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesCacheableRepositoryFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesCacheableRepositoryFactory;

    move-result-object v0

    .line 1319
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesCacheableRepositoryProvider:Ljavax/inject/Provider;

    .line 1325
    invoke-static {p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesCacheableRepositoryProvider:Ljavax/inject/Provider;

    .line 1324
    invoke-static {v0, v1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesEndpointControllerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesEndpointControllerFactory;

    move-result-object v0

    .line 1323
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesEndpointControllerProvider:Ljavax/inject/Provider;

    .line 1329
    invoke-static {p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAbstractPlatformSettingProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideLegacyHushpuppyStorageProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyStorageProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    .line 1328
    invoke-static/range {v1 .. v8}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesJitProviderFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesJitProviderFactory;

    move-result-object v0

    .line 1327
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesJitProvider:Ljavax/inject/Provider;

    .line 1340
    invoke-static {p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideOwnershipManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 1339
    invoke-static {v0, v1, v2, v3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideLegacyDownloadManagerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideLegacyDownloadManagerFactory;

    move-result-object v0

    .line 1338
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideLegacyDownloadManagerProvider:Ljavax/inject/Provider;

    .line 1347
    invoke-static {p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideUpsellModelProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideLibraryControllerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->navigationListenerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesMobileWeblabHandlerProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelperProvider:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;

    .line 1346
    invoke-static/range {v1 .. v9}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideServiceCallbackControllerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideServiceCallbackControllerFactory;

    move-result-object v0

    .line 1345
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideServiceCallbackControllerProvider:Ljavax/inject/Provider;

    .line 1359
    invoke-static {p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v0

    .line 1358
    invoke-static {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchStorageFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchStorageFactory;

    move-result-object v0

    .line 1357
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesAsinPairBatchStorageProvider:Ljavax/inject/Provider;

    .line 1363
    invoke-static {p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesAsinPairBatchStorageProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesDbScalingRelationshipManagerProvider:Ljavax/inject/Provider;

    .line 1362
    invoke-static {v0, v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchControllerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchControllerFactory;

    move-result-object v0

    .line 1361
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesAsinPairBatchControllerProvider:Ljavax/inject/Provider;

    .line 1369
    invoke-static {p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesAsinPairBatchControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideRelationshipManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesDbScalingRelationshipManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesMobileWeblabHandlerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesDebugSharedPreferenesProvider:Ljavax/inject/Provider;

    .line 1368
    invoke-static/range {v1 .. v6}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesTodoEventHandlerFactory;->create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesTodoEventHandlerFactory;

    move-result-object p1

    .line 1367
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesTodoEventHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectApplicationPlugin(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;)Lcom/audible/hushpuppy/plugin/ApplicationPlugin;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1667
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEndpointFactoryProvider:Ljavax/inject/Provider;

    .line 1668
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/pfm/endpoint/IEndpointFactory;

    .line 1667
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin_MembersInjector;->injectEndpointFactory(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/pfm/endpoint/IEndpointFactory;)V

    .line 1669
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->readerNavigationControllerProvider:Ljavax/inject/Provider;

    .line 1670
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;

    .line 1669
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin_MembersInjector;->injectReaderNavigationController(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/controller/ReaderNavigationController;)V

    .line 1672
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getSamplePlaybackController()Lcom/audible/hushpuppy/controller/SamplePlaybackController;

    move-result-object v0

    .line 1671
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin_MembersInjector;->injectSamplePlaybackController(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/controller/SamplePlaybackController;)V

    .line 1673
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->readerActivityLifecycleControllerProvider:Ljavax/inject/Provider;

    .line 1674
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;

    .line 1673
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin_MembersInjector;->injectReaderActivityLifecycleController(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;)V

    .line 1676
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getPlaybackMetricsLoggerController()Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;

    move-result-object v0

    .line 1675
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin_MembersInjector;->injectPlaybackMetricsLoggerController(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;)V

    .line 1677
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->applicationActivityLifeCycleControllerProvider:Ljavax/inject/Provider;

    .line 1678
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;

    .line 1677
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin_MembersInjector;->injectApplicationActivityLifeCycleController(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;)V

    .line 1679
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideChapterNavigatorProvider:Ljavax/inject/Provider;

    .line 1680
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ChapterController;

    .line 1679
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin_MembersInjector;->injectChapterController(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/controller/ChapterController;)V

    .line 1682
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getReaderModeChangeListener()Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;

    move-result-object v0

    .line 1681
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin_MembersInjector;->injectReaderModeChangeListener(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;)V

    .line 1683
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideOwnershipManagerProvider:Ljavax/inject/Provider;

    .line 1684
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;

    .line 1683
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin_MembersInjector;->injectOwnershipManager(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;)V

    .line 1685
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAbstractPlatformSettingProvider:Ljavax/inject/Provider;

    .line 1686
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;

    .line 1685
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin_MembersInjector;->injectAbstractPlatformSetting(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;)V

    .line 1687
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    .line 1688
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 1687
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin_MembersInjector;->injectAudibleService(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)V

    .line 1689
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAbstractUserRegistrationHandlerProvider:Ljavax/inject/Provider;

    .line 1690
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/extensions/registration/IUserRegistrationHandler;

    .line 1689
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin_MembersInjector;->injectUserRegistrationHandler(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/extensions/registration/IUserRegistrationHandler;)V

    .line 1691
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesMobileWeblabHandlerProvider:Ljavax/inject/Provider;

    .line 1692
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    .line 1691
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin_MembersInjector;->injectMobileWeblabHandler(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;)V

    .line 1693
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getLegacyHushpuppyStorage()Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin_MembersInjector;->injectHushpuppyStorage(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;)V

    .line 1694
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesDebugSharedPreferenesProvider:Ljavax/inject/Provider;

    .line 1695
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/preferences/PreferenceStore;

    .line 1694
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin_MembersInjector;->injectSharedPreferences(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/mobile/preferences/PreferenceStore;)V

    return-object p1
.end method

.method private injectAudibleDebugHelper(Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 2040
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    .line 2041
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 2040
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_MembersInjector;->injectHushpuppyModel(Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V

    return-object p1
.end method

.method private injectCoverArtManager(Lcom/audible/hushpuppy/view/player/view/CoverArtManager;)Lcom/audible/hushpuppy/view/player/view/CoverArtManager;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 2034
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/CoverArtManager_MembersInjector;->injectKindleReaderSdk(Lcom/audible/hushpuppy/view/player/view/CoverArtManager;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object p1
.end method

.method private injectDebugPlugin(Lcom/audible/hushpuppy/plugin/DebugPlugin;)Lcom/audible/hushpuppy/plugin/DebugPlugin;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1701
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->debugModelDumpControllerProvider:Ljavax/inject/Provider;

    .line 1702
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/DebugModelDumpController;

    .line 1701
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/DebugPlugin_MembersInjector;->injectDebugModelDumpController(Lcom/audible/hushpuppy/plugin/DebugPlugin;Lcom/audible/hushpuppy/controller/DebugModelDumpController;)V

    .line 1703
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->debugDbDumpControllerProvider:Ljavax/inject/Provider;

    .line 1704
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/DebugDbDumpController;

    .line 1703
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/DebugPlugin_MembersInjector;->injectDebugDbDumpController(Lcom/audible/hushpuppy/plugin/DebugPlugin;Lcom/audible/hushpuppy/controller/DebugDbDumpController;)V

    return-object p1
.end method

.method private injectFragmentHolder(Lcom/audible/hushpuppy/view/common/FragmentHolder;)Lcom/audible/hushpuppy/view/common/FragmentHolder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 2021
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/common/FragmentHolder_MembersInjector;->injectKindleReaderSdk(Lcom/audible/hushpuppy/view/common/FragmentHolder;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object p1
.end method

.method private injectFullPlayerView(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;)Lcom/audible/hushpuppy/view/player/view/FullPlayerView;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1936
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectHushpuppyModel(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V

    .line 1937
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectAudibleService(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)V

    .line 1938
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->viewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ViewController;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectViewController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/ViewController;)V

    .line 1939
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->locationSeekerControllerProvider:Ljavax/inject/Provider;

    .line 1940
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/LocationSeekerController;

    .line 1939
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectLocationSeekerController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/LocationSeekerController;)V

    .line 1941
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideChapterNavigatorProvider:Ljavax/inject/Provider;

    .line 1942
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ChapterController;

    .line 1941
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectChapterController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/ChapterController;)V

    .line 1943
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesCoverArtManagerProvider:Ljavax/inject/Provider;

    .line 1944
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;

    .line 1943
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectCoverArtManager(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;)V

    .line 1945
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getSeekController()Lcom/audible/hushpuppy/controller/SeekController;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectSeekController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/SeekController;)V

    .line 1946
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudiobookSwitcherProvider:Ljavax/inject/Provider;

    .line 1947
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    .line 1946
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectAudiobookSwitcher(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;)V

    .line 1948
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->actionBarUpsellControllerProvider:Ljavax/inject/Provider;

    .line 1949
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;

    .line 1948
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectActionBarUpsellController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/ActionBarUpsellController;)V

    .line 1950
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView_MembersInjector;->injectEventBus(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;Lde/greenrobot/event/EventBus;)V

    .line 1951
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesSleepTimerControllerProvider:Ljavax/inject/Provider;

    .line 1952
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ISleepTimerController;

    .line 1951
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView_MembersInjector;->injectSleepTimerController(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;Lcom/audible/hushpuppy/controller/ISleepTimerController;)V

    return-object p1
.end method

.method private injectLibraryPersistentPlayerProvider(Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;)Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1711
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    .line 1712
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 1711
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_MembersInjector;->injectHushpuppyModel(Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V

    .line 1713
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 1714
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus;

    .line 1713
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_MembersInjector;->injectEventBus(Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;Lde/greenrobot/event/EventBus;)V

    .line 1715
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_MembersInjector;->injectKindleReaderSdk(Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 1717
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    .line 1718
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 1717
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_MembersInjector;->injectAudibleService(Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)V

    .line 1719
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAbstractPlatformSettingProvider:Ljavax/inject/Provider;

    .line 1720
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;

    .line 1719
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_MembersInjector;->injectPlatformSetting(Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;)V

    .line 1722
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelper()Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    move-result-object v0

    .line 1721
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_MembersInjector;->injectAudibleDebugHelper(Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V

    return-object p1
.end method

.method private injectLibraryPlugin(Lcom/audible/hushpuppy/plugin/LibraryPlugin;)Lcom/audible/hushpuppy/plugin/LibraryPlugin;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1728
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideLibraryControllerProvider:Ljavax/inject/Provider;

    .line 1729
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ILibraryController;

    .line 1728
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/LibraryPlugin_MembersInjector;->injectLibraryController(Lcom/audible/hushpuppy/plugin/LibraryPlugin;Lcom/audible/hushpuppy/controller/ILibraryController;)V

    .line 1731
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getLibraryPersistentPlayerProvider()Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;

    move-result-object v0

    .line 1730
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/LibraryPlugin_MembersInjector;->injectLibraryPersistentPlayerProvider(Lcom/audible/hushpuppy/plugin/LibraryPlugin;Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;)V

    .line 1732
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideLegacyHushpuppyStorageProvider:Ljavax/inject/Provider;

    .line 1733
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    .line 1732
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/LibraryPlugin_MembersInjector;->injectStorage(Lcom/audible/hushpuppy/plugin/LibraryPlugin;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;)V

    .line 1735
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getLibraryContextualActionButtonProvider()Lcom/audible/hushpuppy/view/library/LibraryContextualActionButtonProvider;

    move-result-object v0

    .line 1734
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/LibraryPlugin_MembersInjector;->injectLibraryContextualActionButtonProvider(Lcom/audible/hushpuppy/plugin/LibraryPlugin;Lcom/audible/hushpuppy/view/library/LibraryContextualActionButtonProvider;)V

    .line 1737
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getLibraryLeftNavProvider()Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;

    move-result-object v0

    .line 1736
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/LibraryPlugin_MembersInjector;->injectLibraryLeftNavProvider(Lcom/audible/hushpuppy/plugin/LibraryPlugin;Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;)V

    .line 1738
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudioDownloadHandlerProvider:Ljavax/inject/Provider;

    .line 1739
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;

    .line 1738
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/LibraryPlugin_MembersInjector;->injectAudioDownloadHandler(Lcom/audible/hushpuppy/plugin/LibraryPlugin;Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;)V

    return-object p1
.end method

.method private injectMetricLoggingPlugin(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;)Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1746
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getPlaybackPositionController()Lcom/audible/hushpuppy/controller/audible/readingstream/PlaybackPositionController;

    move-result-object v0

    .line 1745
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin_MembersInjector;->injectPlaybackPositionController(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/controller/audible/readingstream/PlaybackPositionController;)V

    .line 1748
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getPlayerStateController()Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateController;

    move-result-object v0

    .line 1747
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin_MembersInjector;->injectPlayerStateChangeController(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateController;)V

    .line 1750
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getForegroundStateController()Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;

    move-result-object v0

    .line 1749
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin_MembersInjector;->injectForegroundStateController(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;)V

    .line 1752
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getReaderModeController()Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderModeController;

    move-result-object v0

    .line 1751
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin_MembersInjector;->injectReaderModeChangeController(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderModeController;)V

    .line 1754
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getScreenOnOffReceiver()Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;

    move-result-object v0

    .line 1753
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin_MembersInjector;->injectScreenOnOffReceiver(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;)V

    .line 1755
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesRelationshipSyncDataProvider:Ljavax/inject/Provider;

    .line 1756
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

    .line 1755
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin_MembersInjector;->injectRelationshipSyncData(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;)V

    .line 1757
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->playerStateListenerProvider:Ljavax/inject/Provider;

    .line 1758
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener;

    .line 1757
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin_MembersInjector;->injectPlayerStateListener(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener;)V

    .line 1759
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->readerStateListenerProvider:Ljavax/inject/Provider;

    .line 1760
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;

    .line 1759
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin_MembersInjector;->injectReaderStateListener(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;)V

    .line 1761
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesPlayerStateContextProvider:Ljavax/inject/Provider;

    .line 1762
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    .line 1761
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin_MembersInjector;->injectPlayerStateContext(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;)V

    .line 1763
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesListeningStatsManagerProvider:Ljavax/inject/Provider;

    .line 1764
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    .line 1763
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin_MembersInjector;->injectListeningStatsManager(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;)V

    .line 1765
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesWorkerHandlerProvider:Ljavax/inject/Provider;

    .line 1766
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/common/system/IWorkerHandler;

    .line 1765
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin_MembersInjector;->injectWorkerHandler(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/common/system/IWorkerHandler;)V

    .line 1767
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesReaderStateContextProvider:Ljavax/inject/Provider;

    .line 1768
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    .line 1767
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin_MembersInjector;->injectReaderStateContext(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;)V

    .line 1769
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->playerStateChangeListenerProvider:Ljavax/inject/Provider;

    .line 1770
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener;

    .line 1769
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin_MembersInjector;->injectPlayerStateChangeListener(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener;)V

    .line 1771
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->readerStateChangeListenerProvider:Ljavax/inject/Provider;

    .line 1772
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;

    .line 1771
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin_MembersInjector;->injectReaderStateChangeListener(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;)V

    return-object p1
.end method

.method private injectMiniPlayerView(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1958
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectHushpuppyModel(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V

    .line 1959
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectAudibleService(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)V

    .line 1960
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->viewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ViewController;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectViewController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/ViewController;)V

    .line 1961
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->locationSeekerControllerProvider:Ljavax/inject/Provider;

    .line 1962
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/LocationSeekerController;

    .line 1961
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectLocationSeekerController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/LocationSeekerController;)V

    .line 1963
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideChapterNavigatorProvider:Ljavax/inject/Provider;

    .line 1964
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ChapterController;

    .line 1963
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectChapterController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/ChapterController;)V

    .line 1965
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesCoverArtManagerProvider:Ljavax/inject/Provider;

    .line 1966
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;

    .line 1965
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectCoverArtManager(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;)V

    .line 1967
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getSeekController()Lcom/audible/hushpuppy/controller/SeekController;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectSeekController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/SeekController;)V

    .line 1968
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudiobookSwitcherProvider:Ljavax/inject/Provider;

    .line 1969
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    .line 1968
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectAudiobookSwitcher(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;)V

    .line 1970
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->actionBarUpsellControllerProvider:Ljavax/inject/Provider;

    .line 1971
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;

    .line 1970
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectActionBarUpsellController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/ActionBarUpsellController;)V

    .line 1972
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    .line 1973
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 1972
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView_MembersInjector;->injectAudibleService(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)V

    return-object p1
.end method

.method private injectPlayerViewFactory(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;)Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1924
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelper()Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory_MembersInjector;->injectAudibleDebugHelper(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V

    .line 1925
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audiblePlayerMetricsReporterProvider:Ljavax/inject/Provider;

    .line 1926
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    .line 1925
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory_MembersInjector;->injectAudiblePlayerMetricsReporter(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;)V

    .line 1927
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelper()Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory_MembersInjector;->injectDebugHelper(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V

    .line 1928
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->hushpuppyPerformanceUtilsProvider:Ljavax/inject/Provider;

    .line 1929
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;

    .line 1928
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory_MembersInjector;->injectHushpuppyPerformanceUtils(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;)V

    .line 1930
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory_MembersInjector;->injectEventBus(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;Lde/greenrobot/event/EventBus;)V

    return-object p1
.end method

.method private injectReadAlongPlugin(Lcom/audible/hushpuppy/plugin/ReadAlongPlugin;)Lcom/audible/hushpuppy/plugin/ReadAlongPlugin;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1778
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    .line 1779
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 1778
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ReadAlongPlugin_MembersInjector;->injectHushpuppyModel(Lcom/audible/hushpuppy/plugin/ReadAlongPlugin;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V

    .line 1781
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getHighlightTextDecoratorProvider()Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;

    move-result-object v0

    .line 1780
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ReadAlongPlugin_MembersInjector;->injectHighlightTextDecoratorProvider(Lcom/audible/hushpuppy/plugin/ReadAlongPlugin;Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;)V

    .line 1782
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->readAlongControllerProvider:Ljavax/inject/Provider;

    .line 1783
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ReadAlongController;

    .line 1782
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ReadAlongPlugin_MembersInjector;->injectReadAlongController(Lcom/audible/hushpuppy/plugin/ReadAlongPlugin;Lcom/audible/hushpuppy/controller/ReadAlongController;)V

    return-object p1
.end method

.method private injectRelationshipPlugin(Lcom/audible/hushpuppy/plugin/RelationshipPlugin;)Lcom/audible/hushpuppy/plugin/RelationshipPlugin;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1789
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppySettingsProvider:Ljavax/inject/Provider;

    .line 1790
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;

    .line 1789
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/RelationshipPlugin_MembersInjector;->injectHushpuppySettings(Lcom/audible/hushpuppy/plugin/RelationshipPlugin;Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;)V

    .line 1791
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideConnectivityManagerProvider:Ljavax/inject/Provider;

    .line 1792
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1791
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/RelationshipPlugin_MembersInjector;->injectConnectivityManager(Lcom/audible/hushpuppy/plugin/RelationshipPlugin;Landroid/net/ConnectivityManager;)V

    .line 1793
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideRelationshipManagerProvider:Ljavax/inject/Provider;

    .line 1794
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;

    .line 1793
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/RelationshipPlugin_MembersInjector;->injectLegacyRelationshipManager(Lcom/audible/hushpuppy/plugin/RelationshipPlugin;Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;)V

    .line 1795
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesDbScalingRelationshipManagerProvider:Ljavax/inject/Provider;

    .line 1796
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    .line 1795
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/RelationshipPlugin_MembersInjector;->injectDbScalingRelationshipManager(Lcom/audible/hushpuppy/plugin/RelationshipPlugin;Lcom/audible/relationship/controller/IDBScalingRelationshipManager;)V

    .line 1797
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesMobileWeblabHandlerProvider:Ljavax/inject/Provider;

    .line 1798
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    .line 1797
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/RelationshipPlugin_MembersInjector;->injectMobileWeblabHandler(Lcom/audible/hushpuppy/plugin/RelationshipPlugin;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;)V

    .line 1799
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelper()Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/RelationshipPlugin_MembersInjector;->injectDebugHelper(Lcom/audible/hushpuppy/plugin/RelationshipPlugin;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V

    return-object p1
.end method

.method private injectStartActionsCancelFragment(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment;)Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1859
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment_MembersInjector;->injectKindleReaderSdk(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 1860
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->startActionsUpsellControllerProvider:Ljavax/inject/Provider;

    .line 1861
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;

    .line 1860
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment_MembersInjector;->injectUpsellController(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment;Lcom/audible/hushpuppy/controller/StartActionsUpsellController;)V

    return-object p1
.end method

.method private injectStartActionsErrorFragment(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsErrorFragment;)Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsErrorFragment;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1868
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->startActionsUpsellControllerProvider:Ljavax/inject/Provider;

    .line 1869
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;

    .line 1868
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsErrorFragment_MembersInjector;->injectUpsellController(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsErrorFragment;Lcom/audible/hushpuppy/controller/StartActionsUpsellController;)V

    return-object p1
.end method

.method private injectStartActionsPitchFragment(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;)Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1876
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    .line 1877
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 1876
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment_MembersInjector;->injectHushpuppyModel(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V

    .line 1878
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->currencyFormatterProvider:Ljavax/inject/Provider;

    .line 1879
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/view/common/CurrencyFormatter;

    .line 1878
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment_MembersInjector;->injectCurrencyFormatter(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;Lcom/audible/hushpuppy/view/common/CurrencyFormatter;)V

    return-object p1
.end method

.method private injectStartActionsProcessingFragment(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment;)Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1886
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->startActionsUpsellControllerProvider:Ljavax/inject/Provider;

    .line 1887
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;

    .line 1886
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment_MembersInjector;->injectUpsellController(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment;Lcom/audible/hushpuppy/controller/StartActionsUpsellController;)V

    return-object p1
.end method

.method private injectStartActionsProvider(Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;)Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1805
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->startActionsWidgetProvider:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget_Factory;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider_MembersInjector;->injectUpsellWidgetProvider(Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;Ljavax/inject/Provider;)V

    .line 1807
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesUpsellWebviewProvider:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesUpsellWebviewFactory;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider_MembersInjector;->injectWebViewWidgetProvider(Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;Ljavax/inject/Provider;)V

    .line 1809
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideUpsellModelProvider:Ljavax/inject/Provider;

    .line 1810
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/read/IUpsellModel;

    .line 1809
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider_MembersInjector;->injectUpsellModel(Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;Lcom/audible/hushpuppy/model/read/IUpsellModel;)V

    .line 1811
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getUpsellLogic()Lcom/audible/hushpuppy/view/common/UpsellLogic;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider_MembersInjector;->injectUpsellLogic(Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;Lcom/audible/hushpuppy/view/common/UpsellLogic;)V

    .line 1812
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providePaymentFlowsFeatureTogglerProvider:Ljavax/inject/Provider;

    .line 1813
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;

    .line 1812
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider_MembersInjector;->injectPaymentFlowsFeatureToggler(Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;)V

    return-object p1
.end method

.method private injectStartActionsReadAndListenFragment(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;)Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1894
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->startActionsUpsellControllerProvider:Ljavax/inject/Provider;

    .line 1895
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;

    .line 1894
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment_MembersInjector;->injectUpsellController(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;Lcom/audible/hushpuppy/controller/StartActionsUpsellController;)V

    .line 1896
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->locationSeekerControllerProvider:Ljavax/inject/Provider;

    .line 1897
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/LocationSeekerController;

    .line 1896
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment_MembersInjector;->injectLocationSeekerController(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;Lcom/audible/hushpuppy/controller/LocationSeekerController;)V

    return-object p1
.end method

.method private injectStartActionsTimeoutFragment(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsTimeoutFragment;)Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsTimeoutFragment;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1904
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsTimeoutFragment_MembersInjector;->injectKindleReaderSdk(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsTimeoutFragment;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object p1
.end method

.method private injectStartActionsToaFragment(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;)Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1910
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    .line 1911
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 1910
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment_MembersInjector;->injectHushpuppyModel(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V

    return-object p1
.end method

.method private injectToaInfoModal(Lcom/audible/hushpuppy/view/common/ToaInfoModal;)Lcom/audible/hushpuppy/view/common/ToaInfoModal;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1918
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getAudibleTOAInfoModalJavaScriptBridge()Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;

    move-result-object v0

    .line 1917
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/common/ToaInfoModal_MembersInjector;->injectAudibleTOAInfoModalJavaScriptBridge(Lcom/audible/hushpuppy/view/common/ToaInfoModal;Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;)V

    return-object p1
.end method

.method private injectUpsellBannerWebView(Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;)Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 2001
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectHushpuppyModel(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V

    .line 2002
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectAudibleService(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)V

    .line 2003
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->viewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ViewController;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectViewController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/ViewController;)V

    .line 2004
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->locationSeekerControllerProvider:Ljavax/inject/Provider;

    .line 2005
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/LocationSeekerController;

    .line 2004
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectLocationSeekerController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/LocationSeekerController;)V

    .line 2006
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideChapterNavigatorProvider:Ljavax/inject/Provider;

    .line 2007
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ChapterController;

    .line 2006
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectChapterController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/ChapterController;)V

    .line 2008
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesCoverArtManagerProvider:Ljavax/inject/Provider;

    .line 2009
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;

    .line 2008
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectCoverArtManager(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;)V

    .line 2010
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getSeekController()Lcom/audible/hushpuppy/controller/SeekController;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectSeekController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/SeekController;)V

    .line 2011
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudiobookSwitcherProvider:Ljavax/inject/Provider;

    .line 2012
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    .line 2011
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectAudiobookSwitcher(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;)V

    .line 2013
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->actionBarUpsellControllerProvider:Ljavax/inject/Provider;

    .line 2014
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;

    .line 2013
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectActionBarUpsellController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/ActionBarUpsellController;)V

    .line 2015
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView_MembersInjector;->injectEventBus(Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;Lde/greenrobot/event/EventBus;)V

    return-object p1
.end method

.method private injectUpsellPlayerProvider(Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;)Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1828
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider_MembersInjector;->injectKindleReaderSdk(Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 1829
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    .line 1830
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 1829
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider_MembersInjector;->injectHushpuppyModel(Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V

    .line 1831
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->actionBarUpsellControllerProvider:Ljavax/inject/Provider;

    .line 1832
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;

    .line 1831
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider_MembersInjector;->injectUpsellController(Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;Lcom/audible/hushpuppy/controller/ActionBarUpsellController;)V

    .line 1833
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider_MembersInjector;->injectEventBus(Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;Lde/greenrobot/event/EventBus;)V

    .line 1834
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideRestrictionHandlerProvider:Ljavax/inject/Provider;

    .line 1835
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    .line 1834
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider_MembersInjector;->injectRestrictionHandler(Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;)V

    .line 1836
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providePlayerViewManagerProvider:Ljavax/inject/Provider;

    .line 1837
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    .line 1836
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider_MembersInjector;->injectPlayerViewManager(Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;)V

    return-object p1
.end method

.method private injectUpsellPlayerView(Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;)Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1979
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectHushpuppyModel(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V

    .line 1980
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectAudibleService(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)V

    .line 1981
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->viewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ViewController;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectViewController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/ViewController;)V

    .line 1982
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->locationSeekerControllerProvider:Ljavax/inject/Provider;

    .line 1983
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/LocationSeekerController;

    .line 1982
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectLocationSeekerController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/LocationSeekerController;)V

    .line 1984
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideChapterNavigatorProvider:Ljavax/inject/Provider;

    .line 1985
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ChapterController;

    .line 1984
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectChapterController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/ChapterController;)V

    .line 1986
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesCoverArtManagerProvider:Ljavax/inject/Provider;

    .line 1987
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;

    .line 1986
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectCoverArtManager(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;)V

    .line 1988
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getSeekController()Lcom/audible/hushpuppy/controller/SeekController;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectSeekController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/SeekController;)V

    .line 1989
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudiobookSwitcherProvider:Ljavax/inject/Provider;

    .line 1990
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    .line 1989
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectAudiobookSwitcher(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;)V

    .line 1991
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->actionBarUpsellControllerProvider:Ljavax/inject/Provider;

    .line 1992
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;

    .line 1991
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;->injectActionBarUpsellController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/ActionBarUpsellController;)V

    .line 1993
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideUpsellModelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/read/IUpsellModel;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView_MembersInjector;->injectUpsellModel(Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;Lcom/audible/hushpuppy/model/read/IUpsellModel;)V

    .line 1994
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->currencyFormatterProvider:Ljavax/inject/Provider;

    .line 1995
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/view/common/CurrencyFormatter;

    .line 1994
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView_MembersInjector;->injectCurrencyFormatter(Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;Lcom/audible/hushpuppy/view/common/CurrencyFormatter;)V

    return-object p1
.end method

.method private injectUpsellPlugin(Lcom/audible/hushpuppy/plugin/UpsellPlugin;)Lcom/audible/hushpuppy/plugin/UpsellPlugin;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1819
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getStartActionsProvider()Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/UpsellPlugin_MembersInjector;->injectStartActionsProvider(Lcom/audible/hushpuppy/plugin/UpsellPlugin;Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;)V

    .line 1820
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->viewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ViewController;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/UpsellPlugin_MembersInjector;->injectViewController(Lcom/audible/hushpuppy/plugin/UpsellPlugin;Lcom/audible/hushpuppy/controller/ViewController;)V

    .line 1821
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->userControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/UserController;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/UpsellPlugin_MembersInjector;->injectUserController(Lcom/audible/hushpuppy/plugin/UpsellPlugin;Lcom/audible/hushpuppy/controller/UserController;)V

    .line 1822
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelper()Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/UpsellPlugin_MembersInjector;->injectAudibleDebugHelper(Lcom/audible/hushpuppy/plugin/UpsellPlugin;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V

    return-object p1
.end method

.method private injectUpsellWebView(Lcom/audible/hushpuppy/view/startactions/UpsellWebView;)Lcom/audible/hushpuppy/view/startactions/UpsellWebView;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 2027
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/startactions/UpsellWebView_MembersInjector;->injectKindleReaderSdk(Lcom/audible/hushpuppy/view/startactions/UpsellWebView;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 2028
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/startactions/UpsellWebView_MembersInjector;->injectEventBus(Lcom/audible/hushpuppy/view/startactions/UpsellWebView;Lde/greenrobot/event/EventBus;)V

    return-object p1
.end method

.method private injectViewPlugin(Lcom/audible/hushpuppy/plugin/ViewPlugin;)Lcom/audible/hushpuppy/plugin/ViewPlugin;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1843
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getUpsellPlayerProvider()Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ViewPlugin_MembersInjector;->injectUpsellPlayerProvider(Lcom/audible/hushpuppy/plugin/ViewPlugin;Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;)V

    .line 1844
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideFullPlayerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ViewPlugin_MembersInjector;->injectFullPlayerProvider(Lcom/audible/hushpuppy/plugin/ViewPlugin;Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;)V

    .line 1845
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getPlaySelectionProvider()Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ViewPlugin_MembersInjector;->injectPlaySelectionProvider(Lcom/audible/hushpuppy/plugin/ViewPlugin;Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;)V

    .line 1846
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->getReaderLeftNavProvider()Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ViewPlugin_MembersInjector;->injectReaderLeftNavProvider(Lcom/audible/hushpuppy/plugin/ViewPlugin;Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;)V

    .line 1847
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->mainPlayerNarrationSpeedButtonProvider:Ljavax/inject/Provider;

    .line 1848
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;

    .line 1847
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ViewPlugin_MembersInjector;->injectMainPlayerNarrationSpeedButtonProvider(Lcom/audible/hushpuppy/plugin/ViewPlugin;Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;)V

    .line 1849
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->switchToReadingCommandItemProvider:Ljavax/inject/Provider;

    .line 1850
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;

    .line 1849
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ViewPlugin_MembersInjector;->injectSwitchToReadingCommandItemProvider(Lcom/audible/hushpuppy/plugin/ViewPlugin;Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;)V

    .line 1851
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->upgradeWithAudioCommandItemProvider:Ljavax/inject/Provider;

    .line 1852
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;

    .line 1851
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/plugin/ViewPlugin_MembersInjector;->injectUpgradeWithAudioCommandItemProvider(Lcom/audible/hushpuppy/plugin/ViewPlugin;Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;)V

    return-object p1
.end method


# virtual methods
.method public abstractAutoDownloadSetting()Lcom/audible/hushpuppy/extensions/autodownload/AbstractAutoDownloadSetting;
    .locals 1

    .line 1502
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAutoDownloadSettingProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/extensions/autodownload/AbstractAutoDownloadSetting;

    return-object v0
.end method

.method public audibleDebugHelper()Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;
    .locals 2

    .line 1512
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideContextProvider:Ljavax/inject/Provider;

    .line 1514
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesDebugSharedPreferenesProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/preferences/PreferenceStore;

    .line 1513
    invoke-static {v0, v1}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_Factory;->newAudibleDebugHelper(Landroid/content/Context;Lcom/audible/mobile/preferences/PreferenceStore;)Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    move-result-object v0

    .line 1512
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectAudibleDebugHelper(Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    return-object v0
.end method

.method public audibleService()Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;
    .locals 1

    .line 1507
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    return-object v0
.end method

.method public contentUpdateHandler()Lcom/audible/hushpuppy/controller/ContentUpdateHandler;
    .locals 1

    .line 1519
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->contentUpdateHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;

    return-object v0
.end method

.method public coverArtManager()Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;
    .locals 1

    .line 1529
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesCoverArtManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;

    return-object v0
.end method

.method public downloadManager()Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;
    .locals 1

    .line 1534
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideDownloadManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;

    return-object v0
.end method

.method public endPointController()Lcom/audible/pfm/controller/IEndpointController;
    .locals 1

    .line 1539
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesEndpointControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/pfm/controller/IEndpointController;

    return-object v0
.end method

.method public eventBus()Lde/greenrobot/event/EventBus;
    .locals 1

    .line 1549
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus;

    return-object v0
.end method

.method public hushpuppyController()Lcom/audible/hushpuppy/controller/HushpuppyController;
    .locals 1

    .line 1554
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->hushpuppyControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/HushpuppyController;

    return-object v0
.end method

.method public hushpuppyModel()Lcom/audible/hushpuppy/model/read/IHushpuppyModel;
    .locals 1

    .line 1559
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyModelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    return-object v0
.end method

.method public hushpuppyStorage()Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;
    .locals 1

    .line 1569
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyStorageProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    return-object v0
.end method

.method public inject(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;)V
    .locals 0

    .line 1379
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectApplicationPlugin(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;)Lcom/audible/hushpuppy/plugin/ApplicationPlugin;

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;)V
    .locals 0

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/plugin/DebugPlugin;)V
    .locals 0

    .line 1387
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectDebugPlugin(Lcom/audible/hushpuppy/plugin/DebugPlugin;)Lcom/audible/hushpuppy/plugin/DebugPlugin;

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/plugin/LibraryPlugin;)V
    .locals 0

    .line 1392
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectLibraryPlugin(Lcom/audible/hushpuppy/plugin/LibraryPlugin;)Lcom/audible/hushpuppy/plugin/LibraryPlugin;

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;)V
    .locals 0

    .line 1397
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectMetricLoggingPlugin(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;)Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/plugin/ReadAlongPlugin;)V
    .locals 0

    .line 1402
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectReadAlongPlugin(Lcom/audible/hushpuppy/plugin/ReadAlongPlugin;)Lcom/audible/hushpuppy/plugin/ReadAlongPlugin;

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/plugin/RelationshipPlugin;)V
    .locals 0

    .line 1407
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectRelationshipPlugin(Lcom/audible/hushpuppy/plugin/RelationshipPlugin;)Lcom/audible/hushpuppy/plugin/RelationshipPlugin;

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/plugin/UpsellPlugin;)V
    .locals 0

    .line 1412
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectUpsellPlugin(Lcom/audible/hushpuppy/plugin/UpsellPlugin;)Lcom/audible/hushpuppy/plugin/UpsellPlugin;

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/plugin/ViewPlugin;)V
    .locals 0

    .line 1417
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectViewPlugin(Lcom/audible/hushpuppy/plugin/ViewPlugin;)Lcom/audible/hushpuppy/plugin/ViewPlugin;

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/view/common/FragmentHolder;)V
    .locals 0

    .line 1487
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectFragmentHolder(Lcom/audible/hushpuppy/view/common/FragmentHolder;)Lcom/audible/hushpuppy/view/common/FragmentHolder;

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/view/common/ToaInfoModal;)V
    .locals 0

    .line 1457
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectToaInfoModal(Lcom/audible/hushpuppy/view/common/ToaInfoModal;)Lcom/audible/hushpuppy/view/common/ToaInfoModal;

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/view/player/view/CoverArtManager;)V
    .locals 0

    .line 1497
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectCoverArtManager(Lcom/audible/hushpuppy/view/player/view/CoverArtManager;)Lcom/audible/hushpuppy/view/player/view/CoverArtManager;

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;)V
    .locals 0

    .line 1467
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectFullPlayerView(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;)Lcom/audible/hushpuppy/view/player/view/FullPlayerView;

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)V
    .locals 0

    .line 1472
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectMiniPlayerView(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;)V
    .locals 0

    .line 1482
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectUpsellBannerWebView(Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;)Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;)V
    .locals 0

    .line 1477
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectUpsellPlayerView(Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;)Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;)V
    .locals 0

    .line 1462
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectPlayerViewFactory(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;)Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/view/startactions/UpsellWebView;)V
    .locals 0

    .line 1492
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectUpsellWebView(Lcom/audible/hushpuppy/view/startactions/UpsellWebView;)Lcom/audible/hushpuppy/view/startactions/UpsellWebView;

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment;)V
    .locals 0

    .line 1422
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectStartActionsCancelFragment(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment;)Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment;

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsErrorFragment;)V
    .locals 0

    .line 1427
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectStartActionsErrorFragment(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsErrorFragment;)Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsErrorFragment;

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;)V
    .locals 0

    .line 1432
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectStartActionsPitchFragment(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;)Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment;)V
    .locals 0

    .line 1437
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectStartActionsProcessingFragment(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment;)Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment;

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;)V
    .locals 0

    .line 1442
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectStartActionsReadAndListenFragment(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;)Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsTimeoutFragment;)V
    .locals 0

    .line 1447
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectStartActionsTimeoutFragment(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsTimeoutFragment;)Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsTimeoutFragment;

    return-void
.end method

.method public inject(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;)V
    .locals 0

    .line 1452
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->injectStartActionsToaFragment(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;)Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;

    return-void
.end method

.method public jitTutorialProvider()Lcom/audible/hushpuppy/controller/IJitTutorialProvider;
    .locals 1

    .line 1574
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesJitProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/IJitTutorialProvider;

    return-object v0
.end method

.method public kindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 1579
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method public legacyDownloadManager()Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;
    .locals 1

    .line 1589
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideLegacyDownloadManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;

    return-object v0
.end method

.method public legacyHushpuppyStorage()Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;
    .locals 1

    .line 1594
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideLegacyHushpuppyStorageProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    return-object v0
.end method

.method public libraryController()Lcom/audible/hushpuppy/controller/ILibraryController;
    .locals 1

    .line 1599
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideLibraryControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ILibraryController;

    return-object v0
.end method

.method public libraryDownloadController()Lcom/audible/hushpuppy/controller/LibraryDownloadController;
    .locals 9

    .line 1604
    new-instance v8, Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideAudibleServiceProvider:Ljavax/inject/Provider;

    .line 1606
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideLegacyHushpuppyStorageProvider:Ljavax/inject/Provider;

    .line 1607
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideHushpuppyStorageProvider:Ljavax/inject/Provider;

    .line 1608
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesMobileWeblabHandlerProvider:Ljavax/inject/Provider;

    .line 1609
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    .line 1610
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->audibleDebugHelper()Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    move-result-object v6

    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 1611
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lde/greenrobot/event/EventBus;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/audible/hushpuppy/controller/LibraryDownloadController;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Lde/greenrobot/event/EventBus;)V

    return-object v8
.end method

.method public listeningStatsManager()Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;
    .locals 1

    .line 1616
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesListeningStatsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    return-object v0
.end method

.method public locationSeekerController()Lcom/audible/hushpuppy/controller/LocationSeekerController;
    .locals 1

    .line 1584
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->locationSeekerControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/LocationSeekerController;

    return-object v0
.end method

.method public mobileWeblabHandler()Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;
    .locals 1

    .line 1621
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesMobileWeblabHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    return-object v0
.end method

.method public servicesCallbackController()Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;
    .locals 1

    .line 1626
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideServiceCallbackControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;

    return-object v0
.end method

.method public sleepTimerController()Lcom/audible/hushpuppy/controller/ISleepTimerController;
    .locals 1

    .line 1631
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesSleepTimerControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/ISleepTimerController;

    return-object v0
.end method

.method public startActionsUpsellController()Lcom/audible/hushpuppy/controller/StartActionsUpsellController;
    .locals 1

    .line 1636
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->startActionsUpsellControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;

    return-object v0
.end method

.method public toaWebViewUpsellController()Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;
    .locals 4

    .line 1641
    new-instance v0, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideUpsellWritableModelProvider:Ljavax/inject/Provider;

    .line 1642
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/greenrobot/event/EventBus;

    invoke-direct {v0, v1, v2, v3}, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;-><init>(Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;)V

    return-object v0
.end method

.method public todoEventHandler()Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;
    .locals 1

    .line 1647
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->providesTodoEventHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;

    return-object v0
.end method

.method public upsellModel()Lcom/audible/hushpuppy/model/read/IUpsellModel;
    .locals 1

    .line 1652
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->provideUpsellModelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/read/IUpsellModel;

    return-object v0
.end method
