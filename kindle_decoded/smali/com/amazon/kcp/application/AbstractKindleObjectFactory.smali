.class public abstract Lcom/amazon/kcp/application/AbstractKindleObjectFactory;
.super Ljava/lang/Object;
.source "AbstractKindleObjectFactory.java"

# interfaces
.implements Lcom/amazon/kcp/application/IKindleObjectFactory;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected volatile accessibilitySpeaker:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

.field protected final accessibilitySpeakerLock:Ljava/lang/Object;

.field private final accessibilityStateListener:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile androidDeviceInformationProvider:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

.field protected final androidDeviceInformationProviderLock:Ljava/lang/Object;

.field private volatile annotationConversionService:Lcom/amazon/kindle/annotationconversion/IAnnotationConversionService;

.field private final annotationConversionServiceLock:Ljava/lang/Object;

.field protected volatile annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

.field protected final annotationsManagerLock:Ljava/lang/Object;

.field private volatile appSettingsController:Lcom/amazon/kcp/application/AppSettingsController;

.field private final appSettingsControllerLock:Ljava/lang/Object;

.field protected volatile applicationCapabilities:Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

.field protected final applicationCapabilitiesLock:Ljava/lang/Object;

.field private volatile applicationSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

.field private final applicationSettingsLock:Ljava/lang/Object;

.field private final assetStateManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ">;"
        }
    .end annotation
.end field

.field private final associateInformationProvider:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/application/IAssociateInformationProvider;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile authenticationManager:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

.field protected final authenticationManagerLock:Ljava/lang/Object;

.field private volatile awvFactory:Lcom/amazon/android/webkit/AmazonWebKitFactory;

.field private final awvFactoryLock:Ljava/lang/Object;

.field protected bookBroadcastReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/content/IntentFilter;",
            "Landroid/content/BroadcastReceiver;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final bookBroadcastReceiversLock:Ljava/lang/Object;

.field protected volatile bookLockManager:Lcom/amazon/kcp/reader/IBookLockManager;

.field protected final bookLockManagerLock:Ljava/lang/Object;

.field protected volatile bookOwnershipRecorder:Lcom/amazon/kindle/content/IBookOwnershipRecorder;

.field protected final bookOwnershipRecorderLock:Ljava/lang/Object;

.field protected volatile bookPreloader:Lcom/amazon/kcp/application/IBookPreloader;

.field protected final bookPreloaderLock:Ljava/lang/Object;

.field protected volatile bookmarkStyler:Lcom/amazon/kcp/reader/ui/IBookmarkStyler;

.field protected final bookmarkStylerLock:Ljava/lang/Object;

.field private final broadcastReceiverHelper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/android/util/BroadcastReceiverHelper;",
            ">;"
        }
    .end annotation
.end field

.field private volatile chainedListener:Lcom/amazon/kcp/application/ChainedOnTrimMemoryListener;

.field private final chainedListenerLock:Ljava/lang/Object;

.field protected final cipherLock:Ljava/lang/Object;

.field private volatile clippingService:Lcom/amazon/kindle/clipping/IClippingService;

.field private final clippingServiceLock:Ljava/lang/Object;

.field protected volatile cmsItemFactory:Lcom/amazon/kindle/cms/ICMSItemFactory;

.field protected final cmsItemFactoryLock:Ljava/lang/Object;

.field protected volatile cmsItemLocationFactory:Lcom/amazon/kindle/cms/ICMSItemLocationFactory;

.field protected final cmsItemLocationFactoryLock:Ljava/lang/Object;

.field protected volatile collectionDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

.field protected final collectionDAOLock:Ljava/lang/Object;

.field protected volatile collectionsSyncManager:Lcom/amazon/kindle/collections/ICollectionsSyncManager;

.field protected final collectionsSyncManagerLock:Ljava/lang/Object;

.field protected volatile colorModeFactory:Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

.field protected final colorModeFactoryLock:Ljava/lang/Object;

.field protected volatile contentDB:Lcom/amazon/kindle/content/db/KindleContentDB;

.field protected final contentDBLock:Ljava/lang/Object;

.field private volatile contentUpdateService:Lcom/amazon/kindle/contentupdate/IContentUpdateService;

.field private final contentUpdateServiceLock:Ljava/lang/Object;

.field protected context:Landroid/content/Context;

.field protected volatile cookieJar:Lcom/amazon/kcp/store/CookieJar;

.field protected final cookieJarLock:Ljava/lang/Object;

.field protected volatile coverCacheManager:Lcom/amazon/kcp/cover/ICoverCacheManager;

.field protected final coverCacheManagerLock:Ljava/lang/Object;

.field private final coverManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/cover/ICoverImageService;",
            ">;"
        }
    .end annotation
.end field

.field private volatile dcmMetricsFactoryProvider:Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;

.field private final dcmMetricsFactoryProviderLock:Ljava/lang/Object;

.field protected volatile defaultCoverBackgroundProvider:Lcom/amazon/kcp/cover/IDefaultCoverBackgroundProvider;

.field protected final defaultCoverBackgroundProviderLock:Ljava/lang/Object;

.field private deviceConfigurator:Lcom/amazon/kcp/application/IAndroidDeviceConfigurator;

.field protected volatile deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

.field protected final deviceInformationLock:Ljava/lang/Object;

.field private final deviceInformationProvider:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/application/IDeviceInformationProvider;",
            ">;"
        }
    .end annotation
.end field

.field protected deviceType:Lcom/amazon/kcp/application/AndroidDeviceType;

.field private volatile downloadResumer:Lcom/amazon/kindle/IDownloadResumer;

.field private final downloadResumerLock:Ljava/lang/Object;

.field private final downloadService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/services/download/IDownloadService;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile emptyLibraryStringProviderFactory:Lcom/amazon/kcp/library/EmptyLibraryStringProviderFactory;

.field protected final emptyLibraryStringProviderFactoryLock:Ljava/lang/Object;

.field protected final falkorATLSyncManagerLock:Ljava/lang/Object;

.field protected final falkorLastReadEpisodeSyncManagerLock:Ljava/lang/Object;

.field protected final fileConverterLock:Ljava/lang/Object;

.field private final fileSystem:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/io/IFileConnectionFactory;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile fontConfigInitializer:Lcom/amazon/kcp/font/FontConfigInitializer;

.field protected final fontConfigInitializerLock:Ljava/lang/Object;

.field protected volatile fontConfigProvider:Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;

.field protected final fontConfigProviderLock:Ljava/lang/Object;

.field protected volatile fontFactory:Lcom/mobipocket/android/drawing/AndroidFontFactory;

.field protected final fontFactoryLock:Ljava/lang/Object;

.field private final groupService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/content/IGroupService;",
            ">;"
        }
    .end annotation
.end field

.field private historyManager:Lcom/amazon/kcp/application/HistoryManager;

.field private httpConnectionFactory:Lcom/amazon/system/net/HttpConnectionFactory;

.field private imageFactory:Lcom/amazon/kindle/util/drawing/ImageFactory;

.field protected volatile indexerProvider:Lcom/amazon/kcp/search/IBookSearchIndexerProvider;

.field protected final indexerProviderLock:Ljava/lang/Object;

.field protected volatile initialThemeConfig:Lcom/amazon/kcp/theme/ThemeConfig;

.field protected final initialThemeConfigLock:Ljava/lang/Object;

.field protected volatile ksoCacheManager:Lcom/amazon/kindle/specialOffer/IKSOCacheManager;

.field protected final ksoCacheManagerLock:Ljava/lang/Object;

.field protected volatile kwisClientHandler:Lcom/amazon/kindle/kwis/IKWISClientHandler;

.field protected final kwisClientHandlerLock:Ljava/lang/Object;

.field protected volatile langDetector:Lcom/amazon/kindle/langdetector/BookLangDetector;

.field protected final langDetectorLock:Ljava/lang/Object;

.field private final lazyAccountSecretProvider:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/services/authentication/IAccountSecretProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyAndroidApplicationController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/application/IAndroidApplicationController;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyAndroidSecurity:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/mobipocket/android/library/reader/AndroidSecurity;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyBrightnessManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/brightness/IBrightnessManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyContentOpenMetricsManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyCustomActionMenuController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/android/menu/CustomActionMenuController;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyDefaultCustomSelectionButtonsController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyDeviceContext:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/application/IDeviceContext;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyKeyEventController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/reader/KeyEventController;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyLibraryController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/library/ILibraryController;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyMarkedPositionManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyPanelController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/panels/IPanelController;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyReaderLayoutCustomizer:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyRegistrationManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/application/IRegistrationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyShareHelper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/reader/IShareHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final lazySynchronizationManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/sync/SynchronizationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyUserSettingsController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            ">;"
        }
    .end annotation
.end field

.field protected final libraryLoader:Lcom/amazon/kcp/application/INativeLibraryLoader;

.field private final libraryService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ">;"
        }
    .end annotation
.end field

.field private localStorage:Lcom/amazon/kcp/application/ILocalStorage;

.field private localeManager:Lcom/amazon/kindle/services/locale/ILocaleManager;

.field protected volatile messengerService:Lcom/amazon/kindle/krx/messaging/IMessengerService;

.field protected final messengerServiceLock:Ljava/lang/Object;

.field protected volatile mobiDocFactory:Lcom/amazon/android/docviewer/mobi/MobiDocFactory;

.field protected final mobiDocFactoryLock:Ljava/lang/Object;

.field protected volatile mobiRenderElementFactory:Lcom/amazon/android/docviewer/mobi/IMobiRenderElementFactory;

.field protected final mobiRenderElementFactoryLock:Ljava/lang/Object;

.field private final moduleInitializer:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/config/IModuleInitializer;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile multipleProfileHelper:Lcom/amazon/kcp/application/IMultipleProfileHelper;

.field protected final multipleProfileHelperLock:Ljava/lang/Object;

.field protected networkService:Lcom/amazon/kindle/network/INetworkService;

.field protected volatile noteUIProvider:Lcom/amazon/kcp/reader/notebook/INoteUIProvider;

.field protected final noteUIProviderLock:Ljava/lang/Object;

.field protected volatile notificationController:Lcom/amazon/kcp/application/AndroidNotificationController;

.field private final notificationControllerLock:Ljava/lang/Object;

.field protected volatile notificationSettingsManager:Lcom/amazon/kcp/notifications/INotificationSettingsManager;

.field protected final notificationSettingsManagerLock:Ljava/lang/Object;

.field private volatile notificationUriActionManager:Lcom/amazon/kcp/notifications/handlers/NotificationUriActionManager;

.field private final notificationUriActionManagerLock:Ljava/lang/Object;

.field protected volatile pageNavigatorFactory:Lcom/amazon/kcp/reader/nav/PageNavigatorFactory;

.field protected final pageNavigatorFactoryLock:Ljava/lang/Object;

.field private volatile pageNumberProviderFactory:Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/IPageNumberProviderFactory;

.field private final pageNumberProviderFactoryLock:Ljava/lang/Object;

.field protected phoenixCompatibilityAdapter:Lcom/amazon/phoenix/IPhoenixCompatibilityAdapter;

.field protected final phoenixCompatibilityAdapterLock:Ljava/lang/Object;

.field private volatile progressTrackerDAO:Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;

.field private final progressTrackerDAOLock:Ljava/lang/Object;

