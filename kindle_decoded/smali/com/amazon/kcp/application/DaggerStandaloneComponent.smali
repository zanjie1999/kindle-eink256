.class public final Lcom/amazon/kcp/application/DaggerStandaloneComponent;
.super Ljava/lang/Object;
.source "DaggerStandaloneComponent.java"

# interfaces
.implements Lcom/amazon/kcp/application/StandaloneComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/DaggerStandaloneComponent$PlaceholderActivitySubcomponentImpl;,
        Lcom/amazon/kcp/application/DaggerStandaloneComponent$PlaceholderActivitySubcomponentBuilder;,
        Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;
    }
.end annotation


# static fields
.field private static final ABSENT_GUAVA_OPTIONAL_PROVIDER:Ljavax/inject/Provider;


# instance fields
.field private accountSecretProvider:Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider_Factory;

.field private androidFileFactoryProvider:Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory_Factory;

.field private androidSecurityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mobipocket/android/library/reader/AndroidSecurity;",
            ">;"
        }
    .end annotation
.end field

.field private applicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private assetRequestDownloadManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/AssetRequestDownloadManager;",
            ">;"
        }
    .end annotation
.end field

.field private bindManifestJobFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJobFactory;",
            ">;"
        }
    .end annotation
.end field

.field private bindWebRequestExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/webservices/IWebRequestExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private brightnessManagerProvider:Lcom/amazon/kindle/brightness/BrightnessManager_Factory;

.field private bubbleManagerProvider:Lcom/amazon/kindle/krx/reader/BubbleManager_Factory;

.field private coroutineDownloadWorkflowHandlerProvider:Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler_Factory;

.field private customActionMenuControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/android/menu/CustomActionMenuController;",
            ">;"
        }
    .end annotation
.end field

.field private defaultCustomSelectionButtonsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;",
            ">;"
        }
    .end annotation
.end field

.field private defaultJobFactoryProvider:Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory_Factory;

.field private deliveryManifestHandlerProvider:Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler_Factory;

.field private downloadContentServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/DownloadContentService;",
            ">;"
        }
    .end annotation
.end field

.field private getAccessibilityStateListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private getAccountSecretProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/authentication/IAccountSecretProvider;",
            ">;"
        }
    .end annotation
.end field

.field private getAndroidApplicationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IAndroidApplicationController;",
            ">;"
        }
    .end annotation
.end field

.field private getAndroidDeviceClassFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/AndroidDeviceClassFactory;",
            ">;"
        }
    .end annotation
.end field

.field private getBrightnessManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/brightness/IBrightnessManager;",
            ">;"
        }
    .end annotation
.end field

.field private getBroadcastReceiverHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/android/util/BroadcastReceiverHelper;",
            ">;"
        }
    .end annotation
.end field

.field private getBubbleManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IBubbleManager;",
            ">;"
        }
    .end annotation
.end field

.field private getBuiltInUserIdsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private getContentOpenMetricsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;",
            ">;"
        }
    .end annotation
.end field

.field private getContentUpdateManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/update/IContentUpdateManager;",
            ">;"
        }
    .end annotation
.end field

.field private getContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private getCoverManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/cover/ICoverImageService;",
            ">;"
        }
    .end annotation
.end field

.field private getDeviceContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IDeviceContext;",
            ">;"
        }
    .end annotation
.end field

.field private getExtensionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;",
            ">;"
        }
    .end annotation
.end field

.field private getFileFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/io/IFileConnectionFactory;",
            ">;"
        }
    .end annotation
.end field

.field private getGroupServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/content/IGroupService;",
            ">;"
        }
    .end annotation
.end field

.field private getHushpuppyUpsellDetectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;",
            ">;"
        }
    .end annotation
.end field

.field private getIAssociateInformationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IAssociateInformationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private getIDeviceInformationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IDeviceInformationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private getIKindleObjectFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            ">;"
        }
    .end annotation
.end field

.field private getIModuleInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/config/IModuleInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private getLibraryControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/library/ILibraryController;",
            ">;"
        }
    .end annotation
.end field

.field private getLibraryServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ">;"
        }
    .end annotation
.end field

.field private getLibraryUIManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/ILibraryUIManager;",
            ">;"
        }
    .end annotation
.end field

.field private getLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/logging/ILogger;",
            ">;"
        }
    .end annotation
.end field

.field private getMarkedPositionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;",
            ">;"
        }
    .end annotation
.end field

.field private getMetricsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/metrics/internal/MetricsManager;",
            ">;"
        }
    .end annotation
.end field

.field private getPubSubMessageServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;"
        }
    .end annotation
.end field

.field private getReaderControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;"
        }
    .end annotation
.end field

.field private getReaderLayoutCustomizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;",
            ">;"
        }
    .end annotation
.end field

.field private getReaderModeHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IReaderModeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private getReaderNotificationsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;",
            ">;"
        }
    .end annotation
.end field

.field private getReaderSearchManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/search/IReaderSearchManager;",
            ">;"
        }
    .end annotation
.end field

.field private getRestrictionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private getScanLocalContentUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/scan/ScanLocalContentUtils;",
            ">;"
        }
    .end annotation
.end field

