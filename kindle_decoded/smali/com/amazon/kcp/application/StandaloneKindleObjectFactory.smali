.class public Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;
.super Lcom/amazon/kcp/application/AbstractKindleObjectFactory;
.source "StandaloneKindleObjectFactory.java"


# instance fields
.field private volatile annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

.field private volatile applicationCapabilities:Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

.field private volatile authenticationManager:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

.field private volatile broadcastReceivers:Ljava/util/List;
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

.field private final broadcastReceiversLock:Ljava/lang/Object;

.field protected volatile collectionSyncManager:Lcom/amazon/kindle/collections/ICollectionsSyncManager;

.field protected volatile collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

.field private deviceType:Lcom/amazon/kcp/application/AndroidDeviceType;

.field private volatile falkorATLSyncManager:Lcom/amazon/kcp/sync/FalkorSyncManager;

.field private volatile falkorLastReadEpisodeSyncManager:Lcom/amazon/kcp/sync/FalkorSyncManager;

.field private volatile ksoCacheManager:Lcom/amazon/kindle/specialOffer/IKSOCacheManager;

.field private volatile notificationSettingsManager:Lcom/amazon/kcp/notifications/INotificationSettingsManager;

.field private volatile phoenixCompatibilityAdapter:Lcom/amazon/phoenix/IPhoenixCompatibilityAdapter;

.field private volatile readDataSyncManager:Lcom/amazon/kcp/sync/IReadDataSyncManager;

.field private volatile readerNotificationsManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile standAloneMessengerService:Lcom/amazon/kindle/krx/messaging/IMessengerService;

.field private volatile storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

.field private volatile tutorialManager:Lcom/amazon/kcp/info/TutorialManager;


