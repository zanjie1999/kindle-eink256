.class public interface abstract Lcom/amazon/kcp/application/IKindleObjectFactory;
.super Ljava/lang/Object;
.source "IKindleObjectFactory.java"

# interfaces
.implements Lcom/amazon/kindle/services/IReaderServicesObjectFactory;


# virtual methods
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

.method public abstract createInfoCardController(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kcp/reader/ui/ReaderLayout;)Lcom/amazon/kcp/reader/InfoCardController;
.end method

.method public abstract createOrientationLockManager()Lcom/amazon/kcp/reader/ui/IOrientationLockManager;
.end method

.method public abstract createOverlayController(Landroid/view/Window;)Lcom/amazon/android/util/IOsOverlayController;
.end method

.method public abstract createViewDrawFilter(ILandroid/view/View;)Lcom/amazon/android/docviewer/filter/IViewDrawFilter;
.end method

.method public abstract getAWVFactory()Lcom/amazon/android/webkit/AmazonWebKitFactory;
.end method

.method public abstract getAccessibilityDelegate(Lcom/amazon/android/docviewer/KindleDocView;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/ui/ReaderLayout;)Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;
.end method

.method public abstract getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;
.end method

.method public abstract getAccessibilityStateListener()Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;
.end method

.method public abstract getAccountProvider()Lcom/amazon/kindle/services/authentication/IAccountProvider;
.end method

.method public abstract getAccountSecretProvider()Lcom/amazon/kindle/services/authentication/IAccountSecretProvider;
.end method

.method public abstract getAndroidDeviceInformationProvider(Landroid/content/Context;)Lcom/amazon/kcp/application/IAndroidDeviceInformation;
.end method