.field protected volatile readDataSyncManager:Lcom/amazon/kcp/sync/IReadDataSyncManager;

.field protected final readDataSyncManagerLock:Ljava/lang/Object;

.field private final readerController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;"
        }
    .end annotation
.end field

.field private volatile readerEventHandler:Lcom/amazon/kindle/tutorial/IReaderEventHandler;

.field private final readerEventHandlerLock:Ljava/lang/Object;

.field protected volatile readerNotificationsManager:Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;

.field protected final readerNotificationsManagerLock:Ljava/lang/Object;

.field private readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field protected volatile remoteTodoService:Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;

.field protected final remoteTodoServiceLock:Ljava/lang/Object;

.field private final restrictionHandler:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile revokeOwnershipResumer:Lcom/amazon/kindle/IRevokeOwnershipResumer;

.field protected final revokeOwnershipResumerLock:Ljava/lang/Object;

.field protected volatile revokeOwnershipTaskCreator:Lcom/amazon/kcp/revoke/IRevokeOwnershipTaskCreator;

.field protected final revokeOwnershipTaskCreatorLock:Ljava/lang/Object;

.field private volatile revokeTrackerDAO:Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;

.field private final revokeTrackerDAOLock:Ljava/lang/Object;

.field protected volatile rotationHandler:Lcom/amazon/kcp/reader/IRotationHandler;

.field protected final rotationHandlerLock:Ljava/lang/Object;

.field private volatile sharedSettingsController:Lcom/amazon/kcp/application/SettingsController;

.field private final sharedSettingsControllerLock:Ljava/lang/Object;

.field private volatile sidecarDownloadService:Lcom/amazon/kindle/services/download/ISidecarDownloadService;

.field private final sidecarDownloadServiceLock:Ljava/lang/Object;

.field private final sidecarProviderRegistry:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private snapshotController:Lcom/amazon/kcp/application/ISnapshotController;

.field protected volatile sortFriendlyFormatter:Lcom/amazon/kindle/utils/ISortFriendlyFormatter;

.field protected final sortFriendlyFormatterLock:Ljava/lang/Object;

.field protected volatile storageLocationPreference:Lcom/amazon/kindle/sdcard/IStorageLocationPreference;

.field protected final storageLocationPreferenceLock:Ljava/lang/Object;

.field protected volatile storeIntentCreator:Lcom/amazon/kcp/store/IStoreIntentCreator;

.field protected final storeIntentCreatorLock:Ljava/lang/Object;

.field protected volatile storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

.field protected final storeManagerLock:Ljava/lang/Object;

.field protected volatile storePathProvider:Lcom/amazon/kcp/store/StorePathProvider;

.field protected final storePathProviderLock:Ljava/lang/Object;

.field protected volatile tutorialManager:Lcom/amazon/kcp/info/TutorialManager;

.field protected final tutorialManagerLock:Ljava/lang/Object;

.field private volatile updateManager:Lcom/amazon/kcp/application/internal/IUpdateManager;

.field private final updateManagerLock:Ljava/lang/Object;

.field protected volatile viewAccessibilityInitializer:Lcom/amazon/kcp/reader/accessibility/IViewAccessibilityInitializer;

.field protected final viewAccessibilityInitializerLock:Ljava/lang/Object;

.field protected volatile viewIdGenerator:Lcom/amazon/kcp/reader/ui/ViewIdGenerator;

.field protected final viewIdGeneratorLock:Ljava/lang/Object;

.field protected volatile virtualViewHierarchyManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

.field protected final virtualViewHierarchyManagerLock:Ljava/lang/Object;

.field private volatile webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

.field private final webRequestManagerLock:Ljava/lang/Object;

.field protected volatile webStoreController:Lcom/amazon/kcp/store/IWebStoreController;

.field protected final webStoreControllerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 225
    const-class v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/cover/ICoverImageService;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/application/IAssociateInformationProvider;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/config/IModuleInitializer;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/application/IDeviceInformationProvider;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/content/IGroupService;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/io/IFileConnectionFactory;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/android/util/BroadcastReceiverHelper;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/panels/IPanelController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/application/IRegistrationManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/reader/IShareHelper;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/reader/KeyEventController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/android/menu/CustomActionMenuController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/application/IDeviceContext;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/brightness/IBrightnessManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/application/IAndroidApplicationController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/library/ILibraryController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/services/authentication/IAccountSecretProvider;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/mobipocket/android/library/reader/AndroidSecurity;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/sync/SynchronizationManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/services/download/IDownloadService;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1651
    new-instance v1, Lcom/amazon/kcp/application/DefaultNativeLibraryLoader;

    invoke-direct {v1}, Lcom/amazon/kcp/application/DefaultNativeLibraryLoader;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->libraryLoader:Lcom/amazon/kcp/application/INativeLibraryLoader;

    .line 1655
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookBroadcastReceivers:Ljava/util/List;

    .line 1656
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookBroadcastReceiversLock:Ljava/lang/Object;

    .line 1664
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->updateManagerLock:Ljava/lang/Object;

    .line 1667
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->applicationSettingsLock:Ljava/lang/Object;

    .line 1670
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->pageNumberProviderFactoryLock:Ljava/lang/Object;

    .line 1673
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->emptyLibraryStringProviderFactoryLock:Ljava/lang/Object;

    .line 1676
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->sharedSettingsControllerLock:Ljava/lang/Object;

    .line 1679
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->appSettingsControllerLock:Ljava/lang/Object;

    .line 1682
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->notificationControllerLock:Ljava/lang/Object;

    .line 1685
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->sidecarDownloadServiceLock:Ljava/lang/Object;

    .line 1688
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->contentUpdateServiceLock:Ljava/lang/Object;

    .line 1691
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->annotationConversionServiceLock:Ljava/lang/Object;

    .line 1694
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->dcmMetricsFactoryProviderLock:Ljava/lang/Object;

    .line 1697
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->webRequestManagerLock:Ljava/lang/Object;

    .line 1701
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->clippingServiceLock:Ljava/lang/Object;

    .line 1704
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->readerEventHandlerLock:Ljava/lang/Object;

    .line 1707
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->progressTrackerDAOLock:Ljava/lang/Object;

    .line 1710
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->revokeTrackerDAOLock:Ljava/lang/Object;

    .line 1713
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->notificationUriActionManagerLock:Ljava/lang/Object;

    .line 1716
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->awvFactoryLock:Ljava/lang/Object;

    .line 1719
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->chainedListenerLock:Ljava/lang/Object;

    .line 1722
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->downloadResumerLock:Ljava/lang/Object;

    .line 1726
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->tutorialManagerLock:Ljava/lang/Object;

    .line 1729
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->noteUIProviderLock:Ljava/lang/Object;

    .line 1732
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookLockManagerLock:Ljava/lang/Object;

    .line 1735
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookPreloaderLock:Ljava/lang/Object;

    .line 1738
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->pageNavigatorFactoryLock:Ljava/lang/Object;

    .line 1741
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->indexerProviderLock:Ljava/lang/Object;

    .line 1743
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fileConverterLock:Ljava/lang/Object;

    .line 1746
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->mobiDocFactoryLock:Ljava/lang/Object;

    .line 1749
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->webStoreControllerLock:Ljava/lang/Object;

    .line 1752
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontConfigProviderLock:Ljava/lang/Object;

    .line 1755
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->cookieJarLock:Ljava/lang/Object;

    .line 1758
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->contentDBLock:Ljava/lang/Object;

    .line 1761
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->androidDeviceInformationProviderLock:Ljava/lang/Object;

    .line 1764
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->initialThemeConfigLock:Ljava/lang/Object;

    .line 1768
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->langDetectorLock:Ljava/lang/Object;

    .line 1771
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->coverCacheManagerLock:Ljava/lang/Object;

    .line 1774
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->applicationCapabilitiesLock:Ljava/lang/Object;

    .line 1777
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storeManagerLock:Ljava/lang/Object;

    .line 1780
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->messengerServiceLock:Ljava/lang/Object;

    .line 1783
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->collectionDAOLock:Ljava/lang/Object;

    .line 1786
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->collectionsSyncManagerLock:Ljava/lang/Object;

    .line 1789
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->readDataSyncManagerLock:Ljava/lang/Object;

    .line 1792
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->defaultCoverBackgroundProviderLock:Ljava/lang/Object;

    .line 1795
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->ksoCacheManagerLock:Ljava/lang/Object;

    .line 1798
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->annotationsManagerLock:Ljava/lang/Object;

    .line 1801
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->phoenixCompatibilityAdapterLock:Ljava/lang/Object;

    .line 1804
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storageLocationPreferenceLock:Ljava/lang/Object;

    .line 1806
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->falkorATLSyncManagerLock:Ljava/lang/Object;

    .line 1808
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->falkorLastReadEpisodeSyncManagerLock:Ljava/lang/Object;

    .line 1813
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->multipleProfileHelperLock:Ljava/lang/Object;

    .line 1816
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->sortFriendlyFormatterLock:Ljava/lang/Object;

    .line 1819
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->authenticationManagerLock:Ljava/lang/Object;

    .line 1822
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->cmsItemFactoryLock:Ljava/lang/Object;

    .line 1825
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->cmsItemLocationFactoryLock:Ljava/lang/Object;

    .line 1828
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookOwnershipRecorderLock:Ljava/lang/Object;

    .line 1831
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontFactoryLock:Ljava/lang/Object;

    .line 1834
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontConfigInitializerLock:Ljava/lang/Object;

    .line 1837
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->revokeOwnershipResumerLock:Ljava/lang/Object;

    .line 1840
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->revokeOwnershipTaskCreatorLock:Ljava/lang/Object;

    .line 1842
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->cipherLock:Ljava/lang/Object;

    .line 1845
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->mobiRenderElementFactoryLock:Ljava/lang/Object;

    .line 1848
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storeIntentCreatorLock:Ljava/lang/Object;

    .line 1851
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storePathProviderLock:Ljava/lang/Object;

    .line 1854
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->virtualViewHierarchyManagerLock:Ljava/lang/Object;

    .line 1857
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->viewAccessibilityInitializerLock:Ljava/lang/Object;

    .line 1860
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->accessibilitySpeakerLock:Ljava/lang/Object;

    .line 1863
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->viewIdGeneratorLock:Ljava/lang/Object;

    .line 1866
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->deviceInformationLock:Ljava/lang/Object;

    .line 1869
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->colorModeFactoryLock:Ljava/lang/Object;

    .line 1872
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->remoteTodoServiceLock:Ljava/lang/Object;

    .line 1875
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookmarkStylerLock:Ljava/lang/Object;

    .line 1878
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->rotationHandlerLock:Ljava/lang/Object;

    .line 1881
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->readerNotificationsManagerLock:Ljava/lang/Object;

    .line 1884
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->notificationSettingsManagerLock:Ljava/lang/Object;

    .line 1887
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->kwisClientHandlerLock:Ljava/lang/Object;

    move-object v1, p1

    .line 292
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->coverManager:Ldagger/Lazy;

    move-object v1, p2

    .line 293
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->associateInformationProvider:Ldagger/Lazy;

    move-object v1, p3

    .line 294
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->moduleInitializer:Ldagger/Lazy;

    move-object v1, p4

    .line 295
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->deviceInformationProvider:Ldagger/Lazy;

    move-object v1, p5

    .line 296
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->sidecarProviderRegistry:Ldagger/Lazy;

    move-object v1, p6

    .line 297
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->libraryService:Ldagger/Lazy;

    move-object v1, p7

    .line 298
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->groupService:Ldagger/Lazy;

    move-object v1, p8

    .line 299
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fileSystem:Ldagger/Lazy;

    move-object v1, p9

    .line 300
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->readerController:Ldagger/Lazy;

    move-object v1, p10

    .line 301
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->broadcastReceiverHelper:Ldagger/Lazy;

    move-object v1, p11

    .line 302
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->restrictionHandler:Ldagger/Lazy;

    move-object v1, p12

    .line 303
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->accessibilityStateListener:Ldagger/Lazy;

    move-object v1, p13

    .line 304
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyPanelController:Ldagger/Lazy;

    move-object/from16 v1, p14

    .line 305
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyRegistrationManager:Ldagger/Lazy;

    move-object/from16 v1, p15

    .line 306
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyShareHelper:Ldagger/Lazy;

    move-object/from16 v1, p16

    .line 307
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyContentOpenMetricsManager:Ldagger/Lazy;

    move-object/from16 v1, p17

    .line 308
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyUserSettingsController:Ldagger/Lazy;

    move-object/from16 v1, p18

    .line 309
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyKeyEventController:Ldagger/Lazy;

    move-object/from16 v1, p19

    .line 310
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyCustomActionMenuController:Ldagger/Lazy;

    move-object/from16 v1, p20

    .line 311
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyDefaultCustomSelectionButtonsController:Ldagger/Lazy;

    move-object/from16 v1, p21

    .line 312
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyDeviceContext:Ldagger/Lazy;

    move-object/from16 v1, p22

    .line 313
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyBrightnessManager:Ldagger/Lazy;

    move-object/from16 v1, p23

    .line 314
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyMarkedPositionManager:Ldagger/Lazy;

    move-object/from16 v1, p24

    .line 315
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyReaderLayoutCustomizer:Ldagger/Lazy;

    move-object/from16 v1, p25

    .line 316
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyAndroidApplicationController:Ldagger/Lazy;

    move-object/from16 v1, p26

    .line 317
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyLibraryController:Ldagger/Lazy;

    move-object/from16 v1, p27

    .line 318
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyAccountSecretProvider:Ldagger/Lazy;

    move-object/from16 v1, p28

    .line 319
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyAndroidSecurity:Ldagger/Lazy;

    move-object/from16 v1, p29

    .line 320
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazySynchronizationManager:Ldagger/Lazy;

    move-object/from16 v1, p30

    .line 321
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->assetStateManager:Ldagger/Lazy;

    move-object/from16 v1, p31

    .line 322
    iput-object v1, v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->downloadService:Ldagger/Lazy;

    return-void