.field private getSearchUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/search/ISearchUtils;",
            ">;"
        }
    .end annotation
.end field

.field private getSidecarProviderRegistryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private getSyncManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/sync/ISyncManager;",
            ">;"
        }
    .end annotation
.end field

.field private getUserSettingsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            ">;"
        }
    .end annotation
.end field

.field private keyEventControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/KeyEventController;",
            ">;"
        }
    .end annotation
.end field

.field private kindleLibraryControllerProvider:Lcom/amazon/kcp/library/KindleLibraryController_Factory;

.field private kindleReaderSDKModuleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/KindleReaderSDKModule;",
            ">;"
        }
    .end annotation
.end field

.field private kindleReaderSDKProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/KindleReaderSDK;",
            ">;"
        }
    .end annotation
.end field

.field private libraryUIManagerProvider:Lcom/amazon/kindle/krx/ui/LibraryUIManager_Factory;

.field private mDSManifestProvider:Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider_Factory;

.field private manifestDownloaderProvider:Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader_Factory;

.field private optionalOfWechatDelegateInterfaceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/common/base/Optional<",
            "Lcom/amazon/kindle/map/WechatDelegateInterface;",
            ">;>;"
        }
    .end annotation
.end field

.field private placeholderActivitySubcomponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/OptionalBindingsModule_ContributeAtLeastOneAndroidInjector$PlaceholderActivitySubcomponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private playSelectionButtonRegistryProvider:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry_Factory;

.field private positionChangedEventHandlerProvider:Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler_Factory;

.field private provideAssetStateManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideDeliveryManifestMetricsEmitterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;",
            ">;"
        }
    .end annotation
.end field

.field private provideKrlForDownloadFacadeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;"
        }
    .end annotation
.end field

.field private provideMDSProvidersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/download/manifest/providers/ManifestProvider<",
            "Lcom/amazon/kindle/download/manifest/MDSManifest;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private provideManifestSerializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/manifest/ManifestSerializer;",
            ">;"
        }
    .end annotation
.end field

.field private provideMetricsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/metrics/IMetricsManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNetworkPolicyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private provideNetworkServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/network/INetworkService;",
            ">;"
        }
    .end annotation
.end field

.field private provideOkHttpClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlin/jvm/functions/Function0<",
            "Lokhttp3/OkHttpClient;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideRegistrationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IRegistrationManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesPanelControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/panels/IPanelController;",
            ">;"
        }
    .end annotation
.end field

.field private providesStandaloneShareHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IShareHelper;",
            ">;"
        }
    .end annotation
.end field

.field private readerActivityLifecycleEventHandlerProvider:Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler_Factory;

.field private readerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/ReaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private readerModeHandlerProvider:Lcom/amazon/kindle/krx/reader/ReaderModeHandler_Factory;

.field private readerRestrictionHandlerProvider:Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler_Factory;

.field private readerSearchManagerProvider:Lcom/amazon/kindle/krx/search/ReaderSearchManager_Factory;

.field private readerSettingsProvider:Lcom/amazon/kindle/krx/reader/ReaderSettings_Factory;

.field private readerUIManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/ReaderUIManager;",
            ">;"
        }
    .end annotation
.end field

.field private standaloneKindleObjectFactoryProvider:Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;

.field private standaloneModuleInitializerProvider:Lcom/amazon/kindle/module/StandaloneModuleInitializer_Factory;

.field private standaloneShareHelperProvider:Lcom/amazon/kcp/reader/StandaloneShareHelper_Factory;

.field private switchingDownloadWorkflowHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;",
            ">;"
        }
    .end annotation
.end field

.field private switchingWebRequestExecutorProvider:Lcom/amazon/system/net/SwitchingWebRequestExecutor_Factory;

.field private syncManagerProvider:Lcom/amazon/kindle/krx/sync/SyncManager_Factory;