.method public abstract getAndroidSharedPreferences(Ljava/lang/String;ILandroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;
.end method

.method public abstract getAnnotationConversionService()Lcom/amazon/kindle/annotationconversion/IAnnotationConversionService;
.end method

.method public abstract getAnnotationsManager()Lcom/amazon/kindle/annotation/IAnnotationsManager;
.end method

.method public abstract getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;
.end method

.method public abstract getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;
.end method

.method public abstract getApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;
.end method

.method public abstract getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;
.end method

.method public abstract getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;
.end method

.method public abstract getAssociateInformationProvider()Lcom/amazon/kcp/application/IAssociateInformationProvider;
.end method

.method public abstract getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;
.end method

.method public abstract getBookBroadcastReceivers()Ljava/util/List;
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
.end method

.method public abstract getBookLockManager()Lcom/amazon/kcp/reader/IBookLockManager;
.end method

.method public abstract getBookOwnershipRecorder()Lcom/amazon/kindle/content/IBookOwnershipRecorder;
.end method

.method public abstract getBookPreloader()Lcom/amazon/kcp/application/IBookPreloader;
.end method

.method public abstract getBrightnessManager()Lcom/amazon/kindle/brightness/IBrightnessManager;
.end method

.method public abstract getBroadcastReceiverHelper()Lcom/amazon/android/util/BroadcastReceiverHelper;
.end method

.method public abstract getBroadcastReceivers()Ljava/util/List;
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
.end method

.method public abstract getCMSActionRunnerFactory()Lcom/amazon/kindle/cms/ICMSActionRunnerFactory;
.end method

.method public abstract getCMSItemFactory()Lcom/amazon/kindle/cms/ICMSItemFactory;
.end method

.method public abstract getCMSItemLocationFactory()Lcom/amazon/kindle/cms/ICMSItemLocationFactory;
.end method

.method public abstract getClippingService()Lcom/amazon/kindle/clipping/IClippingService;
.end method

.method public abstract getCollectionsDAO()Lcom/amazon/kindle/collections/dao/ICollectionsDAO;
.end method

.method public abstract getCollectionsSyncManager()Lcom/amazon/kindle/collections/ICollectionsSyncManager;
.end method

.method public abstract getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;
.end method

.method public abstract getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;
.end method

.method public abstract getContentUpdateService()Lcom/amazon/kindle/contentupdate/IContentUpdateService;
.end method

.method public abstract getContentViewAccessibilityMixin()Lcom/amazon/kcp/reader/accessibility/IContentViewAccessibilityMixin;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCookieJar()Lcom/amazon/kcp/store/CookieJar;
.end method

.method public abstract getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;
.end method

.method public abstract getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;
.end method

.method public abstract getCustomActionMenuController()Lcom/amazon/android/menu/CustomActionMenuController;
.end method

.method public abstract getDCMMetricsFactoryProvider()Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;
.end method

.method public abstract getDefaultCoverBackgroundProvider()Lcom/amazon/kcp/cover/IDefaultCoverBackgroundProvider;
.end method

.method public abstract getDefaultCustomSelectionButtonsController()Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;
.end method

.method public abstract getDeviceConfigurator()Lcom/amazon/kcp/application/IAndroidDeviceConfigurator;
.end method

.method public abstract getDeviceContext()Lcom/amazon/kcp/application/IDeviceContext;
.end method

.method public abstract getDeviceInformation(Lcom/amazon/kcp/application/IAuthenticationManager;)Lcom/amazon/kindle/krx/application/IDeviceInformation;
.end method

.method public abstract getDeviceInformationProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;
.end method

.method public abstract getDeviceType()Lcom/amazon/kcp/application/AndroidDeviceType;
.end method

.method public abstract getDownloadErrorActivityClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDownloadResumer()Lcom/amazon/kindle/IDownloadResumer;
.end method

.method public abstract getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;
.end method

.method public abstract getEmptyLibraryStringProviderFactory()Lcom/amazon/kcp/library/EmptyLibraryStringProviderFactory;
.end method

.method public abstract getFalkorATLSyncManager()Lcom/amazon/kcp/sync/FalkorSyncManager;
.end method

.method public abstract getFalkorLastReadEpisodeSyncManager()Lcom/amazon/kcp/sync/FalkorSyncManager;
.end method

.method public abstract getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;
.end method

.method public abstract getFontConfigInitializer()Lcom/amazon/kcp/font/FontConfigInitializer;
.end method

.method public abstract getFontConfigurationProvider()Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;
.end method

.method public abstract getFontContentPackService()Lcom/amazon/kindle/services/fonts/IFontContentPackService;
.end method

.method public abstract getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;
.end method

.method public abstract getFontOptionData(Landroid/content/Context;)Lcom/amazon/kcp/reader/ui/ViewOptionData;
.end method

.method public abstract getGroupService()Lcom/amazon/kindle/content/IGroupService;
.end method

.method public abstract getHistoryManager()Lcom/amazon/kcp/application/HistoryManager;
.end method

.method public abstract getHttpConnectionFactory()Lcom/amazon/system/net/HttpConnectionFactory;
.end method

.method public abstract getImageFactory()Lcom/amazon/kindle/util/drawing/ImageFactory;
.end method

.method public abstract getInitialThemeConfig()Lcom/amazon/kcp/theme/ThemeConfig;
.end method

.method public abstract getKSOCacheManager()Lcom/amazon/kindle/specialOffer/IKSOCacheManager;
.end method

.method public abstract getKWISClientHandler()Lcom/amazon/kindle/kwis/IKWISClientHandler;
.end method

.method public abstract getKeyEventController()Lcom/amazon/kcp/reader/KeyEventController;
.end method

.method public abstract getKindleContentDB(Landroid/content/Context;)Lcom/amazon/kindle/content/db/KindleContentDB;
.end method

.method public abstract getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;
.end method

.method public abstract getKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;
.end method

.method public abstract getLangDetector()Lcom/amazon/kindle/langdetector/BookLangDetector;
.end method

.method public abstract getLibraryController()Lcom/amazon/kcp/library/ILibraryController;
.end method

.method public abstract getLibraryService()Lcom/amazon/kindle/content/ILibraryService;
.end method

.method public abstract getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;
.end method

.method public abstract getLocaleManager()Lcom/amazon/kindle/services/locale/ILocaleManager;
.end method

.method public abstract getMarkedPositionManager()Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;
.end method

.method public abstract getMessengerServiceForPlugins()Lcom/amazon/kindle/krx/messaging/IMessengerService;
.end method

.method public abstract getMobiDocFactory()Lcom/amazon/android/docviewer/mobi/MobiDocFactory;
.end method

.method public abstract getMobiRenderElementFactory()Lcom/amazon/android/docviewer/mobi/IMobiRenderElementFactory;
.end method

.method public abstract getModuleInitializer()Lcom/amazon/kindle/config/IModuleInitializer;
.end method

.method public abstract getMultipleProfileHelper()Lcom/amazon/kcp/application/IMultipleProfileHelper;
.end method

.method public abstract getNativeLibraryLoader()Lcom/amazon/kcp/application/INativeLibraryLoader;
.end method

.method public abstract getNoteUIProvider()Lcom/amazon/kcp/reader/notebook/INoteUIProvider;
.end method

.method public abstract getNotificationController()Lcom/amazon/kcp/application/AndroidNotificationController;
.end method

.method public abstract getNotificationSettingsManager()Lcom/amazon/kcp/notifications/INotificationSettingsManager;
.end method

.method public abstract getPageNavigatorFactory()Lcom/amazon/kcp/reader/nav/PageNavigatorFactory;
.end method

.method public abstract getPageNumberProviderFactory()Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/IPageNumberProviderFactory;
.end method

.method public abstract getPanelController()Lcom/amazon/kindle/panels/IPanelController;
.end method

.method public abstract getPhoenixCompatibilityAdapter()Lcom/amazon/phoenix/IPhoenixCompatibilityAdapter;
.end method

.method public abstract getReadDataSyncManager()Lcom/amazon/kcp/sync/IReadDataSyncManager;
.end method

.method public abstract getReaderController()Lcom/amazon/kcp/reader/IReaderController;
.end method

.method public abstract getReaderEventHandler()Lcom/amazon/kindle/tutorial/IReaderEventHandler;
.end method

.method public abstract getReaderLayoutCustomizer()Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;
.end method

.method public abstract getReaderNotificationsManager()Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;
.end method

.method public abstract getRegistrationManager()Lcom/amazon/kcp/application/IRegistrationManager;
.end method

.method public abstract getRemoteTodoFetcher()Lcom/amazon/kindle/todo/IRemoteTodoFetcher;
.end method

.method public abstract getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;
.end method

.method public abstract getRevokeOwnershipResumer()Lcom/amazon/kindle/IRevokeOwnershipResumer;
.end method

.method public abstract getRevokeOwnershipTaskCreator()Lcom/amazon/kcp/revoke/IRevokeOwnershipTaskCreator;
.end method

.method public abstract getRotationHandler()Lcom/amazon/kcp/reader/IRotationHandler;
.end method

.method public abstract getSearchIndexerProvider()Lcom/amazon/kcp/search/IBookSearchIndexerProvider;
.end method

.method public abstract getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSecurity()Lcom/mobipocket/android/library/reader/AndroidSecurity;
.end method

.method public abstract getShareHelper()Lcom/amazon/kcp/reader/IShareHelper;
.end method

.method public abstract getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSidecarDownloadService()Lcom/amazon/kindle/services/download/ISidecarDownloadService;
.end method

.method public abstract getSidecarProviderRegistry()Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;
.end method

.method public abstract getSnapshotController()Lcom/amazon/kcp/application/ISnapshotController;
.end method

.method public abstract getSortFriendlyFormatter()Lcom/amazon/kindle/utils/ISortFriendlyFormatter;
.end method

.method public abstract getStorageLocationPreference()Lcom/amazon/kindle/sdcard/IStorageLocationPreference;
.end method

.method public abstract getStoreIntentCreator()Lcom/amazon/kcp/store/IStoreIntentCreator;
.end method

.method public abstract getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;
.end method

.method public abstract getStorePathProvider()Lcom/amazon/kcp/store/StorePathProvider;
.end method

.method public abstract getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;
.end method

.method public abstract getThumbnailImageCache()Lcom/amazon/kcp/reader/ui/AbstractImageCache;
.end method

.method public abstract getTutorialManager()Lcom/amazon/kcp/info/TutorialManager;
.end method

.method public abstract getUpdateManager()Lcom/amazon/kcp/application/internal/IUpdateManager;
.end method

.method public abstract getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;
.end method

.method public abstract getViewAccessibilityInitializer()Lcom/amazon/kcp/reader/accessibility/IViewAccessibilityInitializer;
.end method

.method public abstract getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;
.end method

.method public abstract getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;
.end method

.method public abstract returnToLibrary(Lcom/amazon/kcp/reader/ReaderActivity;)V
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract setKindleReaderSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end method

.method public abstract setReaderEventHandler(Lcom/amazon/kindle/tutorial/IReaderEventHandler;)V
.end method