.end method

.method private getDefaultTodoHandlers()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;",
            ">;"
        }
    .end annotation

    .line 1253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    new-instance v1, Lcom/amazon/kindle/todo/AccountSecretsTodoItemHandler;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/todo/AccountSecretsTodoItemHandler;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1255
    new-instance v1, Lcom/amazon/kindle/todo/DeleteContentTodoItemHandler;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/todo/DeleteContentTodoItemHandler;-><init>(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/application/IKindleApplicationController;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1256
    new-instance v1, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1257
    new-instance v1, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;-><init>(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/application/IKindleApplicationController;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1258
    new-instance v1, Lcom/amazon/kindle/todo/DynamicConfigTodoItemHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/todo/DynamicConfigTodoItemHandler;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1259
    new-instance v1, Lcom/amazon/kindle/todo/RemoteCommandTodoItemHandler;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/todo/RemoteCommandTodoItemHandler;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1260
    new-instance v1, Lcom/amazon/kindle/todo/SoftwareUpdateTodoItemHandler;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/todo/SoftwareUpdateTodoItemHandler;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1261
    new-instance v1, Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler;-><init>(Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/kcp/application/IKindleApplicationController;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1262
    new-instance v1, Lcom/amazon/kindle/todo/UpdateDeviceCredentialsTodoItemHandler;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/todo/UpdateDeviceCredentialsTodoItemHandler;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1263
    new-instance v1, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v2

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAnnotationsManager()Lcom/amazon/kindle/annotation/IAnnotationsManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;-><init>(Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/kindle/annotation/IAnnotationsManager;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1264
    new-instance v1, Lcom/amazon/kindle/todo/WatermarkSnapshotTodoItemHandler;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/todo/WatermarkSnapshotTodoItemHandler;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1265
    new-instance v1, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1266
    new-instance v1, Lcom/amazon/kindle/todo/SMDPollTodoItemHandler;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/todo/SMDPollTodoItemHandler;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1267
    new-instance v1, Lcom/amazon/kindle/todo/ContentSnapshotTodoItemHandler;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/todo/ContentSnapshotTodoItemHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1268
    new-instance v1, Lcom/amazon/kindle/todo/RemoveDownloadTodoItemHandler;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/todo/RemoveDownloadTodoItemHandler;-><init>(Lcom/amazon/kindle/content/ILibraryService;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getLangMap()Ljava/io/File;
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;,
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskWriteViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 796
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "langmap"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 800
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 801
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$raw;->langmap:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 802
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    .line 803
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 804
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 805
    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 806
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 807
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 810
    sget-object v1, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->TAG:Ljava/lang/String;

    const-string v2, "Failed find/save langmap"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method calculateMaxImageDimension(Lcom/amazon/kindle/cover/ImageSizes$Type;II)Lcom/amazon/kindle/util/drawing/Dimension;
    .locals 2

    .line 429
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->getCoverImageDimension(Lcom/amazon/kindle/cover/ImageSizes$Type;)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object p1

    .line 430
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 431
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 432
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/util/drawing/Dimension;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 433
    new-instance p1, Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-direct {p1, p2, p3}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {v0}, Lcom/amazon/kindle/util/drawing/Dimension;->merge([Lcom/amazon/kindle/util/drawing/Dimension;)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object p1

    return-object p1
.end method

.method protected abstract createDCMMetricsFactoryProviderInstance()Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;
.end method

.method public abstract createImageSizes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/cover/ImageSizes$Type;",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/library/models/BookType;",
            "Lcom/amazon/kindle/util/drawing/Dimension;",
            ">;>;"
        }
    .end annotation
.end method

.method public createInfoCardController(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kcp/reader/ui/ReaderLayout;)Lcom/amazon/kcp/reader/InfoCardController;
    .locals 1

    .line 740
    new-instance v0, Lcom/amazon/kcp/reader/InfoCardController;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getInfoCards()Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/amazon/kcp/reader/InfoCardController;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/kindle/krx/providers/IProviderRegistry;)V

    return-object v0
.end method

.method public createOverlayController(Landroid/view/Window;)Lcom/amazon/android/util/IOsOverlayController;
    .locals 1

    .line 1422
    new-instance v0, Lcom/amazon/android/util/AndroidOsOverlayController;

    invoke-direct {v0, p1}, Lcom/amazon/android/util/AndroidOsOverlayController;-><init>(Landroid/view/Window;)V

    return-object v0
.end method

.method public createViewDrawFilter(ILandroid/view/View;)Lcom/amazon/android/docviewer/filter/IViewDrawFilter;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createWifiLock()Lcom/amazon/kindle/network/IWifiLockManager$IWifiLock;
    .locals 1

    .line 656
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/network/AndroidWifiLockManager;->getInstance(Landroid/content/Context;)Lcom/amazon/kindle/network/AndroidWifiLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/network/AndroidWifiLockManager;->getNewWifiLock()Lcom/amazon/kindle/network/IWifiLockManager$IWifiLock;

    move-result-object v0

    return-object v0
.end method

.method public getAWVFactory()Lcom/amazon/android/webkit/AmazonWebKitFactory;
    .locals 3

    .line 1161
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->awvFactory:Lcom/amazon/android/webkit/AmazonWebKitFactory;

    if-nez v0, :cond_1

    .line 1162
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->awvFactoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1163
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->awvFactory:Lcom/amazon/android/webkit/AmazonWebKitFactory;

    if-nez v1, :cond_0

    .line 1164
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebKitFactories;->getDefaultFactory()Lcom/amazon/android/webkit/AmazonWebKitFactory;

    move-result-object v1

    .line 1165
    iget-object v2, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/android/webkit/AmazonWebKitFactory;->initialize(Landroid/content/Context;)V

    .line 1166
    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->awvFactory:Lcom/amazon/android/webkit/AmazonWebKitFactory;

    .line 1168
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1170
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->awvFactory:Lcom/amazon/android/webkit/AmazonWebKitFactory;

    return-object v0
.end method

.method public getAccessibilityDelegate(Lcom/amazon/android/docviewer/KindleDocView;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/ui/ReaderLayout;)Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;
    .locals 1

    .line 1150
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;-><init>(Lcom/amazon/android/docviewer/KindleDocView;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    return-object v0
.end method

.method public getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;
    .locals 3

    .line 1175
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->accessibilitySpeaker:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    if-nez v0, :cond_1

    .line 1176
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->accessibilitySpeakerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1177
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->accessibilitySpeaker:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    if-nez v1, :cond_0

    .line 1178
    new-instance v1, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    iget-object v2, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->accessibilitySpeaker:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    .line 1180
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1182
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->accessibilitySpeaker:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    return-object v0
.end method

.method public final getAccessibilityStateListener()Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;
    .locals 1

    .line 1389
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->accessibilityStateListener:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;

    return-object v0
.end method

.method public getAccountSecretProvider()Lcom/amazon/kindle/services/authentication/IAccountSecretProvider;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyAccountSecretProvider:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/authentication/IAccountSecretProvider;

    return-object v0
.end method

.method public getAnnotationConversionService()Lcom/amazon/kindle/annotationconversion/IAnnotationConversionService;
    .locals 3

    .line 707
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->annotationConversionService:Lcom/amazon/kindle/annotationconversion/IAnnotationConversionService;

    if-nez v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->annotationConversionServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 709
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->annotationConversionService:Lcom/amazon/kindle/annotationconversion/IAnnotationConversionService;

    if-nez v1, :cond_0

    .line 710
    new-instance v1, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionService;-><init>(Lcom/amazon/kindle/webservices/IWebRequestManager;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->annotationConversionService:Lcom/amazon/kindle/annotationconversion/IAnnotationConversionService;

    .line 712
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 714
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->annotationConversionService:Lcom/amazon/kindle/annotationconversion/IAnnotationConversionService;

    return-object v0
.end method

.method public getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->appSettingsController:Lcom/amazon/kcp/application/AppSettingsController;

    if-nez v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->appSettingsControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 588
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->appSettingsController:Lcom/amazon/kcp/application/AppSettingsController;

    if-nez v1, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/application/AppSettingsController;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/AppSettingsController;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->appSettingsController:Lcom/amazon/kcp/application/AppSettingsController;

    .line 591
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 593
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->appSettingsController:Lcom/amazon/kcp/application/AppSettingsController;

    return-object v0
.end method

.method public abstract getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;
.end method

.method public getApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyAndroidApplicationController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/IAndroidApplicationController;

    return-object v0
.end method

.method public getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->applicationSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    if-nez v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->applicationSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->applicationSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    if-nez v1, :cond_0

    .line 506
    new-instance v1, Lcom/amazon/system/io/PersistentSettingsHelper;

    invoke-direct {v1}, Lcom/amazon/system/io/PersistentSettingsHelper;-><init>()V

    .line 507
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/system/io/IPersistentSettingsHelper;->load(Lcom/amazon/kindle/io/IFileConnectionFactory;)Z

    .line 508
    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->applicationSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    .line 510
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 512
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->applicationSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    return-object v0
.end method

.method public getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->assetStateManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/download/assets/IAssetStateManager;

    return-object v0
.end method

.method public final getAssociateInformationProvider()Lcom/amazon/kcp/application/IAssociateInformationProvider;
    .locals 1

    .line 1336
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->associateInformationProvider:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/IAssociateInformationProvider;

    return-object v0
.end method

.method public getBookBroadcastReceivers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/content/IntentFilter;",
            "Landroid/content/BroadcastReceiver;",
            ">;>;"
        }
    .end annotation

    .line 1373
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookBroadcastReceivers:Ljava/util/List;

    return-object v0
.end method

.method public getBookLockManager()Lcom/amazon/kcp/reader/IBookLockManager;
    .locals 2

    .line 1596
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookLockManager:Lcom/amazon/kcp/reader/IBookLockManager;

    if-nez v0, :cond_1

    .line 1597
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookLockManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1598
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookLockManager:Lcom/amazon/kcp/reader/IBookLockManager;

    if-nez v1, :cond_0

    .line 1599
    new-instance v1, Lcom/amazon/kcp/reader/BookLockManager;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/BookLockManager;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookLockManager:Lcom/amazon/kcp/reader/IBookLockManager;

    .line 1601
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1603
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookLockManager:Lcom/amazon/kcp/reader/IBookLockManager;

    return-object v0
.end method

.method public getBookOwnershipRecorder()Lcom/amazon/kindle/content/IBookOwnershipRecorder;
    .locals 2

    .line 768
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookOwnershipRecorder:Lcom/amazon/kindle/content/IBookOwnershipRecorder;

    if-nez v0, :cond_1

    .line 769
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookOwnershipRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 770
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookOwnershipRecorder:Lcom/amazon/kindle/content/IBookOwnershipRecorder;

    if-nez v1, :cond_0

    .line 771
    new-instance v1, Lcom/amazon/kcp/application/AbstractKindleObjectFactory$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory$2;-><init>(Lcom/amazon/kcp/application/AbstractKindleObjectFactory;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookOwnershipRecorder:Lcom/amazon/kindle/content/IBookOwnershipRecorder;

    .line 787
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 789
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookOwnershipRecorder:Lcom/amazon/kindle/content/IBookOwnershipRecorder;

    return-object v0
.end method

.method public getBookPreloader()Lcom/amazon/kcp/application/IBookPreloader;
    .locals 2

    .line 1583
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookPreloader:Lcom/amazon/kcp/application/IBookPreloader;

    if-nez v0, :cond_1

    .line 1584
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookPreloaderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1585
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookPreloader:Lcom/amazon/kcp/application/IBookPreloader;

    if-nez v1, :cond_0

    .line 1586
    new-instance v1, Lcom/amazon/kcp/application/versionupgrade/NoopBookPreloader;

    invoke-direct {v1}, Lcom/amazon/kcp/application/versionupgrade/NoopBookPreloader;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookPreloader:Lcom/amazon/kcp/application/IBookPreloader;

    .line 1588
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1590
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookPreloader:Lcom/amazon/kcp/application/IBookPreloader;

    return-object v0
.end method

.method public getBookmarkStyler()Lcom/amazon/kcp/reader/ui/IBookmarkStyler;
    .locals 2

    .line 1284
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookmarkStyler:Lcom/amazon/kcp/reader/ui/IBookmarkStyler;

    if-nez v0, :cond_1

    .line 1285
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookmarkStylerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1286
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookmarkStyler:Lcom/amazon/kcp/reader/ui/IBookmarkStyler;

    if-nez v1, :cond_0

    .line 1287
    new-instance v1, Lcom/amazon/kcp/reader/ui/DefaultBookmarkStyler;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/ui/DefaultBookmarkStyler;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookmarkStyler:Lcom/amazon/kcp/reader/ui/IBookmarkStyler;

    .line 1289
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1291
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->bookmarkStyler:Lcom/amazon/kcp/reader/ui/IBookmarkStyler;

    return-object v0
.end method

.method public getBrightnessManager()Lcom/amazon/kindle/brightness/IBrightnessManager;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyBrightnessManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/brightness/IBrightnessManager;

    return-object v0
.end method

.method public final getBroadcastReceiverHelper()Lcom/amazon/android/util/BroadcastReceiverHelper;
    .locals 1

    .line 1378
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->broadcastReceiverHelper:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/util/BroadcastReceiverHelper;

    return-object v0
.end method

.method public getBroadcastReceivers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/content/IntentFilter;",
            "Landroid/content/BroadcastReceiver;",
            ">;>;"
        }
    .end annotation

    .line 1356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1358
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver;

    invoke-direct {v3}, Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1360
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/amazon/kcp/application/ShutdownBroadcastReceiver;

    invoke-direct {v3}, Lcom/amazon/kcp/application/ShutdownBroadcastReceiver;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getCMSActionRunnerFactory()Lcom/amazon/kindle/cms/ICMSActionRunnerFactory;
    .locals 1

    .line 1393
    new-instance v0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory$3;-><init>(Lcom/amazon/kcp/application/AbstractKindleObjectFactory;)V

    return-object v0
.end method

.method public getCMSItemFactory()Lcom/amazon/kindle/cms/ICMSItemFactory;
    .locals 2

    .line 1087
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->cmsItemFactory:Lcom/amazon/kindle/cms/ICMSItemFactory;

    if-nez v0, :cond_1

    .line 1088
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->cmsItemFactoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1089
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->cmsItemFactory:Lcom/amazon/kindle/cms/ICMSItemFactory;

    if-nez v1, :cond_0

    .line 1090
    new-instance v1, Lcom/amazon/kindle/cms/DefaultCMSItemFactory;

    invoke-direct {v1}, Lcom/amazon/kindle/cms/DefaultCMSItemFactory;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->cmsItemFactory:Lcom/amazon/kindle/cms/ICMSItemFactory;

    .line 1092
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1094
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->cmsItemFactory:Lcom/amazon/kindle/cms/ICMSItemFactory;

    return-object v0
.end method

.method public getCMSItemLocationFactory()Lcom/amazon/kindle/cms/ICMSItemLocationFactory;
    .locals 2

    .line 1099
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->cmsItemLocationFactory:Lcom/amazon/kindle/cms/ICMSItemLocationFactory;

    if-nez v0, :cond_1

    .line 1100
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->cmsItemLocationFactoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1101
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->cmsItemLocationFactory:Lcom/amazon/kindle/cms/ICMSItemLocationFactory;

    if-nez v1, :cond_0

    .line 1102
    new-instance v1, Lcom/amazon/kindle/cms/DefaultCMSItemLocationFactory;

    invoke-direct {v1}, Lcom/amazon/kindle/cms/DefaultCMSItemLocationFactory;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->cmsItemLocationFactory:Lcom/amazon/kindle/cms/ICMSItemLocationFactory;

    .line 1104
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1106
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->cmsItemLocationFactory:Lcom/amazon/kindle/cms/ICMSItemLocationFactory;

    return-object v0
.end method

.method protected getCacheMemorySize()I
    .locals 5

    .line 873
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    .line 875
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getMaxApplicationMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    move-wide v0, v2

    :cond_0
    long-to-int v1, v0

    shr-int/lit8 v0, v1, 0x2

    return v0
.end method

.method public getClippingService()Lcom/amazon/kindle/clipping/IClippingService;
    .locals 3

    .line 1296
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->clippingService:Lcom/amazon/kindle/clipping/IClippingService;

    if-nez v0, :cond_1

    .line 1297
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->clippingServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1298
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->clippingService:Lcom/amazon/kindle/clipping/IClippingService;

    if-nez v1, :cond_0

    .line 1299
    new-instance v1, Lcom/amazon/kindle/clipping/ClippingService;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/clipping/ClippingService;-><init>(Lcom/amazon/kindle/content/ILibraryService;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->clippingService:Lcom/amazon/kindle/clipping/IClippingService;

    .line 1301
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1303
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->clippingService:Lcom/amazon/kindle/clipping/IClippingService;

    return-object v0
.end method

.method public getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;
    .locals 2

    .line 1187
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->colorModeFactory:Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    if-nez v0, :cond_1

    .line 1188
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->colorModeFactoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1189
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->colorModeFactory:Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    if-nez v1, :cond_0

    .line 1190
    new-instance v1, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    invoke-direct {v1}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->colorModeFactory:Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    .line 1192
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1194
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->colorModeFactory:Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    return-object v0
.end method

.method public final getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;
    .locals 1

    .line 1313
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyContentOpenMetricsManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    return-object v0
.end method

.method public getContentUpdateService()Lcom/amazon/kindle/contentupdate/IContentUpdateService;
    .locals 13

    .line 688
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->contentUpdateService:Lcom/amazon/kindle/contentupdate/IContentUpdateService;

    if-nez v0, :cond_1

    .line 689
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->contentUpdateServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 690
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->contentUpdateService:Lcom/amazon/kindle/contentupdate/IContentUpdateService;

    if-nez v1, :cond_0

    .line 691
    new-instance v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v4

    .line 692
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getRemoteTodoService()Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;

    move-result-object v5

    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAnnotationsManager()Lcom/amazon/kindle/annotation/IAnnotationsManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v7

    .line 693
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v8

    .line 694
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v9

    .line 695
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v10

    .line 696
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getAnnotationConversionService()Lcom/amazon/kindle/annotationconversion/IAnnotationConversionService;

    move-result-object v11

    .line 697
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object v2, v1

    invoke-direct/range {v2 .. v12}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;-><init>(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/services/download/IDownloadService;Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;Lcom/amazon/kindle/annotation/IAnnotationsManager;Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kindle/download/assets/IAssetStateManager;Lcom/amazon/kindle/cover/ICoverImageService;Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/annotationconversion/IAnnotationConversionService;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->contentUpdateService:Lcom/amazon/kindle/contentupdate/IContentUpdateService;

    .line 699
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 701
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->contentUpdateService:Lcom/amazon/kindle/contentupdate/IContentUpdateService;

    return-object v0
.end method

.method public getContentViewAccessibilityMixin()Lcom/amazon/kcp/reader/accessibility/IContentViewAccessibilityMixin;
    .locals 3

    const-string v0, "getting accessibilityMixin"

    const/4 v1, 0x1

    .line 1140
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1141
    new-instance v1, Lcom/amazon/kcp/reader/accessibility/ContentViewAccessibilityMixin;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/accessibility/ContentViewAccessibilityMixin;-><init>()V

    const/4 v2, 0x0

    .line 1142
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 726
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context required but it has not been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCookieJar()Lcom/amazon/kcp/store/CookieJar;
    .locals 4

    .line 605
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->cookieJar:Lcom/amazon/kcp/store/CookieJar;

    if-nez v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->cookieJarLock:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->cookieJar:Lcom/amazon/kcp/store/CookieJar;

    if-nez v1, :cond_0

    .line 608
    new-instance v1, Lcom/amazon/kcp/store/CookieJar;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kcp/store/CookieJar;-><init>(Lcom/amazon/kindle/persistence/ISecureStorage;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->cookieJar:Lcom/amazon/kcp/store/CookieJar;

    .line 610
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 612
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->cookieJar:Lcom/amazon/kcp/store/CookieJar;

    return-object v0
.end method

.method public getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;
    .locals 8

    .line 859
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->coverCacheManager:Lcom/amazon/kcp/cover/ICoverCacheManager;

    if-nez v0, :cond_1

    .line 860
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->coverCacheManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 861
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->coverCacheManager:Lcom/amazon/kcp/cover/ICoverCacheManager;

    if-nez v1, :cond_0

    .line 862
    new-instance v1, Lcom/amazon/kcp/cover/BitmapCoverCacheManager;

    .line 863
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v4

    .line 864
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v5

    .line 865
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->createImageSizes()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/cover/ImageSizes;->getInstance(Ljava/util/Map;)Lcom/amazon/kindle/cover/ImageSizes;

    move-result-object v6

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getCacheMemorySize()I

    move-result v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/cover/BitmapCoverCacheManager;-><init>(Landroid/content/Context;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/cover/ICoverImageService;Lcom/amazon/kindle/cover/ImageSizes;I)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->coverCacheManager:Lcom/amazon/kcp/cover/ICoverCacheManager;

    .line 867
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 869
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->coverCacheManager:Lcom/amazon/kcp/cover/ICoverCacheManager;

    return-object v0
.end method

.method public getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->coverManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/cover/ICoverImageService;

    return-object v0
.end method

.method public getCustomActionMenuController()Lcom/amazon/android/menu/CustomActionMenuController;
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyCustomActionMenuController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/menu/CustomActionMenuController;

    return-object v0
.end method

.method public getDCMMetricsFactoryProvider()Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;
    .locals 2

    .line 892
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->dcmMetricsFactoryProvider:Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;

    if-nez v0, :cond_1

    .line 893
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->dcmMetricsFactoryProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 894
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->dcmMetricsFactoryProvider:Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;

    if-nez v1, :cond_0

    .line 895
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->createDCMMetricsFactoryProviderInstance()Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->dcmMetricsFactoryProvider:Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;

    .line 897
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 899
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->dcmMetricsFactoryProvider:Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;

    return-object v0
.end method

.method public getDefaultCoverBackgroundProvider()Lcom/amazon/kcp/cover/IDefaultCoverBackgroundProvider;
    .locals 2

    .line 1461
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->defaultCoverBackgroundProvider:Lcom/amazon/kcp/cover/IDefaultCoverBackgroundProvider;

    if-nez v0, :cond_1

    .line 1462
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->defaultCoverBackgroundProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1463
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->defaultCoverBackgroundProvider:Lcom/amazon/kcp/cover/IDefaultCoverBackgroundProvider;

    if-nez v1, :cond_0

    .line 1464
    invoke-static {}, Lcom/amazon/kcp/cover/DefaultCoverBackgroundProviderFactory;->newProvider()Lcom/amazon/kcp/cover/IDefaultCoverBackgroundProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->defaultCoverBackgroundProvider:Lcom/amazon/kcp/cover/IDefaultCoverBackgroundProvider;

    .line 1466
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1468
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->defaultCoverBackgroundProvider:Lcom/amazon/kcp/cover/IDefaultCoverBackgroundProvider;

    return-object v0
.end method

.method public getDefaultCustomSelectionButtonsController()Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyDefaultCustomSelectionButtonsController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;

    return-object v0
.end method

.method public getDeviceConfigurator()Lcom/amazon/kcp/application/IAndroidDeviceConfigurator;
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->deviceConfigurator:Lcom/amazon/kcp/application/IAndroidDeviceConfigurator;

    return-object v0
.end method

.method public getDeviceContext()Lcom/amazon/kcp/application/IDeviceContext;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyDeviceContext:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/IDeviceContext;

    return-object v0
.end method

.method public final getDeviceInformationProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;
    .locals 1

    .line 1346
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->deviceInformationProvider:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/IDeviceInformationProvider;

    return-object v0
.end method

.method public getDownloadErrorActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;",
            ">;"
        }
    .end annotation

    .line 991
    const-class v0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    return-object v0
.end method

.method public getDownloadResumer()Lcom/amazon/kindle/IDownloadResumer;
    .locals 6

    .line 932
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->downloadResumer:Lcom/amazon/kindle/IDownloadResumer;

    if-nez v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->downloadResumerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 934
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->downloadResumer:Lcom/amazon/kindle/IDownloadResumer;

    if-nez v1, :cond_0

    .line 935
    new-instance v1, Lcom/amazon/kindle/DbDownloadResumer;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v2

    .line 936
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v4

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getProgressTrackerDAO()Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/kindle/DbDownloadResumer;-><init>(Lcom/amazon/kindle/sync/SynchronizationManager;Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->downloadResumer:Lcom/amazon/kindle/IDownloadResumer;

    .line 938
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 940
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->downloadResumer:Lcom/amazon/kindle/IDownloadResumer;

    return-object v0
.end method

.method public getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->downloadService:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/download/IDownloadService;

    return-object v0
.end method

.method public getEmptyLibraryStringProviderFactory()Lcom/amazon/kcp/library/EmptyLibraryStringProviderFactory;
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->emptyLibraryStringProviderFactory:Lcom/amazon/kcp/library/EmptyLibraryStringProviderFactory;

    if-nez v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->emptyLibraryStringProviderFactoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->emptyLibraryStringProviderFactory:Lcom/amazon/kcp/library/EmptyLibraryStringProviderFactory;

    if-nez v1, :cond_0

    .line 546
    new-instance v1, Lcom/amazon/kcp/application/AbstractKindleObjectFactory$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory$1;-><init>(Lcom/amazon/kcp/application/AbstractKindleObjectFactory;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->emptyLibraryStringProviderFactory:Lcom/amazon/kcp/library/EmptyLibraryStringProviderFactory;

    .line 553
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 555
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->emptyLibraryStringProviderFactory:Lcom/amazon/kcp/library/EmptyLibraryStringProviderFactory;

    return-object v0
.end method

.method public final getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fileSystem:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/io/IFileConnectionFactory;

    return-object v0
.end method

.method public getFontConfigurationProvider()Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;
    .locals 2

    .line 957
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontConfigProvider:Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;

    if-nez v0, :cond_1

    .line 958
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontConfigProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 959
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontConfigProvider:Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;

    if-nez v1, :cond_0

    .line 960
    new-instance v1, Lcom/amazon/kcp/font/DefaultFontConfigurationProvider;

    invoke-direct {v1}, Lcom/amazon/kcp/font/DefaultFontConfigurationProvider;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontConfigProvider:Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;

    .line 962
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 964
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontConfigProvider:Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;

    return-object v0
.end method

.method public getFontContentPackService()Lcom/amazon/kindle/services/fonts/IFontContentPackService;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;
    .locals 2

    .line 945
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontFactory:Lcom/mobipocket/android/drawing/AndroidFontFactory;

    if-nez v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontFactoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 947
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontFactory:Lcom/mobipocket/android/drawing/AndroidFontFactory;

    if-nez v1, :cond_0

    .line 948
    new-instance v1, Lcom/mobipocket/android/drawing/AndroidFontFactory;

    invoke-direct {v1}, Lcom/mobipocket/android/drawing/AndroidFontFactory;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontFactory:Lcom/mobipocket/android/drawing/AndroidFontFactory;

    .line 950
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 952
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontFactory:Lcom/mobipocket/android/drawing/AndroidFontFactory;

    return-object v0
.end method

.method public getFontOptionData(Landroid/content/Context;)Lcom/amazon/kcp/reader/ui/ViewOptionData;
    .locals 1

    .line 1427
    new-instance v0, Lcom/amazon/kcp/reader/ui/FontOptionData;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/ui/FontOptionData;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final getGroupService()Lcom/amazon/kindle/content/IGroupService;
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->groupService:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/IGroupService;

    return-object v0
.end method

.method public getHistoryManager()Lcom/amazon/kcp/application/HistoryManager;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->historyManager:Lcom/amazon/kcp/application/HistoryManager;

    return-object v0
.end method

.method public getHttpConnectionFactory()Lcom/amazon/system/net/HttpConnectionFactory;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->httpConnectionFactory:Lcom/amazon/system/net/HttpConnectionFactory;

    return-object v0
.end method

.method public getImageFactory()Lcom/amazon/kindle/util/drawing/ImageFactory;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->imageFactory:Lcom/amazon/kindle/util/drawing/ImageFactory;

    return-object v0
.end method

.method public getInitialThemeConfig()Lcom/amazon/kcp/theme/ThemeConfig;
    .locals 4

    .line 1609
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->initialThemeConfig:Lcom/amazon/kcp/theme/ThemeConfig;

    if-nez v0, :cond_1

    .line 1610
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->initialThemeConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1611
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->initialThemeConfig:Lcom/amazon/kcp/theme/ThemeConfig;

    if-nez v1, :cond_0

    .line 1612
    new-instance v1, Lcom/amazon/kcp/theme/ThemeConfig;

    sget-object v2, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/amazon/kcp/theme/ThemeConfig;-><init>(Lcom/amazon/kindle/krx/theme/Theme;Z)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->initialThemeConfig:Lcom/amazon/kcp/theme/ThemeConfig;

    .line 1614
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1616
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->initialThemeConfig:Lcom/amazon/kcp/theme/ThemeConfig;

    return-object v0
.end method

.method public getKSOCacheManager()Lcom/amazon/kindle/specialOffer/IKSOCacheManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKWISClientHandler()Lcom/amazon/kindle/kwis/IKWISClientHandler;
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->kwisClientHandler:Lcom/amazon/kindle/kwis/IKWISClientHandler;

    if-nez v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->kwisClientHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->kwisClientHandler:Lcom/amazon/kindle/kwis/IKWISClientHandler;

    if-nez v1, :cond_0

    .line 456
    new-instance v1, Lcom/amazon/kindle/kwis/StubKWISClientHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/kwis/StubKWISClientHandler;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->kwisClientHandler:Lcom/amazon/kindle/kwis/IKWISClientHandler;

    .line 458
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 460
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->kwisClientHandler:Lcom/amazon/kindle/kwis/IKWISClientHandler;

    return-object v0
.end method

.method public getKeyEventController()Lcom/amazon/kcp/reader/KeyEventController;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyKeyEventController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/KeyEventController;

    return-object v0
.end method

.method public getKindleContentDB(Landroid/content/Context;)Lcom/amazon/kindle/content/db/KindleContentDB;
    .locals 6

    .line 996
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->contentDB:Lcom/amazon/kindle/content/db/KindleContentDB;

    if-nez v0, :cond_1

    .line 997
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->contentDBLock:Ljava/lang/Object;

    monitor-enter v0

    .line 998
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->contentDB:Lcom/amazon/kindle/content/db/KindleContentDB;

    if-nez v1, :cond_0

    .line 999
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1000
    sget-object v3, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->TAG:Ljava/lang/String;

    const-string v4, "KindleContentDB initialization started"

    invoke-static {v3, v4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    new-instance v3, Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-direct {v3, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->contentDB:Lcom/amazon/kindle/content/db/KindleContentDB;

    .line 1002
    sget-object p1, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KindleContentDB initialization completed, duration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1006
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->contentDB:Lcom/amazon/kindle/content/db/KindleContentDB;

    return-object p1
.end method

.method public getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 1279
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method public getKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;
    .locals 1

    .line 374
    invoke-static {}, Lcom/amazon/kcp/application/ApplicationDiscoveryEntryPoints;->getInstance()Lcom/amazon/kcp/application/ApplicationDiscoveryEntryPointsInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/ApplicationDiscoveryEntryPointsInterface;->getKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object v0

    return-object v0
.end method

.method public getLangDetector()Lcom/amazon/kindle/langdetector/BookLangDetector;
    .locals 5
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 823
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->langDetector:Lcom/amazon/kindle/langdetector/BookLangDetector;

    if-nez v0, :cond_3

    .line 824
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->langDetectorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 825
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->langDetector:Lcom/amazon/kindle/langdetector/BookLangDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 828
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getNativeLibraryLoader()Lcom/amazon/kcp/application/INativeLibraryLoader;

    move-result-object v2

    .line 829
    iget-object v3, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$string;->lang_detector_native_lib:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 830
    invoke-static {v3}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 831
    const-class v4, Lcom/amazon/kindle/langdetector/BookLangDetectorUtils;

    invoke-static {v4}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/langdetector/BookLangDetectorUtils;

    if-eqz v4, :cond_0

    .line 833
    invoke-interface {v4}, Lcom/amazon/kindle/langdetector/BookLangDetectorUtils;->loadRequiredLibraries()V

    .line 835
    :cond_0
    invoke-interface {v2, v3}, Lcom/amazon/kcp/application/INativeLibraryLoader;->loadLibraryByName(Ljava/lang/String;)V

    .line 838
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getLangMap()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 839
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 840
    new-instance v3, Lcom/amazon/kindle/langdetector/BookLangDetector;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/amazon/kindle/langdetector/BookLangDetector;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->langDetector:Lcom/amazon/kindle/langdetector/BookLangDetector;
    :try_end_1
    .catch Lcom/amazon/kindle/langdetector/LangDetectorError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 848
    :catch_0
    :try_start_2
    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->langDetector:Lcom/amazon/kindle/langdetector/BookLangDetector;

    goto :goto_0

    .line 845
    :catch_1
    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->langDetector:Lcom/amazon/kindle/langdetector/BookLangDetector;

    .line 852
    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 854
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->langDetector:Lcom/amazon/kindle/langdetector/BookLangDetector;

    return-object v0
.end method

.method public getLibraryController()Lcom/amazon/kcp/library/ILibraryController;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyLibraryController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ILibraryController;

    return-object v0
.end method

.method public final getLibraryService()Lcom/amazon/kindle/content/ILibraryService;
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->libraryService:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ILibraryService;

    return-object v0
.end method

.method public getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    return-object v0
.end method

.method public getLocaleManager()Lcom/amazon/kindle/services/locale/ILocaleManager;
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->localeManager:Lcom/amazon/kindle/services/locale/ILocaleManager;

    return-object v0
.end method

.method public getMarkedPositionManager()Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;
    .locals 1

    .line 1492
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyMarkedPositionManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;

    return-object v0
.end method

.method public getMobiDocFactory()Lcom/amazon/android/docviewer/mobi/MobiDocFactory;
    .locals 2

    .line 1543
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->mobiDocFactory:Lcom/amazon/android/docviewer/mobi/MobiDocFactory;

    if-nez v0, :cond_1

    .line 1544
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->mobiDocFactoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1545
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->mobiDocFactory:Lcom/amazon/android/docviewer/mobi/MobiDocFactory;

    if-nez v1, :cond_0

    .line 1546
    new-instance v1, Lcom/amazon/android/docviewer/mobi/MobiDocFactory;

    invoke-direct {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocFactory;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->mobiDocFactory:Lcom/amazon/android/docviewer/mobi/MobiDocFactory;

    .line 1548
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1550
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->mobiDocFactory:Lcom/amazon/android/docviewer/mobi/MobiDocFactory;

    return-object v0
.end method

.method public getMobiRenderElementFactory()Lcom/amazon/android/docviewer/mobi/IMobiRenderElementFactory;
    .locals 2

    .line 1075
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->mobiRenderElementFactory:Lcom/amazon/android/docviewer/mobi/IMobiRenderElementFactory;

    if-nez v0, :cond_1

    .line 1076
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->mobiRenderElementFactoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1077
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->mobiRenderElementFactory:Lcom/amazon/android/docviewer/mobi/IMobiRenderElementFactory;

    if-nez v1, :cond_0

    .line 1078
    new-instance v1, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElementFactory;

    invoke-direct {v1}, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElementFactory;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->mobiRenderElementFactory:Lcom/amazon/android/docviewer/mobi/IMobiRenderElementFactory;

    .line 1080
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1082
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->mobiRenderElementFactory:Lcom/amazon/android/docviewer/mobi/IMobiRenderElementFactory;

    return-object v0
.end method

.method public final getModuleInitializer()Lcom/amazon/kindle/config/IModuleInitializer;
    .locals 1

    .line 1351
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->moduleInitializer:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/config/IModuleInitializer;

    return-object v0
.end method

.method public getMultipleProfileHelper()Lcom/amazon/kcp/application/IMultipleProfileHelper;
    .locals 2

    .line 1318
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->multipleProfileHelper:Lcom/amazon/kcp/application/IMultipleProfileHelper;

    if-nez v0, :cond_1

    .line 1319
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->multipleProfileHelperLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1320
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->multipleProfileHelper:Lcom/amazon/kcp/application/IMultipleProfileHelper;

    if-nez v1, :cond_0

    .line 1321
    new-instance v1, Lcom/amazon/kcp/application/DefaultMultipleProfileHelper;

    invoke-direct {v1}, Lcom/amazon/kcp/application/DefaultMultipleProfileHelper;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->multipleProfileHelper:Lcom/amazon/kcp/application/IMultipleProfileHelper;

    .line 1323
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1325
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->multipleProfileHelper:Lcom/amazon/kcp/application/IMultipleProfileHelper;

    return-object v0
.end method

.method public getNativeLibraryLoader()Lcom/amazon/kcp/application/INativeLibraryLoader;
    .locals 1

    .line 1331
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->libraryLoader:Lcom/amazon/kcp/application/INativeLibraryLoader;

    return-object v0
.end method

.method public getNetworkService()Lcom/amazon/kindle/network/INetworkService;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->networkService:Lcom/amazon/kindle/network/INetworkService;

    return-object v0
.end method

.method public getNoteUIProvider()Lcom/amazon/kcp/reader/notebook/INoteUIProvider;
    .locals 2

    .line 1523
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->noteUIProvider:Lcom/amazon/kcp/reader/notebook/INoteUIProvider;

    if-nez v0, :cond_1

    .line 1524
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->noteUIProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1525
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->noteUIProvider:Lcom/amazon/kcp/reader/notebook/INoteUIProvider;

    if-nez v1, :cond_0

    .line 1526
    new-instance v1, Lcom/amazon/kcp/reader/notebook/DefaultNoteUIProvider;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/notebook/DefaultNoteUIProvider;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->noteUIProvider:Lcom/amazon/kcp/reader/notebook/INoteUIProvider;

    .line 1528
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1530
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->noteUIProvider:Lcom/amazon/kcp/reader/notebook/INoteUIProvider;

    return-object v0
.end method

.method public getNotificationController()Lcom/amazon/kcp/application/AndroidNotificationController;
    .locals 3

    .line 618
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->notificationController:Lcom/amazon/kcp/application/AndroidNotificationController;

    if-nez v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->notificationControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->notificationController:Lcom/amazon/kcp/application/AndroidNotificationController;

    if-nez v1, :cond_0

    const-string v1, "AbstractKindleObjectFactory.getNotificationController() - create"

    const/4 v2, 0x1

    .line 621
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 623
    new-instance v1, Lcom/amazon/kcp/application/AndroidNotificationController;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kcp/application/AndroidNotificationController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->notificationController:Lcom/amazon/kcp/application/AndroidNotificationController;

    const-string v1, "AbstractKindleObjectFactory.getNotificationController() - create"

    const/4 v2, 0x0

    .line 625
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 627
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 629
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->notificationController:Lcom/amazon/kcp/application/AndroidNotificationController;

    return-object v0
.end method

.method public getOnTrimMemoryListener()Lcom/amazon/kcp/application/OnTrimMemoryListener;
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->chainedListener:Lcom/amazon/kcp/application/ChainedOnTrimMemoryListener;

    return-object v0
.end method

.method public getPageNavigatorFactory()Lcom/amazon/kcp/reader/nav/PageNavigatorFactory;
    .locals 2

    .line 1556
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->pageNavigatorFactory:Lcom/amazon/kcp/reader/nav/PageNavigatorFactory;

    if-nez v0, :cond_1

    .line 1557
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->pageNavigatorFactoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1558
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->pageNavigatorFactory:Lcom/amazon/kcp/reader/nav/PageNavigatorFactory;

    if-nez v1, :cond_0

    .line 1559
    new-instance v1, Lcom/amazon/kcp/reader/nav/PageNavigatorFactory;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/nav/PageNavigatorFactory;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->pageNavigatorFactory:Lcom/amazon/kcp/reader/nav/PageNavigatorFactory;

    .line 1561
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1563
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->pageNavigatorFactory:Lcom/amazon/kcp/reader/nav/PageNavigatorFactory;

    return-object v0
.end method

.method public getPageNumberProviderFactory()Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/IPageNumberProviderFactory;
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->pageNumberProviderFactory:Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/IPageNumberProviderFactory;

    if-nez v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->pageNumberProviderFactoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->pageNumberProviderFactory:Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/IPageNumberProviderFactory;

    if-nez v1, :cond_0

    .line 533
    new-instance v1, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;

    invoke-direct {v1}, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->pageNumberProviderFactory:Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/IPageNumberProviderFactory;

    .line 535
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 537
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->pageNumberProviderFactory:Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/IPageNumberProviderFactory;

    return-object v0
.end method

.method public getPanelController()Lcom/amazon/kindle/panels/IPanelController;
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyPanelController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/panels/IPanelController;

    return-object v0
.end method

.method public getProgressTrackerDAO()Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;
    .locals 3

    .line 909
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->progressTrackerDAO:Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;

    if-nez v0, :cond_1

    .line 910
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->progressTrackerDAOLock:Ljava/lang/Object;

    monitor-enter v0

    .line 911
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->progressTrackerDAO:Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;

    if-nez v1, :cond_0

    .line 912
    new-instance v1, Lcom/amazon/kindle/progress/db/ProgressTrackerDB;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/progress/db/ProgressTrackerDB;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/amazon/kindle/progress/dao/ProgressTrackerDAO;->getInstance(Lcom/amazon/kindle/progress/db/ProgressTrackerDB;)Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->progressTrackerDAO:Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;

    .line 914
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 916
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->progressTrackerDAO:Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;

    return-object v0
.end method

.method public final getReaderController()Lcom/amazon/kcp/reader/IReaderController;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->readerController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/IReaderController;

    return-object v0
.end method

.method public getReaderEventHandler()Lcom/amazon/kindle/tutorial/IReaderEventHandler;
    .locals 3

    .line 1510
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->readerEventHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1512
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->readerEventHandler:Lcom/amazon/kindle/tutorial/IReaderEventHandler;

    if-nez v1, :cond_0

    .line 1513
    new-instance v1, Lcom/amazon/kindle/tutorial/BaseReaderEventHandler;

    const-string v2, "getReaderEventHandler() called before reader event handler set!"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/tutorial/BaseReaderEventHandler;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->readerEventHandler:Lcom/amazon/kindle/tutorial/IReaderEventHandler;

    .line 1516
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->readerEventHandler:Lcom/amazon/kindle/tutorial/IReaderEventHandler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1517
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getReaderLayoutAccessibilityDelegate(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Lcom/amazon/kcp/reader/accessibility/ReaderLayoutAccessibilityDelegate;
    .locals 1

    .line 1156
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/ReaderLayoutAccessibilityDelegate;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/reader/accessibility/ReaderLayoutAccessibilityDelegate;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    return-object v0
.end method

.method public getReaderLayoutCustomizer()Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;
    .locals 1

    .line 1026
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyReaderLayoutCustomizer:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;

    return-object v0
.end method

.method public final getRegistrationManager()Lcom/amazon/kcp/application/IRegistrationManager;
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyRegistrationManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/IRegistrationManager;

    return-object v0
.end method

.method public getRemoteTodoFetcher()Lcom/amazon/kindle/todo/IRemoteTodoFetcher;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteTodoService()Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;
    .locals 4

    .line 1240
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->remoteTodoService:Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;

    if-nez v0, :cond_1

    .line 1241
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->remoteTodoServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1242
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->remoteTodoService:Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;

    if-nez v1, :cond_0

    .line 1243
    new-instance v1, Lcom/amazon/kindle/services/sync/todo/RemoteTodoService;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canPerformTPH()Z

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/amazon/kindle/services/sync/todo/RemoteTodoService;-><init>(Lcom/amazon/kindle/services/IReaderServicesObjectFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;Z)V

    .line 1244
    invoke-direct {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getDefaultTodoHandlers()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;->registerTodoItemHandler(Ljava/util/Collection;)V

    .line 1245
    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->remoteTodoService:Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;

    .line 1247
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1249
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->remoteTodoService:Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;

    return-object v0
.end method

.method public final getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;
    .locals 1

    .line 1383
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->restrictionHandler:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    return-object v0
.end method

.method public getRevokeOwnershipResumer()Lcom/amazon/kindle/IRevokeOwnershipResumer;
    .locals 2

    .line 1211
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->revokeOwnershipResumer:Lcom/amazon/kindle/IRevokeOwnershipResumer;

    if-nez v0, :cond_1

    .line 1212
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->revokeOwnershipResumerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1213
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->revokeOwnershipResumer:Lcom/amazon/kindle/IRevokeOwnershipResumer;

    if-nez v1, :cond_0

    .line 1214
    new-instance v1, Lcom/amazon/kindle/NullRevokeOwnershipResumer;

    invoke-direct {v1}, Lcom/amazon/kindle/NullRevokeOwnershipResumer;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->revokeOwnershipResumer:Lcom/amazon/kindle/IRevokeOwnershipResumer;

    .line 1216
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1218
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->revokeOwnershipResumer:Lcom/amazon/kindle/IRevokeOwnershipResumer;

    return-object v0
.end method

.method public getRevokeOwnershipTaskCreator()Lcom/amazon/kcp/revoke/IRevokeOwnershipTaskCreator;
    .locals 2

    .line 1223
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->revokeOwnershipTaskCreator:Lcom/amazon/kcp/revoke/IRevokeOwnershipTaskCreator;

    if-nez v0, :cond_1

    .line 1224
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->revokeOwnershipTaskCreatorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1225
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->revokeOwnershipTaskCreator:Lcom/amazon/kcp/revoke/IRevokeOwnershipTaskCreator;

    if-nez v1, :cond_0

    .line 1226
    new-instance v1, Lcom/amazon/kcp/revoke/RevokeOwnershipTaskCreator;

    invoke-direct {v1}, Lcom/amazon/kcp/revoke/RevokeOwnershipTaskCreator;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->revokeOwnershipTaskCreator:Lcom/amazon/kcp/revoke/IRevokeOwnershipTaskCreator;

    .line 1228
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1230
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->revokeOwnershipTaskCreator:Lcom/amazon/kcp/revoke/IRevokeOwnershipTaskCreator;

    return-object v0
.end method

.method public getRevokeTrackerDAO()Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;
    .locals 3

    .line 920
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->revokeTrackerDAO:Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;

    if-nez v0, :cond_1

    .line 921
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->revokeTrackerDAOLock:Ljava/lang/Object;

    monitor-enter v0

    .line 922
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->revokeTrackerDAO:Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;

    if-nez v1, :cond_0

    .line 923
    new-instance v1, Lcom/amazon/kindle/revoke/db/RevokeTrackerDB;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/revoke/db/RevokeTrackerDB;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;->getInstance(Lcom/amazon/kindle/revoke/db/RevokeTrackerDB;)Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->revokeTrackerDAO:Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;

    .line 925
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 927
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->revokeTrackerDAO:Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;

    return-object v0
.end method

.method public getRotationHandler()Lcom/amazon/kcp/reader/IRotationHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSearchIndexerProvider()Lcom/amazon/kcp/search/IBookSearchIndexerProvider;
    .locals 2

    .line 1569
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->indexerProvider:Lcom/amazon/kcp/search/IBookSearchIndexerProvider;

    if-nez v0, :cond_1

    .line 1570
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->indexerProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1571
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->indexerProvider:Lcom/amazon/kcp/search/IBookSearchIndexerProvider;

    if-nez v1, :cond_0

    .line 1572
    new-instance v1, Lcom/amazon/kcp/search/BookSearchIndexerProvider;

    invoke-direct {v1}, Lcom/amazon/kcp/search/BookSearchIndexerProvider;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->indexerProvider:Lcom/amazon/kcp/search/IBookSearchIndexerProvider;

    .line 1574
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1576
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->indexerProvider:Lcom/amazon/kcp/search/IBookSearchIndexerProvider;

    return-object v0
.end method

.method public getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;
    .locals 1

    .line 398
    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v0

    return-object v0
.end method

.method public getSecurity()Lcom/mobipocket/android/library/reader/AndroidSecurity;
    .locals 1

    .line 1341
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyAndroidSecurity:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/android/library/reader/AndroidSecurity;

    return-object v0
.end method

.method public final getShareHelper()Lcom/amazon/kcp/reader/IShareHelper;
    .locals 1

    .line 1308
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyShareHelper:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/IShareHelper;

    return-object v0
.end method

.method public getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 567
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->sharedSettingsController:Lcom/amazon/kcp/application/SettingsController;

    if-nez v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->sharedSettingsControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 569
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->sharedSettingsController:Lcom/amazon/kcp/application/SettingsController;

    if-nez v1, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/application/SettingsController;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/SettingsController;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->sharedSettingsController:Lcom/amazon/kcp/application/SettingsController;

    .line 572
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 574
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->sharedSettingsController:Lcom/amazon/kcp/application/SettingsController;

    return-object v0
.end method

.method public getShowCDEErrorOnDownload()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSidecarDownloadService()Lcom/amazon/kindle/services/download/ISidecarDownloadService;
    .locals 2

    .line 675
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->sidecarDownloadService:Lcom/amazon/kindle/services/download/ISidecarDownloadService;

    if-nez v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->sidecarDownloadServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 677
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->sidecarDownloadService:Lcom/amazon/kindle/services/download/ISidecarDownloadService;

    if-nez v1, :cond_0

    .line 678
    new-instance v1, Lcom/amazon/kindle/services/download/SidecarDownloadService;

    invoke-direct {v1}, Lcom/amazon/kindle/services/download/SidecarDownloadService;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->sidecarDownloadService:Lcom/amazon/kindle/services/download/ISidecarDownloadService;

    .line 680
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 682
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->sidecarDownloadService:Lcom/amazon/kindle/services/download/ISidecarDownloadService;

    return-object v0
.end method

.method public final getSidecarProviderRegistry()Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->sidecarProviderRegistry:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;

    return-object v0
.end method

.method public getSnapshotController()Lcom/amazon/kcp/application/ISnapshotController;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->snapshotController:Lcom/amazon/kcp/application/ISnapshotController;

    return-object v0
.end method

.method public getSortFriendlyFormatter()Lcom/amazon/kindle/utils/ISortFriendlyFormatter;
    .locals 1

    .line 986
    new-instance v0, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;

    invoke-direct {v0}, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;-><init>()V

    return-object v0
.end method

.method public getStorageLocationPreference()Lcom/amazon/kindle/sdcard/IStorageLocationPreference;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStoreIntentCreator()Lcom/amazon/kcp/store/IStoreIntentCreator;
    .locals 3

    .line 1042
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storeIntentCreator:Lcom/amazon/kcp/store/IStoreIntentCreator;

    if-nez v0, :cond_1

    .line 1043
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storeIntentCreatorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1044
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storeIntentCreator:Lcom/amazon/kcp/store/IStoreIntentCreator;

    if-nez v1, :cond_0

    .line 1045
    new-instance v1, Lcom/amazon/kcp/store/BaseStoreIntentCreator;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kcp/store/BaseStoreIntentCreator;-><init>(Lcom/amazon/kcp/application/IAndroidApplicationController;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storeIntentCreator:Lcom/amazon/kcp/store/IStoreIntentCreator;

    .line 1047
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1049
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storeIntentCreator:Lcom/amazon/kcp/store/IStoreIntentCreator;

    return-object v0
.end method

.method public getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;
    .locals 4

    .line 1031
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    if-nez v0, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storeManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1033
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    if-nez v1, :cond_0

    .line 1034
    new-instance v1, Lcom/amazon/kindle/store/InAppStoreManager;

    iget-object v2, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->context:Landroid/content/Context;

    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/store/InAppStoreManager;-><init>(Landroid/content/Context;Lcom/amazon/kcp/store/IWebStoreController;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    .line 1036
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1038
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    return-object v0
.end method

.method public getStorePathProvider()Lcom/amazon/kcp/store/StorePathProvider;
    .locals 4

    .line 1054
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storePathProvider:Lcom/amazon/kcp/store/StorePathProvider;

    if-nez v0, :cond_1

    .line 1055
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storePathProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1056
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storePathProvider:Lcom/amazon/kcp/store/StorePathProvider;

    if-nez v1, :cond_0

    .line 1057
    new-instance v1, Lcom/amazon/kcp/store/DefaultStorePathProvider;

    .line 1058
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    .line 1059
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getDeviceInformationProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/amazon/kcp/store/DefaultStorePathProvider;-><init>(Lcom/amazon/kcp/application/IAndroidApplicationController;Lcom/amazon/kcp/application/IDeviceInformationProvider;Lcom/amazon/kcp/application/IKindleObjectFactory;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storePathProvider:Lcom/amazon/kcp/store/StorePathProvider;

    .line 1062
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1065
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storePathProvider:Lcom/amazon/kcp/store/StorePathProvider;

    return-object v0
.end method

.method public getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazySynchronizationManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/sync/SynchronizationManager;

    return-object v0
.end method

.method public getThumbnailImageCache()Lcom/amazon/kcp/reader/ui/AbstractImageCache;
    .locals 2

    .line 1070
    new-instance v0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;

    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getTutorialManager()Lcom/amazon/kcp/info/TutorialManager;
    .locals 4

    .line 644
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->tutorialManager:Lcom/amazon/kcp/info/TutorialManager;

    if-nez v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->tutorialManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 646
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->tutorialManager:Lcom/amazon/kcp/info/TutorialManager;

    if-nez v1, :cond_0

    .line 647
    new-instance v1, Lcom/amazon/kcp/info/TutorialManager;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kcp/info/TutorialManager;-><init>(Lcom/amazon/kcp/application/UserSettingsController;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->tutorialManager:Lcom/amazon/kcp/info/TutorialManager;

    .line 649
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 651
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->tutorialManager:Lcom/amazon/kcp/info/TutorialManager;

    return-object v0
.end method

.method public getUpdateManager()Lcom/amazon/kcp/application/internal/IUpdateManager;
    .locals 4

    .line 490
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->updateManager:Lcom/amazon/kcp/application/internal/IUpdateManager;

    if-nez v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->updateManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->updateManager:Lcom/amazon/kcp/application/internal/IUpdateManager;

    if-nez v1, :cond_0

    .line 493
    new-instance v1, Lcom/amazon/kcp/application/AndroidUpdateManager;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kcp/application/AndroidUpdateManager;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/IAppSettingsController;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->updateManager:Lcom/amazon/kcp/application/internal/IUpdateManager;

    .line 495
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 497
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->updateManager:Lcom/amazon/kcp/application/internal/IUpdateManager;

    return-object v0
.end method

.method public getUriActionManager()Lcom/amazon/kcp/notifications/handlers/NotificationUriActionManager;
    .locals 2

    .line 1479
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->notificationUriActionManager:Lcom/amazon/kcp/notifications/handlers/NotificationUriActionManager;

    if-nez v0, :cond_1

    .line 1480
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->notificationUriActionManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1481
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->notificationUriActionManager:Lcom/amazon/kcp/notifications/handlers/NotificationUriActionManager;

    if-nez v1, :cond_0

    .line 1482
    new-instance v1, Lcom/amazon/kcp/notifications/handlers/NotificationUriActionManager;

    invoke-direct {v1}, Lcom/amazon/kcp/notifications/handlers/NotificationUriActionManager;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->notificationUriActionManager:Lcom/amazon/kcp/notifications/handlers/NotificationUriActionManager;

    .line 1484
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1486
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->notificationUriActionManager:Lcom/amazon/kcp/notifications/handlers/NotificationUriActionManager;

    return-object v0
.end method

.method public getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->lazyUserSettingsController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/UserSettingsController;

    return-object v0
.end method

.method public getViewAccessibilityInitializer()Lcom/amazon/kcp/reader/accessibility/IViewAccessibilityInitializer;
    .locals 3

    .line 1123
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->viewAccessibilityInitializer:Lcom/amazon/kcp/reader/accessibility/IViewAccessibilityInitializer;

    if-nez v0, :cond_1

    .line 1124
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->viewAccessibilityInitializerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1125
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->viewAccessibilityInitializer:Lcom/amazon/kcp/reader/accessibility/IViewAccessibilityInitializer;

    if-nez v1, :cond_0

    const-string v1, "ViewAccessibilityInitializer<init>"

    const/4 v2, 0x1

    .line 1126
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1127
    new-instance v1, Lcom/amazon/kcp/reader/accessibility/ViewAccessibilityInitializer;

    iget-object v2, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/amazon/kcp/reader/accessibility/ViewAccessibilityInitializer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->viewAccessibilityInitializer:Lcom/amazon/kcp/reader/accessibility/IViewAccessibilityInitializer;

    const-string v1, "ViewAccessibilityInitializer<init>"

    const/4 v2, 0x0

    .line 1128
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1130
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1133
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->viewAccessibilityInitializer:Lcom/amazon/kcp/reader/accessibility/IViewAccessibilityInitializer;

    return-object v0
.end method

.method public getViewIdGenerator()Lcom/amazon/kcp/reader/ui/ViewIdGenerator;
    .locals 2

    .line 1199
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->viewIdGenerator:Lcom/amazon/kcp/reader/ui/ViewIdGenerator;

    if-nez v0, :cond_1

    .line 1200
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->viewIdGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1201
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->viewIdGenerator:Lcom/amazon/kcp/reader/ui/ViewIdGenerator;

    if-nez v1, :cond_0

    .line 1202
    new-instance v1, Lcom/amazon/kcp/reader/ui/ViewIdGenerator;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/ui/ViewIdGenerator;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->viewIdGenerator:Lcom/amazon/kcp/reader/ui/ViewIdGenerator;

    .line 1204
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1206
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->viewIdGenerator:Lcom/amazon/kcp/reader/ui/ViewIdGenerator;

    return-object v0
.end method

.method public getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;
    .locals 2

    .line 1111
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->virtualViewHierarchyManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    if-nez v0, :cond_1

    .line 1112
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->virtualViewHierarchyManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1113
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->virtualViewHierarchyManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    if-nez v1, :cond_0

    .line 1114
    new-instance v1, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->virtualViewHierarchyManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    .line 1116
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1118
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->virtualViewHierarchyManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    return-object v0
.end method

.method public getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;
    .locals 8

    .line 354
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

    if-nez v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->webRequestManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

    if-nez v1, :cond_0

    .line 357
    new-instance v1, Lcom/amazon/kindle/webservices/WebRequestManager;

    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v3

    .line 358
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v4

    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getLocaleManager()Lcom/amazon/kindle/services/locale/ILocaleManager;

    move-result-object v6

    iget-object v7, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->context:Landroid/content/Context;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/webservices/WebRequestManager;-><init>(Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/services/locale/ILocaleManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

    .line 360
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 362
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

    return-object v0
.end method

.method public launchReaderSettings()V
    .locals 0

    return-void
.end method

.method protected readerNavigateUp(Lcom/amazon/kcp/reader/ReaderActivity;)Z
    .locals 2

    .line 1438
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getOriginActivityName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1441
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getOriginActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    .line 1442
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1443
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1444
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public registerOnTrimMemoryListener(Lcom/amazon/kcp/application/OnTrimMemoryListener;)V
    .locals 3

    .line 973
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->chainedListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "AbstractKindleObjectFactory.registerOnTrimMemoryListener()"

    const/4 v2, 0x1

    .line 974
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 975
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->chainedListener:Lcom/amazon/kcp/application/ChainedOnTrimMemoryListener;

    if-nez v1, :cond_0

    .line 976
    new-instance v1, Lcom/amazon/kcp/application/ChainedOnTrimMemoryListener;

    invoke-direct {v1, p1}, Lcom/amazon/kcp/application/ChainedOnTrimMemoryListener;-><init>(Lcom/amazon/kcp/application/OnTrimMemoryListener;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->chainedListener:Lcom/amazon/kcp/application/ChainedOnTrimMemoryListener;

    goto :goto_0

    .line 978
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->chainedListener:Lcom/amazon/kcp/application/ChainedOnTrimMemoryListener;

    new-instance v2, Lcom/amazon/kcp/application/ChainedOnTrimMemoryListener;

    invoke-direct {v2, p1}, Lcom/amazon/kcp/application/ChainedOnTrimMemoryListener;-><init>(Lcom/amazon/kcp/application/OnTrimMemoryListener;)V

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/ChainedOnTrimMemoryListener;->setNextListener(Lcom/amazon/kcp/application/ChainedOnTrimMemoryListener;)V

    :goto_0
    const-string p1, "AbstractKindleObjectFactory.registerOnTrimMemoryListener()"

    const/4 v1, 0x0

    .line 980
    invoke-static {p1, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 981
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public returnToLibrary(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 1

    .line 1432
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->readerNavigateUp(Lcom/amazon/kcp/reader/ReaderActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1433
    invoke-virtual {p1}, Lcom/amazon/kcp/redding/ReddingActivity;->finishAndShowLandingPage()V

    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 2

    .line 328
    iput-object p1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->context:Landroid/content/Context;

    .line 329
    new-instance p1, Lcom/amazon/kindle/network/NetworkService;

    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kindle/network/AndroidWifiLockManager;->getInstance(Landroid/content/Context;)Lcom/amazon/kindle/network/AndroidWifiLockManager;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/amazon/kindle/network/NetworkService;-><init>(Landroid/content/Context;Lcom/amazon/kindle/network/IWifiLockManager;)V

    iput-object p1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->networkService:Lcom/amazon/kindle/network/INetworkService;

    .line 330
    invoke-static {}, Lcom/amazon/kindle/services/locale/AndroidLocaleManager;->getInstance()Lcom/amazon/kindle/services/locale/AndroidLocaleManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->localeManager:Lcom/amazon/kindle/services/locale/ILocaleManager;

    .line 331
    new-instance p1, Lcom/mobipocket/android/net/AndroidHttpConnectionFactory;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getLocaleManager()Lcom/amazon/kindle/services/locale/ILocaleManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Lcom/mobipocket/android/net/AndroidHttpConnectionFactory;-><init>(ILcom/amazon/kindle/services/locale/ILocaleManager;)V

    iput-object p1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->httpConnectionFactory:Lcom/amazon/system/net/HttpConnectionFactory;

    .line 332
    new-instance p1, Lcom/amazon/android/system/drawing/AndroidImageFactory;

    invoke-direct {p1}, Lcom/amazon/android/system/drawing/AndroidImageFactory;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->imageFactory:Lcom/amazon/kindle/util/drawing/ImageFactory;

    .line 333
    new-instance p1, Lcom/amazon/kcp/application/AndroidLocalStorage;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/kcp/application/AndroidLocalStorage;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    .line 334
    new-instance p1, Lcom/amazon/kcp/application/HistoryManager;

    invoke-direct {p1}, Lcom/amazon/kcp/application/HistoryManager;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->historyManager:Lcom/amazon/kcp/application/HistoryManager;

    .line 335
    new-instance p1, Lcom/amazon/kcp/application/SnapshotController;

    invoke-direct {p1}, Lcom/amazon/kcp/application/SnapshotController;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->snapshotController:Lcom/amazon/kcp/application/ISnapshotController;

    .line 336
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getInstance()Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getAndroidDeviceConfigurator(Landroid/content/Context;)Lcom/amazon/kcp/application/IAndroidDeviceConfigurator;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->deviceConfigurator:Lcom/amazon/kcp/application/IAndroidDeviceConfigurator;

    return-void
.end method

.method public setKindleReaderSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 1274
    iput-object p1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method public setReaderEventHandler(Lcom/amazon/kindle/tutorial/IReaderEventHandler;)V
    .locals 1

    .line 1502
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->readerEventHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1503
    :try_start_0
    iput-object p1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->readerEventHandler:Lcom/amazon/kindle/tutorial/IReaderEventHandler;

    .line 1504
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method updateMaxImageDimension(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/util/drawing/Dimension;)V
    .locals 1

    .line 442
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setCoverImageDimension(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/util/drawing/Dimension;)V

    return-void
.end method