.field private synchronizationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/sync/SynchronizationManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->ABSENT_GUAVA_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;)V
    .locals 0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->initialize(Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;Lcom/amazon/kcp/application/DaggerStandaloneComponent$1;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/DaggerStandaloneComponent;-><init>(Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;)V

    return-void
.end method

.method private static absentGuavaOptionalProvider()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavax/inject/Provider<",
            "Lcom/google/common/base/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 716
    sget-object v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->ABSENT_GUAVA_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    return-object v0
.end method

.method public static builder()Lcom/amazon/kcp/application/StandaloneComponent$Builder;
    .locals 2

    .line 329
    new-instance v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;-><init>(Lcom/amazon/kcp/application/DaggerStandaloneComponent$1;)V

    return-object v0
.end method

.method private getDispatchingAndroidInjectorOfActivity()Ldagger/android/DispatchingAndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 342
    invoke-direct {p0}, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getMapOfClassOfAndProviderOfFactoryOf()Ljava/util/Map;

    move-result-object v0

    .line 341
    invoke-static {v0}, Ldagger/android/DispatchingAndroidInjector_Factory;->newDispatchingAndroidInjector(Ljava/util/Map;)Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    return-object v0
.end method

.method private getMapOfClassOfAndProviderOfFactoryOf()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/AndroidInjector$Factory<",
            "+",
            "Landroid/app/Activity;",
            ">;>;>;"
        }
    .end annotation

    .line 334
    const-class v0, Lcom/amazon/kcp/application/OptionalBindingsModule$PlaceholderActivity;

    iget-object v1, p0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->placeholderActivitySubcomponentBuilderProvider:Ljavax/inject/Provider;

    .line 335
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;)V
    .locals 34

    move-object/from16 v0, p0

    .line 347
    new-instance v1, Lcom/amazon/kcp/application/DaggerStandaloneComponent$1;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/application/DaggerStandaloneComponent$1;-><init>(Lcom/amazon/kcp/application/DaggerStandaloneComponent;)V

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->placeholderActivitySubcomponentBuilderProvider:Ljavax/inject/Provider;

    .line 360
    invoke-static {}, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideKrlForDownloadFacadeFactory;->create()Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideKrlForDownloadFacadeFactory;

    move-result-object v1

    .line 359
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideKrlForDownloadFacadeProvider:Ljavax/inject/Provider;

    .line 361
    invoke-static/range {p1 .. p1}, Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;->access$200(Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;)Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->applicationProvider:Ljavax/inject/Provider;

    .line 362
    iget-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideKrlForDownloadFacadeProvider:Ljavax/inject/Provider;

    .line 364
    invoke-static {v2, v1}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideAssetStateManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideAssetStateManagerFactory;

    move-result-object v1

    .line 363
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideAssetStateManagerProvider:Ljavax/inject/Provider;

    .line 367
    invoke-static {}, Lcom/amazon/kcp/application/SharedBindingsModule_GetMetricsManagerFactory;->create()Lcom/amazon/kcp/application/SharedBindingsModule_GetMetricsManagerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getMetricsManagerProvider:Ljavax/inject/Provider;

    .line 368
    iget-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->applicationProvider:Ljavax/inject/Provider;

    .line 370
    invoke-static {v1, v2}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideOkHttpClientProviderFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideOkHttpClientProviderFactory;

    move-result-object v1

    .line 369
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideOkHttpClientProvider:Ljavax/inject/Provider;

    .line 372
    iget-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideKrlForDownloadFacadeProvider:Ljavax/inject/Provider;

    .line 373
    invoke-static {v2, v1}, Lcom/amazon/system/net/SwitchingWebRequestExecutor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/system/net/SwitchingWebRequestExecutor_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->switchingWebRequestExecutorProvider:Lcom/amazon/system/net/SwitchingWebRequestExecutor_Factory;

    .line 376
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->bindWebRequestExecutorProvider:Ljavax/inject/Provider;

    .line 377
    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->applicationProvider:Ljavax/inject/Provider;

    .line 379
    invoke-static {v1}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideNetworkServiceFactory;->create(Ljavax/inject/Provider;)Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideNetworkServiceFactory;

    move-result-object v1

    .line 378
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideNetworkServiceProvider:Ljavax/inject/Provider;

    .line 381
    invoke-static {}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMetricsManagerFactory;->create()Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMetricsManagerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideMetricsManagerProvider:Ljavax/inject/Provider;

    .line 383
    invoke-static {}, Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideNetworkPolicyFactory;->create()Lcom/amazon/kindle/download/StandaloneDownloadDaggerModule_ProvideNetworkPolicyFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideNetworkPolicyProvider:Ljavax/inject/Provider;

    .line 384
    iget-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->bindWebRequestExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideNetworkServiceProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideMetricsManagerProvider:Ljavax/inject/Provider;

    .line 386
    invoke-static {v2, v3, v4, v1}, Lcom/amazon/kindle/download/AssetRequestDownloadManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/AssetRequestDownloadManager_Factory;

    move-result-object v1

    .line 385
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->assetRequestDownloadManagerProvider:Ljavax/inject/Provider;

    .line 392
    invoke-static {}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideManifestSerializerFactory;->create()Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideManifestSerializerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideManifestSerializerProvider:Ljavax/inject/Provider;

    .line 393
    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideKrlForDownloadFacadeProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->bindWebRequestExecutorProvider:Ljavax/inject/Provider;

    .line 394
    invoke-static {v1, v2}, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->defaultJobFactoryProvider:Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory_Factory;

    .line 397
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->bindManifestJobFactoryProvider:Ljavax/inject/Provider;

    .line 399
    invoke-static {v1}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader_Factory;->create(Ljavax/inject/Provider;)Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->manifestDownloaderProvider:Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader_Factory;

    .line 402
    invoke-static {}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideDeliveryManifestMetricsEmitterFactory;->create()Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideDeliveryManifestMetricsEmitterFactory;

    move-result-object v1

    .line 401
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideDeliveryManifestMetricsEmitterProvider:Ljavax/inject/Provider;

    .line 403
    iget-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->manifestDownloaderProvider:Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader_Factory;

    iget-object v3, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideManifestSerializerProvider:Ljavax/inject/Provider;

    .line 404
    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->mDSManifestProvider:Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider_Factory;

    .line 410
    invoke-static {v1}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMDSProvidersFactory;->create(Ljavax/inject/Provider;)Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMDSProvidersFactory;

    move-result-object v1

    .line 409
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideMDSProvidersProvider:Ljavax/inject/Provider;

    .line 411
    iget-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideKrlForDownloadFacadeProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->assetRequestDownloadManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideManifestSerializerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideAssetStateManagerProvider:Ljavax/inject/Provider;

    .line 412
    invoke-static {v2, v3, v4, v1, v5}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->coroutineDownloadWorkflowHandlerProvider:Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler_Factory;

    .line 418
    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideKrlForDownloadFacadeProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->assetRequestDownloadManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideManifestSerializerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->manifestDownloaderProvider:Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader_Factory;

    iget-object v5, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideAssetStateManagerProvider:Ljavax/inject/Provider;

    .line 419
    invoke-static {v1, v2, v3, v4, v5}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->deliveryManifestHandlerProvider:Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler_Factory;

    .line 425
    iget-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideAssetStateManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->coroutineDownloadWorkflowHandlerProvider:Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler_Factory;

    .line 427
    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler_Factory;

    move-result-object v1

    .line 426
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->switchingDownloadWorkflowHandlerProvider:Ljavax/inject/Provider;

    .line 431
    iget-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideKrlForDownloadFacadeProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideAssetStateManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->assetRequestDownloadManagerProvider:Ljavax/inject/Provider;

    .line 433
    invoke-static {v2, v3, v4, v1}, Lcom/amazon/kindle/services/download/DownloadContentService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/services/download/DownloadContentService_Factory;

    move-result-object v1

    .line 432
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->downloadContentServiceProvider:Ljavax/inject/Provider;

    .line 439
    invoke-static {}, Lcom/amazon/kcp/application/SharedBindingsModule_GetCoverManagerFactory;->create()Lcom/amazon/kcp/application/SharedBindingsModule_GetCoverManagerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getCoverManagerProvider:Ljavax/inject/Provider;

    .line 440
    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->applicationProvider:Ljavax/inject/Provider;

    .line 442
    invoke-static {v1}, Lcom/amazon/kcp/application/AssociateInformationProviderModule_GetIAssociateInformationProviderFactory;->create(Ljavax/inject/Provider;)Lcom/amazon/kcp/application/AssociateInformationProviderModule_GetIAssociateInformationProviderFactory;

    move-result-object v1

    .line 441
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getIAssociateInformationProvider:Ljavax/inject/Provider;

    .line 444
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getIKindleObjectFactoryProvider:Ljavax/inject/Provider;

    .line 445
    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->applicationProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getContextProvider:Ljavax/inject/Provider;

    .line 446
    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->applicationProvider:Ljavax/inject/Provider;

    .line 448
    invoke-static {v1}, Lcom/amazon/kcp/application/SharedBindingsModule_GetReaderControllerFactory;->create(Ljavax/inject/Provider;)Lcom/amazon/kcp/application/SharedBindingsModule_GetReaderControllerFactory;

    move-result-object v1

    .line 447
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getReaderControllerProvider:Ljavax/inject/Provider;

    .line 450
    invoke-static {}, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetScanLocalContentUtilsFactory;->create()Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetScanLocalContentUtilsFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getScanLocalContentUtilsProvider:Ljavax/inject/Provider;

    .line 451
    iget-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getIKindleObjectFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getContextProvider:Ljavax/inject/Provider;

    .line 453
    invoke-static {v2, v3, v1}, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetLibraryServiceFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetLibraryServiceFactory;

    move-result-object v1

    .line 452
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getLibraryServiceProvider:Ljavax/inject/Provider;

    .line 457
    invoke-static {}, Lcom/amazon/kcp/reader/KeyEventController_Factory;->create()Lcom/amazon/kcp/reader/KeyEventController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->keyEventControllerProvider:Ljavax/inject/Provider;

    .line 458
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->readerManagerProvider:Ljavax/inject/Provider;

    .line 460
    invoke-static {v1}, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler_Factory;->create(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->readerActivityLifecycleEventHandlerProvider:Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler_Factory;

    .line 461
    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->readerManagerProvider:Ljavax/inject/Provider;

    .line 462
    invoke-static {v1}, Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler_Factory;->create(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->positionChangedEventHandlerProvider:Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler_Factory;

    .line 463
    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getContextProvider:Ljavax/inject/Provider;

    .line 465
    invoke-static {v1}, Lcom/amazon/kcp/application/SharedBindingsModule_GetUserSettingsControllerFactory;->create(Ljavax/inject/Provider;)Lcom/amazon/kcp/application/SharedBindingsModule_GetUserSettingsControllerFactory;

    move-result-object v1

    .line 464
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getUserSettingsControllerProvider:Ljavax/inject/Provider;

    .line 466
    iget-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getReaderControllerProvider:Ljavax/inject/Provider;

    .line 467
    invoke-static {v1, v2}, Lcom/amazon/kindle/krx/reader/ReaderSettings_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/reader/ReaderSettings_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->readerSettingsProvider:Lcom/amazon/kindle/krx/reader/ReaderSettings_Factory;

    .line 470
    invoke-static {}, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetRestrictionHandlerFactory;->create()Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetRestrictionHandlerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getRestrictionHandlerProvider:Ljavax/inject/Provider;

    .line 472
    invoke-static {v1}, Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler_Factory;->create(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler_Factory;

    move-result-object v9

    iput-object v9, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->readerRestrictionHandlerProvider:Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler_Factory;

    .line 473
    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->readerManagerProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 474
    iget-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getContextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getReaderControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getLibraryServiceProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->keyEventControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->readerActivityLifecycleEventHandlerProvider:Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler_Factory;

    iget-object v7, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->positionChangedEventHandlerProvider:Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler_Factory;

    iget-object v8, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->readerSettingsProvider:Lcom/amazon/kindle/krx/reader/ReaderSettings_Factory;

    .line 485
    invoke-static {}, Lcom/amazon/kindle/krx/annotations/items/NotesMarksManager_Factory;->create()Lcom/amazon/kindle/krx/annotations/items/NotesMarksManager_Factory;

    move-result-object v10

    .line 486
    invoke-static {}, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadManager_Factory;->create()Lcom/amazon/kindle/krx/reader/ttr/TimeToReadManager_Factory;

    move-result-object v11

    .line 476
    invoke-static/range {v2 .. v11}, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;

    move-result-object v2

    .line 475
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->readerManagerProvider:Ljavax/inject/Provider;

    .line 487
    invoke-virtual {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 491
    invoke-static/range {p1 .. p1}, Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;->access$300(Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;)Lcom/amazon/kcp/application/ReaderServicesModule;

    move-result-object v1

    .line 490
    invoke-static {v1}, Lcom/amazon/kcp/application/ReaderServicesModule_GetPubSubMessageServiceFactory;->create(Lcom/amazon/kcp/application/ReaderServicesModule;)Lcom/amazon/kcp/application/ReaderServicesModule_GetPubSubMessageServiceFactory;

    move-result-object v1

    .line 489
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getPubSubMessageServiceProvider:Ljavax/inject/Provider;

    .line 494
    invoke-static {v1}, Lcom/amazon/android/menu/CustomActionMenuController_Factory;->create(Ljavax/inject/Provider;)Lcom/amazon/android/menu/CustomActionMenuController_Factory;

    move-result-object v1

    .line 493
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->customActionMenuControllerProvider:Ljavax/inject/Provider;

    .line 496
    invoke-static {}, Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController_Factory;->create()Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->defaultCustomSelectionButtonsControllerProvider:Ljavax/inject/Provider;

    .line 497
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 498
    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getContextProvider:Ljavax/inject/Provider;

    .line 499
    invoke-static {v1}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry_Factory;->create(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->playSelectionButtonRegistryProvider:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry_Factory;

    .line 501
    invoke-static {}, Lcom/amazon/kcp/application/SharedBindingsModule_GetHushpuppyUpsellDetectorFactory;->create()Lcom/amazon/kcp/application/SharedBindingsModule_GetHushpuppyUpsellDetectorFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getHushpuppyUpsellDetectorProvider:Ljavax/inject/Provider;

    .line 503
    invoke-static {}, Lcom/amazon/kcp/application/ReaderPanelControllerModule_ProvidesPanelControllerFactory;->create()Lcom/amazon/kcp/application/ReaderPanelControllerModule_ProvidesPanelControllerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->providesPanelControllerProvider:Ljavax/inject/Provider;

    .line 505
    invoke-static {}, Lcom/amazon/kcp/application/StandaloneDeviceContext_Factory;->create()Lcom/amazon/kcp/application/StandaloneDeviceContext_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getDeviceContextProvider:Ljavax/inject/Provider;

    .line 506
    iget-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getUserSettingsControllerProvider:Ljavax/inject/Provider;

    .line 507
    invoke-static {v2, v1}, Lcom/amazon/kindle/brightness/BrightnessManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/brightness/BrightnessManager_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->brightnessManagerProvider:Lcom/amazon/kindle/brightness/BrightnessManager_Factory;

    .line 509
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getBrightnessManagerProvider:Ljavax/inject/Provider;

    .line 511
    invoke-static {}, Lcom/amazon/kindle/positionmarker/MarkedPositionManager_Factory;->create()Lcom/amazon/kindle/positionmarker/MarkedPositionManager_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getMarkedPositionManagerProvider:Ljavax/inject/Provider;

    .line 513
    invoke-static {}, Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer_Factory;->create()Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v13

    iput-object v13, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getReaderLayoutCustomizerProvider:Ljavax/inject/Provider;

    .line 514
    iget-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getReaderControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->customActionMenuControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->defaultCustomSelectionButtonsControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getUserSettingsControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->playSelectionButtonRegistryProvider:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry_Factory;

    iget-object v8, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getPubSubMessageServiceProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getHushpuppyUpsellDetectorProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->providesPanelControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getBrightnessManagerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getMarkedPositionManagerProvider:Ljavax/inject/Provider;

    .line 516
    invoke-static/range {v2 .. v13}, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;

    move-result-object v1

    .line 515
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->readerUIManagerProvider:Ljavax/inject/Provider;

    .line 529
    invoke-static {}, Lcom/amazon/kcp/search/enhancedsearch/BaseSearchUtils_Factory;->create()Lcom/amazon/kcp/search/enhancedsearch/BaseSearchUtils_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getSearchUtilsProvider:Ljavax/inject/Provider;

    .line 530
    invoke-static {v1}, Lcom/amazon/kindle/krx/search/ReaderSearchManager_Factory;->create(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/search/ReaderSearchManager_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->readerSearchManagerProvider:Lcom/amazon/kindle/krx/search/ReaderSearchManager_Factory;

    .line 532
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getReaderSearchManagerProvider:Ljavax/inject/Provider;

    .line 533
    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getPubSubMessageServiceProvider:Ljavax/inject/Provider;

    .line 534
    invoke-static {v1}, Lcom/amazon/kindle/krx/reader/ReaderModeHandler_Factory;->create(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/reader/ReaderModeHandler_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->readerModeHandlerProvider:Lcom/amazon/kindle/krx/reader/ReaderModeHandler_Factory;

    .line 535
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getReaderModeHandlerProvider:Ljavax/inject/Provider;

    .line 537
    invoke-static {}, Lcom/amazon/kcp/application/SharedBindingsModule_GetAndroidApplicationControllerFactory;->create()Lcom/amazon/kcp/application/SharedBindingsModule_GetAndroidApplicationControllerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getAndroidApplicationControllerProvider:Ljavax/inject/Provider;

    .line 540
    invoke-static/range {p1 .. p1}, Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;->access$300(Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;)Lcom/amazon/kcp/application/ReaderServicesModule;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/application/ReaderServicesModule_GetBuiltInUserIdsFactory;->create(Lcom/amazon/kcp/application/ReaderServicesModule;)Lcom/amazon/kcp/application/ReaderServicesModule_GetBuiltInUserIdsFactory;

    move-result-object v1

    .line 539
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v6

    iput-object v6, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getBuiltInUserIdsProvider:Ljavax/inject/Provider;

    .line 541
    iget-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getContextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getIKindleObjectFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getAndroidApplicationControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getLibraryServiceProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getScanLocalContentUtilsProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getPubSubMessageServiceProvider:Ljavax/inject/Provider;

    .line 542
    invoke-static/range {v2 .. v8}, Lcom/amazon/kcp/library/KindleLibraryController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kcp/library/KindleLibraryController_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->kindleLibraryControllerProvider:Lcom/amazon/kcp/library/KindleLibraryController_Factory;

    .line 551
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getLibraryControllerProvider:Ljavax/inject/Provider;

    .line 553
    invoke-static {}, Lcom/amazon/kcp/application/SharedBindingsModule_GetAndroidDeviceClassFactoryFactory;->create()Lcom/amazon/kcp/application/SharedBindingsModule_GetAndroidDeviceClassFactoryFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getAndroidDeviceClassFactoryProvider:Ljavax/inject/Provider;

    .line 554
    iget-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getPubSubMessageServiceProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getLibraryControllerProvider:Ljavax/inject/Provider;

    .line 555
    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/krx/ui/LibraryUIManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/ui/LibraryUIManager_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->libraryUIManagerProvider:Lcom/amazon/kindle/krx/ui/LibraryUIManager_Factory;

    .line 559
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getLibraryUIManagerProvider:Ljavax/inject/Provider;

    .line 560
    invoke-static {}, Lcom/amazon/kindle/krx/logging/Logger_Factory;->create()Lcom/amazon/kindle/krx/logging/Logger_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getLoggerProvider:Ljavax/inject/Provider;

    .line 561
    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getContextProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider_Factory;->create(Ljavax/inject/Provider;)Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->accountSecretProvider:Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider_Factory;

    .line 563
    invoke-static {v1}, Lcom/mobipocket/android/library/reader/AndroidSecurity_Factory;->create(Ljavax/inject/Provider;)Lcom/mobipocket/android/library/reader/AndroidSecurity_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->androidSecurityProvider:Ljavax/inject/Provider;

    .line 564
    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getAndroidApplicationControllerProvider:Ljavax/inject/Provider;

    .line 566
    invoke-static {v1}, Lcom/amazon/kindle/sync/SynchronizationManager_Factory;->create(Ljavax/inject/Provider;)Lcom/amazon/kindle/sync/SynchronizationManager_Factory;

    move-result-object v1

    .line 565
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v7

    iput-object v7, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->synchronizationManagerProvider:Ljavax/inject/Provider;

    .line 568
    iget-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getIKindleObjectFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getLibraryControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getLibraryServiceProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getReaderControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->androidSecurityProvider:Ljavax/inject/Provider;

    .line 569
    invoke-static/range {v2 .. v7}, Lcom/amazon/kindle/krx/sync/SyncManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/sync/SyncManager_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->syncManagerProvider:Lcom/amazon/kindle/krx/sync/SyncManager_Factory;

    .line 576
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getSyncManagerProvider:Ljavax/inject/Provider;

    .line 577
    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getPubSubMessageServiceProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/amazon/kindle/krx/reader/BubbleManager_Factory;->create(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/reader/BubbleManager_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->bubbleManagerProvider:Lcom/amazon/kindle/krx/reader/BubbleManager_Factory;

    .line 578
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getBubbleManagerProvider:Ljavax/inject/Provider;

    .line 580
    invoke-static {}, Lcom/amazon/kindle/krx/update/KRXContentUpdateManager_Factory;->create()Lcom/amazon/kindle/krx/update/KRXContentUpdateManager_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getContentUpdateManagerProvider:Ljavax/inject/Provider;

    .line 582
    invoke-static {}, Lcom/amazon/kindle/krx/ext/KRXExtensionManager_Factory;->create()Lcom/amazon/kindle/krx/ext/KRXExtensionManager_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v13

    iput-object v13, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getExtensionManagerProvider:Ljavax/inject/Provider;

    .line 583
    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 584
    iget-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getIKindleObjectFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->readerManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->readerUIManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getPubSubMessageServiceProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getReaderSearchManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getReaderModeHandlerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getLibraryUIManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getLoggerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getSyncManagerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getBubbleManagerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getContentUpdateManagerProvider:Ljavax/inject/Provider;

    .line 586
    invoke-static/range {v2 .. v13}, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;

    move-result-object v2

    .line 585
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 599
    invoke-virtual {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 600
    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 601
    invoke-static {v1}, Lcom/amazon/kindle/krx/KindleReaderSDKModule_Factory;->create(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/KindleReaderSDKModule_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->kindleReaderSDKModuleProvider:Ljavax/inject/Provider;

    .line 603
    invoke-static {v1}, Lcom/amazon/kindle/module/StandaloneModuleInitializer_Factory;->create(Ljavax/inject/Provider;)Lcom/amazon/kindle/module/StandaloneModuleInitializer_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->standaloneModuleInitializerProvider:Lcom/amazon/kindle/module/StandaloneModuleInitializer_Factory;

    .line 605
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getIModuleInitializerProvider:Ljavax/inject/Provider;

    .line 607
    invoke-static {}, Lcom/amazon/kcp/application/SharedBindingsModule_GetIDeviceInformationProviderFactory;->create()Lcom/amazon/kcp/application/SharedBindingsModule_GetIDeviceInformationProviderFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getIDeviceInformationProvider:Ljavax/inject/Provider;

    .line 609
    invoke-static {}, Lcom/amazon/kcp/application/SharedBindingsModule_GetSidecarProviderRegistryFactory;->create()Lcom/amazon/kcp/application/SharedBindingsModule_GetSidecarProviderRegistryFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getSidecarProviderRegistryProvider:Ljavax/inject/Provider;

    .line 610
    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getIKindleObjectFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getContextProvider:Ljavax/inject/Provider;

    .line 612
    invoke-static {v1, v2}, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetGroupServiceFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetGroupServiceFactory;

    move-result-object v1

    .line 611
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getGroupServiceProvider:Ljavax/inject/Provider;

    .line 614
    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getContextProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory_Factory;->create(Ljavax/inject/Provider;)Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->androidFileFactoryProvider:Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory_Factory;

    .line 615
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getFileFactoryProvider:Ljavax/inject/Provider;

    .line 616
    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->applicationProvider:Ljavax/inject/Provider;

    .line 618
    invoke-static {v1}, Lcom/amazon/kcp/application/SharedBindingsModule_GetBroadcastReceiverHelperFactory;->create(Ljavax/inject/Provider;)Lcom/amazon/kcp/application/SharedBindingsModule_GetBroadcastReceiverHelperFactory;

    move-result-object v1

    .line 617
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getBroadcastReceiverHelperProvider:Ljavax/inject/Provider;

    .line 620
    invoke-static {}, Lcom/amazon/kcp/application/SharedBindingsModule_GetAccessibilityStateListenerFactory;->create()Lcom/amazon/kcp/application/SharedBindingsModule_GetAccessibilityStateListenerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getAccessibilityStateListenerProvider:Ljavax/inject/Provider;

    .line 621
    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->applicationProvider:Ljavax/inject/Provider;

    .line 623
    invoke-static {v1}, Lcom/amazon/kcp/application/StandaloneMAPRegistrationManagerModule_ProvideRegistrationManagerFactory;->create(Ljavax/inject/Provider;)Lcom/amazon/kcp/application/StandaloneMAPRegistrationManagerModule_ProvideRegistrationManagerFactory;

    move-result-object v1

    .line 622
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideRegistrationManagerProvider:Ljavax/inject/Provider;

    .line 625
    invoke-static {}, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->absentGuavaOptionalProvider()Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->optionalOfWechatDelegateInterfaceProvider:Ljavax/inject/Provider;

    .line 627
    invoke-static {v1}, Lcom/amazon/kcp/reader/StandaloneShareHelper_Factory;->create(Ljavax/inject/Provider;)Lcom/amazon/kcp/reader/StandaloneShareHelper_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->standaloneShareHelperProvider:Lcom/amazon/kcp/reader/StandaloneShareHelper_Factory;

    .line 629
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->providesStandaloneShareHelperProvider:Ljavax/inject/Provider;

    .line 630
    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getMetricsManagerProvider:Ljavax/inject/Provider;

    .line 632
    invoke-static {v1}, Lcom/amazon/kcp/application/SharedBindingsModule_GetContentOpenMetricsManagerFactory;->create(Ljavax/inject/Provider;)Lcom/amazon/kcp/application/SharedBindingsModule_GetContentOpenMetricsManagerFactory;

    move-result-object v1

    .line 631
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getContentOpenMetricsManagerProvider:Ljavax/inject/Provider;

    .line 634
    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->accountSecretProvider:Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider_Factory;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getAccountSecretProvider:Ljavax/inject/Provider;

    .line 638
    invoke-static/range {p1 .. p1}, Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;->access$400(Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;)Lcom/amazon/kcp/application/StandAloneKindleObjectModule;

    move-result-object v1

    iget-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getContextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 637
    invoke-static {v1, v2, v3}, Lcom/amazon/kcp/application/StandAloneKindleObjectModule_GetReaderNotificationsManagerFactory;->create(Lcom/amazon/kcp/application/StandAloneKindleObjectModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kcp/application/StandAloneKindleObjectModule_GetReaderNotificationsManagerFactory;

    move-result-object v1

    .line 636
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v31, v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getReaderNotificationsManagerProvider:Ljavax/inject/Provider;

    .line 639
    iget-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getCoverManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getIAssociateInformationProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getIModuleInitializerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getIDeviceInformationProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getSidecarProviderRegistryProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getLibraryServiceProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getGroupServiceProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getFileFactoryProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getReaderControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getBroadcastReceiverHelperProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getRestrictionHandlerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getAccessibilityStateListenerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->providesPanelControllerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideRegistrationManagerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->providesStandaloneShareHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getContentOpenMetricsManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getUserSettingsControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->keyEventControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->customActionMenuControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->defaultCustomSelectionButtonsControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getDeviceContextProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getBrightnessManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getMarkedPositionManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getReaderLayoutCustomizerProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getAndroidApplicationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getLibraryControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getAccountSecretProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->androidSecurityProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->synchronizationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideAssetStateManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->downloadContentServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v33, v1

    .line 640
    invoke-static/range {v2 .. v33}, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->standaloneKindleObjectFactoryProvider:Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;

    .line 673
    iget-object v2, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getIKindleObjectFactoryProvider:Ljavax/inject/Provider;

    check-cast v2, Ldagger/internal/DelegateFactory;

    .line 676
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getIKindleObjectFactoryProvider:Ljavax/inject/Provider;

    .line 677
    invoke-virtual {v2, v1}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    return-void
.end method

.method private injectReaderDownloadModule(Lcom/amazon/kindle/download/ReaderDownloadModule;)Lcom/amazon/kindle/download/ReaderDownloadModule;
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->downloadContentServiceProvider:Ljavax/inject/Provider;

    .line 703
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 702
    invoke-static {p1, v0}, Lcom/amazon/kindle/download/ReaderDownloadModule_MembersInjector;->injectDownloadServiceLazy(Lcom/amazon/kindle/download/ReaderDownloadModule;Ldagger/Lazy;)V

    .line 704
    iget-object v0, p0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->assetRequestDownloadManagerProvider:Ljavax/inject/Provider;

    .line 705
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 704
    invoke-static {p1, v0}, Lcom/amazon/kindle/download/ReaderDownloadModule_MembersInjector;->injectDownloadManagerLazy(Lcom/amazon/kindle/download/ReaderDownloadModule;Ldagger/Lazy;)V

    .line 706
    iget-object v0, p0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->provideAssetStateManagerProvider:Ljavax/inject/Provider;

    .line 707
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 706
    invoke-static {p1, v0}, Lcom/amazon/kindle/download/ReaderDownloadModule_MembersInjector;->injectAssetStateManagerLazy(Lcom/amazon/kindle/download/ReaderDownloadModule;Ldagger/Lazy;)V

    .line 708
    iget-object v0, p0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->bindWebRequestExecutorProvider:Ljavax/inject/Provider;

    .line 709
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 708
    invoke-static {p1, v0}, Lcom/amazon/kindle/download/ReaderDownloadModule_MembersInjector;->injectWebRequestExecutorLazy(Lcom/amazon/kindle/download/ReaderDownloadModule;Ldagger/Lazy;)V

    return-object p1
.end method

.method private injectReddingApplication(Lcom/amazon/kcp/application/ReddingApplication;)Lcom/amazon/kcp/application/ReddingApplication;
    .locals 1

    .line 697
    invoke-direct {p0}, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getDispatchingAndroidInjectorOfActivity()Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    .line 696
    invoke-static {p1, v0}, Lcom/amazon/kcp/application/ReddingApplication_MembersInjector;->injectDispatchingActivityInjector(Lcom/amazon/kcp/application/ReddingApplication;Ldagger/android/DispatchingAndroidInjector;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/amazon/kcp/application/ReddingApplication;)V
    .locals 0

    .line 682
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->injectReddingApplication(Lcom/amazon/kcp/application/ReddingApplication;)Lcom/amazon/kcp/application/ReddingApplication;

    return-void
.end method

.method public inject(Lcom/amazon/kindle/download/ReaderDownloadModule;)V
    .locals 0

    .line 687
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->injectReaderDownloadModule(Lcom/amazon/kindle/download/ReaderDownloadModule;)Lcom/amazon/kindle/download/ReaderDownloadModule;

    return-void
.end method

.method public kindleObjectFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->getIKindleObjectFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/IKindleObjectFactory;

    return-object v0
.end method