# direct methods
.method public constructor <init>(Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 32
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
            "Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/services/download/IDownloadService;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p31

    move-object/from16 v31, p32

    .line 160
    invoke-direct/range {v0 .. v31}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;-><init>(Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V

    .line 646
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->broadcastReceiversLock:Ljava/lang/Object;

    move-object/from16 v0, p30

    .line 192
    iput-object v0, v1, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->readerNotificationsManager:Ldagger/Lazy;

    return-void
.end method

.method private internalGetAuthenticationManager()Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;
    .locals 6

    .line 327
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->authenticationManager:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

    if-nez v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->authenticationManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->authenticationManager:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

    if-nez v1, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/ReddingApplication;

    .line 331
    new-instance v2, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/amazon/kindle/services/authentication/TokenKey;

    const/4 v4, 0x0

    sget-object v5, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_NAME:Lcom/amazon/kindle/services/authentication/TokenKey;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_EMAIL:Lcom/amazon/kindle/services/authentication/TokenKey;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/amazon/kindle/services/authentication/TokenKey;->USER_NAME:Lcom/amazon/kindle/services/authentication/TokenKey;

    aput-object v5, v3, v4

    .line 332
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 334
    invoke-virtual {v1}, Lcom/amazon/kcp/application/ReddingApplication;->getInternalVersion()J

    move-result-wide v4

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;-><init>(Landroid/content/Context;Ljava/util/List;J)V

    iput-object v2, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->authenticationManager:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

    .line 336
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 338
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->authenticationManager:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

    return-object v0
.end method


# virtual methods
.method protected createDCMMetricsFactoryProviderInstance()Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;
    .locals 1

    .line 255
    new-instance v0, Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;-><init>()V

    return-object v0
.end method

.method public createImageSizes()Ljava/util/Map;
    .locals 6
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

    .line 259
    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->LARGE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    const v1, 0x7f070938

    const v2, 0x7f070937

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->calculateMaxImageDimension(Lcom/amazon/kindle/cover/ImageSizes$Type;II)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object v0

    .line 262
    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->LARGE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->updateMaxImageDimension(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/util/drawing/Dimension;)V

    .line 264
    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    const v2, 0x7f07078c

    const v3, 0x7f07078b

    invoke-virtual {p0, v1, v2, v3}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->calculateMaxImageDimension(Lcom/amazon/kindle/cover/ImageSizes$Type;II)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object v1

    .line 267
    sget-object v2, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {p0, v2, v1}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->updateMaxImageDimension(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/util/drawing/Dimension;)V

    .line 269
    sget-object v2, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    const v3, 0x7f070790

    const v4, 0x7f07078f

    invoke-virtual {p0, v2, v3, v4}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->calculateMaxImageDimension(Lcom/amazon/kindle/cover/ImageSizes$Type;II)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object v2

    .line 272
    sget-object v3, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {p0, v3, v2}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->updateMaxImageDimension(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/util/drawing/Dimension;)V

    .line 274
    new-instance v3, Ljava/util/EnumMap;

    const-class v4, Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 276
    new-instance v4, Ljava/util/EnumMap;

    const-class v5, Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v4, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 277
    sget-object v5, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->LARGE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    new-instance v0, Ljava/util/EnumMap;

    const-class v4, Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v0, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 281
    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 285
    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method public createOrientationLockManager()Lcom/amazon/kcp/reader/ui/IOrientationLockManager;
    .locals 1

    .line 227
    invoke-static {}, Lcom/amazon/kcp/util/OrientationLockUtils;->shouldAllowOrientationLock()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kcp/reader/ui/NoOpOrientationLockManager;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/ui/NoOpOrientationLockManager;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getAccessibilityDelegate(Lcom/amazon/android/docviewer/KindleDocView;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/ui/ReaderLayout;)Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;
    .locals 1

    .line 432
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/StandaloneKindleAccessibilityDelegate;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/kcp/reader/accessibility/StandaloneKindleAccessibilityDelegate;-><init>(Lcom/amazon/android/docviewer/KindleDocView;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    return-object v0
.end method

.method public getAccountProvider()Lcom/amazon/kindle/services/authentication/IAccountProvider;
    .locals 1

    .line 348
    invoke-direct {p0}, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->internalGetAuthenticationManager()Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

    move-result-object v0

    return-object v0
.end method

.method public getAndroidDeviceInformationProvider(Landroid/content/Context;)Lcom/amazon/kcp/application/IAndroidDeviceInformation;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->androidDeviceInformationProvider:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    if-nez v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->androidDeviceInformationProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->androidDeviceInformationProvider:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    if-nez v1, :cond_0

    .line 218
    new-instance v1, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;

    invoke-direct {v1, p1}, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->androidDeviceInformationProvider:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    .line 220
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 222
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->androidDeviceInformationProvider:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    return-object p1
.end method

.method public getAndroidSharedPreferences(Ljava/lang/String;ILandroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;
    .locals 1

    .line 323
    new-instance v0, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    return-object v0
.end method

.method public getAnnotationsManager()Lcom/amazon/kindle/annotation/IAnnotationsManager;
    .locals 5

    .line 570
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    if-nez v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->annotationsManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 572
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    if-nez v1, :cond_0

    .line 573
    new-instance v1, Lcom/amazon/kindle/annotation/AnnotationsManager;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kindle/annotation/AnnotationsManager;-><init>(Landroid/content/Context;Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/IAuthenticationManager;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    .line 575
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 577
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    return-object v0
.end method

.method public getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;
    .locals 5

    .line 293
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->applicationCapabilities:Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    if-nez v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->applicationCapabilitiesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->applicationCapabilities:Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    if-nez v1, :cond_0

    .line 296
    new-instance v1, Lcom/amazon/kcp/application/StandaloneApplicationCapabilities;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 297
    invoke-virtual {p0}, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/application/StandaloneApplicationCapabilities;-><init>(Landroid/content/res/Resources;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/persistence/ISecureStorage;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->applicationCapabilities:Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    .line 299
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 301
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->applicationCapabilities:Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    return-object v0
.end method

.method public getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;
    .locals 1

    .line 343
    invoke-direct {p0}, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->internalGetAuthenticationManager()Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastReceivers()Ljava/util/List;
    .locals 5
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

    .line 239
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->broadcastReceivers:Ljava/util/List;

    if-nez v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->broadcastReceiversLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->broadcastReceivers:Ljava/util/List;

    if-nez v1, :cond_0

    .line 242
    invoke-super {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getBroadcastReceivers()Ljava/util/List;

    move-result-object v1

    .line 243
    new-instance v2, Landroid/util/Pair;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/amazon/kcp/network/ConnectivityChangeReceiver;

    invoke-direct {v4}, Lcom/amazon/kcp/network/ConnectivityChangeReceiver;-><init>()V

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->broadcastReceivers:Ljava/util/List;

    .line 248
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 250
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->broadcastReceivers:Ljava/util/List;

    return-object v0
.end method

.method public getCollectionsDAO()Lcom/amazon/kindle/collections/dao/ICollectionsDAO;
    .locals 8

    .line 507
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    if-nez v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->collectionDAOLock:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    if-nez v1, :cond_0

    .line 510
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getApplication()Lcom/amazon/kcp/application/ReddingApplication;

    move-result-object v3

    .line 511
    new-instance v1, Lcom/amazon/kindle/collections/dao/CollectionsDAO;

    invoke-virtual {p0, v3}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getKindleContentDB(Landroid/content/Context;)Lcom/amazon/kindle/content/db/KindleContentDB;

    move-result-object v4

    .line 512
    invoke-virtual {p0}, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getSortFriendlyFormatter()Lcom/amazon/kindle/utils/ISortFriendlyFormatter;

    move-result-object v6

    .line 513
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;-><init>(Landroid/content/Context;Lcom/amazon/kindle/content/db/KindleContentDB;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/utils/ISortFriendlyFormatter;Lcom/amazon/kcp/application/IAppSettingsController;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    .line 515
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 517
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    return-object v0
.end method

.method public getCollectionsSyncManager()Lcom/amazon/kindle/collections/ICollectionsSyncManager;
    .locals 8

    .line 522
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->collectionSyncManager:Lcom/amazon/kindle/collections/ICollectionsSyncManager;

    if-nez v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->collectionsSyncManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->collectionSyncManager:Lcom/amazon/kindle/collections/ICollectionsSyncManager;

    if-nez v1, :cond_0

    .line 525
    new-instance v1, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getApplication()Lcom/amazon/kcp/application/ReddingApplication;

    move-result-object v3

    new-instance v4, Lcom/amazon/kindle/utils/BookTypeFactory;

    .line 526
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/amazon/kindle/utils/BookTypeFactory;-><init>(Lcom/amazon/kindle/content/ILibraryService;)V

    invoke-virtual {p0}, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v5

    .line 527
    invoke-virtual {p0}, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->getAccountProvider()Lcom/amazon/kindle/services/authentication/IAccountProvider;

    move-result-object v6

    invoke-static {}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getExtensionManager()Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;-><init>(Landroid/app/Application;Lcom/amazon/kcp/library/IBookTypeFactory;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/services/authentication/IAccountProvider;Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->collectionSyncManager:Lcom/amazon/kindle/collections/ICollectionsSyncManager;

    .line 529
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 531
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->collectionSyncManager:Lcom/amazon/kindle/collections/ICollectionsSyncManager;

    return-object v0
.end method

.method public getContentViewAccessibilityMixin()Lcom/amazon/kcp/reader/accessibility/IContentViewAccessibilityMixin;
    .locals 3

    const-string v0, "StandaloneContentViewAccessibilityMixin<init>"

    const/4 v1, 0x1

    .line 422
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 423
    new-instance v1, Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin;-><init>()V

    const/4 v2, 0x0

    .line 424
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public getDeviceInformation(Lcom/amazon/kcp/application/IAuthenticationManager;)Lcom/amazon/kindle/krx/application/IDeviceInformation;
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    if-nez v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->deviceInformationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    if-nez v1, :cond_0

    .line 493
    new-instance v1, Lcom/amazon/kindle/krx/application/StandaloneDeviceInformation;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/krx/application/StandaloneDeviceInformation;-><init>(Lcom/amazon/kcp/application/IAuthenticationManager;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    .line 495
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 497
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    return-object p1
.end method

.method public getDeviceType()Lcom/amazon/kcp/application/AndroidDeviceType;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->deviceType:Lcom/amazon/kcp/application/AndroidDeviceType;

    return-object v0
.end method

.method public getFalkorATLSyncManager()Lcom/amazon/kcp/sync/FalkorSyncManager;
    .locals 11

    .line 616
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->falkorATLSyncManager:Lcom/amazon/kcp/sync/FalkorSyncManager;

    if-nez v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->falkorATLSyncManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 618
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->falkorATLSyncManager:Lcom/amazon/kcp/sync/FalkorSyncManager;

    if-nez v1, :cond_0

    .line 619
    new-instance v1, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getApplication()Lcom/amazon/kcp/application/ReddingApplication;

    move-result-object v3

    .line 620
    invoke-virtual {p0}, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v4

    invoke-static {}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getExtensionManager()Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->getAccountProvider()Lcom/amazon/kindle/services/authentication/IAccountProvider;

    move-result-object v6

    .line 621
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v7

    const-class v2, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    invoke-static {v2}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    .line 622
    invoke-static {}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v10

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;-><init>(Landroid/app/Application;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;Lcom/amazon/kindle/services/authentication/IAccountProvider;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/integrator/LargeLibraryRepository;Lcom/amazon/kindle/krx/library/ILibraryManager;Lcom/amazon/kindle/content/IGroupService;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->falkorATLSyncManager:Lcom/amazon/kcp/sync/FalkorSyncManager;

    .line 624
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 626
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->falkorATLSyncManager:Lcom/amazon/kcp/sync/FalkorSyncManager;

    invoke-interface {v0}, Lcom/amazon/kcp/sync/FalkorSyncManager;->connect()V

    .line 627
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->falkorATLSyncManager:Lcom/amazon/kcp/sync/FalkorSyncManager;

    return-object v0
.end method

.method public getFalkorLastReadEpisodeSyncManager()Lcom/amazon/kcp/sync/FalkorSyncManager;
    .locals 6

    .line 633
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->falkorLastReadEpisodeSyncManager:Lcom/amazon/kcp/sync/FalkorSyncManager;

    if-nez v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->falkorLastReadEpisodeSyncManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->falkorLastReadEpisodeSyncManager:Lcom/amazon/kcp/sync/FalkorSyncManager;

    if-nez v1, :cond_0

    .line 636
    new-instance v1, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getApplication()Lcom/amazon/kcp/application/ReddingApplication;

    move-result-object v2

    .line 637
    invoke-virtual {p0}, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v3

    invoke-static {}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getExtensionManager()Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->getAccountProvider()Lcom/amazon/kindle/services/authentication/IAccountProvider;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;-><init>(Landroid/app/Application;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;Lcom/amazon/kindle/services/authentication/IAccountProvider;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->falkorLastReadEpisodeSyncManager:Lcom/amazon/kcp/sync/FalkorSyncManager;

    .line 639
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 641
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->falkorLastReadEpisodeSyncManager:Lcom/amazon/kcp/sync/FalkorSyncManager;

    invoke-interface {v0}, Lcom/amazon/kcp/sync/FalkorSyncManager;->connect()V

    .line 642
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->falkorLastReadEpisodeSyncManager:Lcom/amazon/kcp/sync/FalkorSyncManager;

    return-object v0
.end method

.method public getFontConfigInitializer()Lcom/amazon/kcp/font/FontConfigInitializer;
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontConfigInitializer:Lcom/amazon/kcp/font/FontConfigInitializer;

    if-nez v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontConfigInitializerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontConfigInitializer:Lcom/amazon/kcp/font/FontConfigInitializer;

    if-nez v1, :cond_0

    .line 393
    new-instance v1, Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontConfigInitializer:Lcom/amazon/kcp/font/FontConfigInitializer;

    .line 395
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 397
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontConfigInitializer:Lcom/amazon/kcp/font/FontConfigInitializer;

    return-object v0
.end method

.method public getFontConfigurationProvider()Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontConfigProvider:Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;

    if-nez v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontConfigProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontConfigProvider:Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;

    if-nez v1, :cond_0

    .line 381
    new-instance v1, Lcom/amazon/kcp/font/StandAloneFontConfigurationProvider;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kcp/font/StandAloneFontConfigurationProvider;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontConfigProvider:Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;

    .line 383
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 385
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontConfigProvider:Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;

    return-object v0
.end method

.method public getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontFactory:Lcom/mobipocket/android/drawing/AndroidFontFactory;

    if-nez v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontFactoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontFactory:Lcom/mobipocket/android/drawing/AndroidFontFactory;

    if-nez v1, :cond_0

    .line 369
    new-instance v1, Lcom/mobipocket/android/drawaing/StandaloneAndroidFontFactory;

    invoke-direct {v1}, Lcom/mobipocket/android/drawaing/StandaloneAndroidFontFactory;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontFactory:Lcom/mobipocket/android/drawing/AndroidFontFactory;

    .line 371
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 373
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->fontFactory:Lcom/mobipocket/android/drawing/AndroidFontFactory;

    return-object v0
.end method

.method public getFontOptionData(Landroid/content/Context;)Lcom/amazon/kcp/reader/ui/ViewOptionData;
    .locals 1

    .line 502
    new-instance v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getKSOCacheManager()Lcom/amazon/kindle/specialOffer/IKSOCacheManager;
    .locals 3

    .line 557
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->ksoCacheManager:Lcom/amazon/kindle/specialOffer/IKSOCacheManager;

    if-nez v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->ksoCacheManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->ksoCacheManager:Lcom/amazon/kindle/specialOffer/IKSOCacheManager;

    if-nez v1, :cond_0

    .line 560
    new-instance v1, Lcom/amazon/kindle/specialOffer/KSOCacheManager;

    iget-object v2, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->ksoCacheManager:Lcom/amazon/kindle/specialOffer/IKSOCacheManager;

    .line 562
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 564
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->ksoCacheManager:Lcom/amazon/kindle/specialOffer/IKSOCacheManager;

    return-object v0
.end method

.method public getMessengerServiceForPlugins()Lcom/amazon/kindle/krx/messaging/IMessengerService;
    .locals 3

    .line 473
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->standAloneMessengerService:Lcom/amazon/kindle/krx/messaging/IMessengerService;

    if-nez v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->messengerServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->standAloneMessengerService:Lcom/amazon/kindle/krx/messaging/IMessengerService;

    if-nez v1, :cond_0

    .line 476
    new-instance v1, Lcom/amazon/kindle/messaging/StandaloneOdotMessageHandler;

    iget-object v2, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/amazon/kindle/messaging/StandaloneOdotMessageHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->standAloneMessengerService:Lcom/amazon/kindle/krx/messaging/IMessengerService;

    .line 478
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 480
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->standAloneMessengerService:Lcom/amazon/kindle/krx/messaging/IMessengerService;

    return-object v0
.end method

.method public getNotificationSettingsManager()Lcom/amazon/kcp/notifications/INotificationSettingsManager;
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->notificationSettingsManager:Lcom/amazon/kcp/notifications/INotificationSettingsManager;

    if-nez v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->notificationSettingsManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->notificationSettingsManager:Lcom/amazon/kcp/notifications/INotificationSettingsManager;

    if-nez v1, :cond_0

    .line 314
    new-instance v1, Lcom/amazon/kcp/notifications/StandaloneNotificationSettingsManager;

    invoke-direct {v1}, Lcom/amazon/kcp/notifications/StandaloneNotificationSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->notificationSettingsManager:Lcom/amazon/kcp/notifications/INotificationSettingsManager;

    .line 316
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 318
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->notificationSettingsManager:Lcom/amazon/kcp/notifications/INotificationSettingsManager;

    return-object v0
.end method

.method public getPhoenixCompatibilityAdapter()Lcom/amazon/phoenix/IPhoenixCompatibilityAdapter;
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->phoenixCompatibilityAdapter:Lcom/amazon/phoenix/IPhoenixCompatibilityAdapter;

    if-nez v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->phoenixCompatibilityAdapterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 585
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->phoenixCompatibilityAdapter:Lcom/amazon/phoenix/IPhoenixCompatibilityAdapter;

    if-nez v1, :cond_0

    .line 586
    new-instance v1, Lcom/amazon/phoenix/StandalonePhoenixCompatibilityAdapter;

    invoke-direct {v1}, Lcom/amazon/phoenix/StandalonePhoenixCompatibilityAdapter;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->phoenixCompatibilityAdapter:Lcom/amazon/phoenix/IPhoenixCompatibilityAdapter;

    .line 588
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 590
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->phoenixCompatibilityAdapter:Lcom/amazon/phoenix/IPhoenixCompatibilityAdapter;

    return-object v0
.end method

.method public getReadDataSyncManager()Lcom/amazon/kcp/sync/IReadDataSyncManager;
    .locals 12

    .line 537
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->readDataSyncManager:Lcom/amazon/kcp/sync/IReadDataSyncManager;

    if-nez v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->readDataSyncManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->readDataSyncManager:Lcom/amazon/kcp/sync/IReadDataSyncManager;

    if-nez v1, :cond_0

    .line 540
    new-instance v1, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getApplication()Lcom/amazon/kcp/application/ReddingApplication;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->getAccountProvider()Lcom/amazon/kindle/services/authentication/IAccountProvider;

    move-result-object v4

    .line 541
    invoke-virtual {p0}, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->getAnnotationsManager()Lcom/amazon/kindle/annotation/IAnnotationsManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v7

    new-instance v8, Lcom/amazon/kindle/utils/BookTypeFactory;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/amazon/kindle/utils/BookTypeFactory;-><init>(Lcom/amazon/kindle/content/ILibraryService;)V

    .line 542
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v9

    invoke-static {}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getExtensionManager()Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;

    move-result-object v10

    const-class v2, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    invoke-static {v2}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;-><init>(Landroid/app/Application;Lcom/amazon/kindle/services/authentication/IAccountProvider;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/annotation/IAnnotationsManager;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/library/IBookTypeFactory;Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;Lcom/amazon/kcp/integrator/LargeLibraryRepository;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->readDataSyncManager:Lcom/amazon/kcp/sync/IReadDataSyncManager;

    .line 544
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 546
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->readDataSyncManager:Lcom/amazon/kcp/sync/IReadDataSyncManager;

    invoke-interface {v0}, Lcom/amazon/kcp/sync/IReadDataSyncManager;->initialize()V

    .line 547
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->readDataSyncManager:Lcom/amazon/kcp/sync/IReadDataSyncManager;

    return-object v0
.end method

.method public getReaderNotificationsManager()Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->readerNotificationsManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;

    return-object v0
.end method

.method public getRemoteTodoFetcher()Lcom/amazon/kindle/todo/IRemoteTodoFetcher;
    .locals 1

    .line 608
    invoke-static {}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->getInstance()Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    move-result-object v0

    return-object v0
.end method

.method public getRevokeOwnershipResumer()Lcom/amazon/kindle/IRevokeOwnershipResumer;
    .locals 4

    .line 437
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->revokeOwnershipResumer:Lcom/amazon/kindle/IRevokeOwnershipResumer;

    if-nez v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->revokeOwnershipResumerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->revokeOwnershipResumer:Lcom/amazon/kindle/IRevokeOwnershipResumer;

    if-nez v1, :cond_0

    .line 440
    new-instance v1, Lcom/amazon/kindle/RevokeOwnershipResumer;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getRevokeTrackerDAO()Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/RevokeOwnershipResumer;-><init>(Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->revokeOwnershipResumer:Lcom/amazon/kindle/IRevokeOwnershipResumer;

    .line 442
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 444
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->revokeOwnershipResumer:Lcom/amazon/kindle/IRevokeOwnershipResumer;

    return-object v0
.end method

.method public getRotationHandler()Lcom/amazon/kcp/reader/IRotationHandler;
    .locals 1

    .line 405
    new-instance v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory$1;-><init>(Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;)V

    return-object v0
.end method

.method public getStorageLocationPreference()Lcom/amazon/kindle/sdcard/IStorageLocationPreference;
    .locals 3

    .line 595
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storageLocationPreference:Lcom/amazon/kindle/sdcard/IStorageLocationPreference;

    if-nez v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storageLocationPreferenceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 597
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storageLocationPreference:Lcom/amazon/kindle/sdcard/IStorageLocationPreference;

    if-nez v1, :cond_0

    .line 598
    new-instance v1, Lcom/amazon/kindle/sdcard/StandaloneStorageLocationPreference;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/sdcard/StandaloneStorageLocationPreference;-><init>(Lcom/amazon/kcp/application/UserSettingsController;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storageLocationPreference:Lcom/amazon/kindle/sdcard/IStorageLocationPreference;

    .line 600
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 602
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storageLocationPreference:Lcom/amazon/kindle/sdcard/IStorageLocationPreference;

    return-object v0
.end method

.method public getStoreIntentCreator()Lcom/amazon/kcp/store/IStoreIntentCreator;
    .locals 3

    .line 461
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storeIntentCreator:Lcom/amazon/kcp/store/IStoreIntentCreator;

    if-nez v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storeIntentCreatorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storeIntentCreator:Lcom/amazon/kcp/store/IStoreIntentCreator;

    if-nez v1, :cond_0

    .line 464
    new-instance v1, Lcom/amazon/kcp/store/StoreIntentCreator;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kcp/store/StoreIntentCreator;-><init>(Lcom/amazon/kcp/application/IAndroidApplicationController;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storeIntentCreator:Lcom/amazon/kcp/store/IStoreIntentCreator;

    .line 466
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 468
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storeIntentCreator:Lcom/amazon/kcp/store/IStoreIntentCreator;

    return-object v0
.end method

.method public getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;
    .locals 4

    .line 449
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    if-nez v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->storeManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    if-nez v1, :cond_0

    .line 452
    new-instance v1, Lcom/amazon/kindle/store/InAppStoreManager;

    iget-object v2, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/store/InAppStoreManager;-><init>(Landroid/content/Context;Lcom/amazon/kcp/store/IWebStoreController;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    .line 454
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 456
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    return-object v0
.end method

.method public getThumbnailImageCache()Lcom/amazon/kcp/reader/ui/AbstractImageCache;
    .locals 2

    .line 485
    new-instance v0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;

    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getTutorialManager()Lcom/amazon/kcp/info/TutorialManager;
    .locals 4

    .line 354
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->tutorialManager:Lcom/amazon/kcp/info/TutorialManager;

    if-nez v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->tutorialManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->tutorialManager:Lcom/amazon/kcp/info/TutorialManager;

    if-nez v1, :cond_0

    .line 357
    new-instance v1, Lcom/amazon/kcp/info/StandaloneTutorialManager;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kcp/info/StandaloneTutorialManager;-><init>(Lcom/amazon/kcp/application/UserSettingsController;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->tutorialManager:Lcom/amazon/kcp/info/TutorialManager;

    .line 359
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 361
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->tutorialManager:Lcom/amazon/kcp/info/TutorialManager;

    return-object v0
.end method

.method public getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->webStoreController:Lcom/amazon/kcp/store/IWebStoreController;

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->webStoreControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->webStoreController:Lcom/amazon/kcp/store/IWebStoreController;

    if-nez v1, :cond_0

    .line 206
    new-instance v1, Lcom/amazon/kcp/store/WebStoreController;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kcp/store/WebStoreController;-><init>(Lcom/amazon/kcp/application/IAndroidApplicationController;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->webStoreController:Lcom/amazon/kcp/store/IWebStoreController;

    .line 208
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 210
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->webStoreController:Lcom/amazon/kcp/store/IWebStoreController;

    return-object v0
.end method

.method public launchReaderSettings()V
    .locals 1

    .line 552
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->launchLibrarySettings()V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .line 197
    invoke-super {p0, p1}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->setContext(Landroid/content/Context;)V

    .line 198
    new-instance p1, Lcom/amazon/kcp/application/StandaloneDeviceType;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/kcp/application/StandaloneDeviceType;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->deviceType:Lcom/amazon/kcp/application/AndroidDeviceType;

    return-void
.end method
