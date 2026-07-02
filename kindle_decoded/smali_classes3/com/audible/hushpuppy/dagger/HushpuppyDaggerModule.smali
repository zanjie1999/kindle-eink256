.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideAbstractPlatformSetting(Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;
    .locals 0

    .line 619
    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;->providePlatformSetting(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;

    move-result-object p1

    return-object p1
.end method

.method public provideAbstractUserRegistrationHandler(Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;Lde/greenrobot/event/EventBus;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/extensions/registration/IUserRegistrationHandler;
    .locals 0

    .line 777
    invoke-virtual {p1, p3, p2}, Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;->provideUserRegistrationHandler(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;)Lcom/audible/hushpuppy/extensions/registration/IUserRegistrationHandler;

    move-result-object p1

    return-object p1
.end method

.method public provideAudibleService(Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;Lcom/audible/hushpuppy/service/network/common/ISampleSyncFileDownloadClient;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;
    .locals 10

    move-object v0, p3

    move-object v1, p1

    move-object/from16 v2, p10

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 364
    invoke-virtual/range {v0 .. v9}, Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;->provideAudibleService(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;Lcom/audible/hushpuppy/service/network/common/ISampleSyncFileDownloadClient;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    move-result-object v0

    return-object v0
.end method

.method public provideAudioDownloadHandler(Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;
    .locals 6

    move-object v0, p1

    move-object v1, p6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 759
    invoke-virtual/range {v0 .. v5}, Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;->provideAudioDownloadHandler(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;

    move-result-object p1

    return-object p1
.end method

.method public provideAudioDownloadedFileManager(Lcom/audible/relationship/controller/ISyncFileManager;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;
    .locals 1

    .line 885
    new-instance v0, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;-><init>(Lcom/audible/relationship/controller/ISyncFileManager;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object v0
.end method

.method public provideAudioPurchaseRequestDelayedHandler(Lde/greenrobot/event/EventBus;)Lcom/audible/hushpuppy/controller/IDelayRequestHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/event/EventBus;",
            ")",
            "Lcom/audible/hushpuppy/controller/IDelayRequestHandler<",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/hushpuppy/PurchaseAudioModel;",
            ">;"
        }
    .end annotation

    .line 807
    new-instance v0, Lcom/audible/hushpuppy/controller/DelayRequestHandler;

    invoke-direct {v0, p1}, Lcom/audible/hushpuppy/controller/DelayRequestHandler;-><init>(Lde/greenrobot/event/EventBus;)V

    return-object v0
.end method

.method public provideAudiobookMetaDataProvider(Landroid/content/Context;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/IHushpuppyAudiobookMetadataProvider;
    .locals 8

    .line 401
    new-instance v7, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;-><init>(Landroid/content/Context;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V

    return-object v7
.end method

.method public provideAudiobookSwitcher(Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;
    .locals 0

    .line 476
    invoke-virtual {p1, p4, p2, p3}, Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;->provideAudiobookSwitcher(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    move-result-object p1

    return-object p1
.end method

.method public provideAutoDownloadSetting(Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/extensions/autodownload/AbstractAutoDownloadSetting;
    .locals 0

    .line 605
    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;->provideAutoDownloadSetting(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/extensions/autodownload/AbstractAutoDownloadSetting;

    move-result-object p1

    return-object p1
.end method

.method public provideChapterNavigator(Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/common/metric/IMetricLogger;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/controller/ChapterController;
    .locals 1

    .line 638
    new-instance v0, Lcom/audible/hushpuppy/controller/ChapterController;

    invoke-direct {v0, p4, p2, p1, p3}, Lcom/audible/hushpuppy/controller/ChapterController;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/common/metric/IMetricLogger;)V

    return-object v0
.end method

.method public provideCompanionMappingClient(Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Lcom/audible/pfm/endpoint/IEndpointFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/relationship/network/client/ICompanionMappingClient;
    .locals 1

    .line 528
    new-instance v0, Lcom/audible/relationship/network/client/CompanionMappingClient;

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isReleaseBuild()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {v0, p3, p2, p1}, Lcom/audible/relationship/network/client/CompanionMappingClient;-><init>(Landroid/content/Context;Lcom/audible/pfm/endpoint/IEndpointFactory;Z)V

    return-object v0
.end method

.method public provideCompanionMappingSQLiteOpenHelper(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;
    .locals 1

    .line 541
    new-instance v0, Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public provideConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    const-string v0, "connectivity"

    .line 378
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    return-object p1
.end method

.method public provideContext(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Landroid/content/Context;
    .locals 0

    .line 178
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public provideDownloadManager(Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;)Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;
    .locals 1

    .line 512
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;-><init>(Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;)V

    return-object v0
.end method

.method public provideEndpointFactory(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/pfm/endpoint/IEndpointFactory;
    .locals 0

    .line 333
    new-instance p1, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;

    invoke-direct {p1}, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;-><init>()V

    return-object p1
.end method

.method public provideEventBus()Lde/greenrobot/event/EventBus;
    .locals 1

    .line 190
    invoke-static {}, Lcom/audible/hushpuppy/common/event/EventBusFactory;->getInstance()Lcom/audible/hushpuppy/common/event/EventBusFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/event/EventBusFactory;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    return-object v0
.end method

.method public provideExtensionsFactory(Landroid/content/Context;Lde/greenrobot/event/EventBus;)Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;
    .locals 0

    .line 204
    invoke-static {p1, p2}, Lcom/audible/hushpuppy/extensions/ExtensionsFactoryProducer;->getExtensionsFactory(Landroid/content/Context;Lde/greenrobot/event/EventBus;)Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;

    move-result-object p1

    return-object p1
.end method

.method public provideFullPlayerProvider(Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lcom/audible/hushpuppy/controller/ActionBarUpsellController;Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;
    .locals 10

    .line 739
    new-instance v9, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;

    move-object v0, v9

    move-object/from16 v1, p8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lcom/audible/hushpuppy/controller/ActionBarUpsellController;Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;)V

    return-object v9
.end method

.method public provideHushpuppyModel(Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/reader/IReaderManager;)Lcom/audible/hushpuppy/model/read/IHushpuppyModel;
    .locals 1

    .line 235
    new-instance v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;-><init>(Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/reader/IReaderManager;)V

    return-object v0
.end method

.method public provideHushpuppySettings(Landroid/content/Context;)Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;
    .locals 1

    .line 898
    new-instance v0, Lcom/audible/hushpuppy/service/settings/HushpuppySettings;

    invoke-direct {v0, p1}, Lcom/audible/hushpuppy/service/settings/HushpuppySettings;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public provideHushpuppyStorage(Lcom/audible/relationship/controller/IDBScalingRelationshipManager;Lcom/audible/relationship/controller/ISyncFileManager;Lcom/audible/relationship/db/IConfiguration;)Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;
    .locals 1

    .line 319
    new-instance v0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;

    invoke-direct {v0, p1, p2, p3}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;-><init>(Lcom/audible/relationship/controller/IDBScalingRelationshipManager;Lcom/audible/relationship/controller/ISyncFileManager;Lcom/audible/relationship/db/IConfiguration;)V

    return-object v0
.end method

.method public provideLegacyDownloadManager(Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;Lde/greenrobot/event/EventBus;)Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;
    .locals 1

    .line 493
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;-><init>(Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;Lde/greenrobot/event/EventBus;)V

    return-object v0
.end method

.method public provideLegacyHushpuppyStorage(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;
    .locals 1

    .line 302
    new-instance v0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;

    invoke-direct {v0, p1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object v0
.end method

.method public provideLibraryController(Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/IHushpuppyAudiobookMetadataProvider;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)Lcom/audible/hushpuppy/controller/ILibraryController;
    .locals 16

    .line 867
    new-instance v15, Lcom/audible/hushpuppy/controller/LibraryController;

    move-object v0, v15

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

    invoke-direct/range {v0 .. v14}, Lcom/audible/hushpuppy/controller/LibraryController;-><init>(Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/IHushpuppyAudiobookMetadataProvider;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V

    return-object v15
.end method

.method public provideMainPlayerDecoration(Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;
    .locals 8

    .line 693
    new-instance v7, Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;

    move-object v0, v7

    move-object v1, p6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;)V

    return-object v7
.end method

.method public provideMetric()Lcom/audible/hushpuppy/common/metric/IMetricLogger;
    .locals 1

    .line 650
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    return-object v0
.end method

.method public provideOwnershipManager(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;)Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;
    .locals 0

    .line 459
    invoke-virtual {p2, p1}, Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;->provideOwnershipManager(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;

    move-result-object p1

    return-object p1
.end method

.method public providePaymentFlowsFeatureToggler(Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureTogglerImpl;)Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;
    .locals 0

    return-object p1
.end method

.method public providePersistentPlayerDecoration(Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;
    .locals 8

    .line 715
    new-instance v7, Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;

    move-object v0, v7

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V

    return-object v7
.end method

.method public providePlayerViewManager(Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/ViewController;Lde/greenrobot/event/EventBus;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;
    .locals 2

    .line 669
    new-instance v0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;

    invoke-direct {v1, p4, p3, p1}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V

    invoke-direct {v0, p4, p1, p2, v1}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/ViewController;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;)V

    return-object v0
.end method

.method public providePositionMarker(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)Lcom/amazon/kindle/krx/ui/IPositionMarker;
    .locals 1

    .line 794
    new-instance v0, Lcom/audible/hushpuppy/controller/HushpuppyPositionMarker;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/audible/hushpuppy/controller/HushpuppyPositionMarker;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)V

    return-object v0
.end method

.method public provideReadAlongModel(Lcom/audible/hushpuppy/model/write/ReadAlongModel;)Lcom/audible/hushpuppy/model/read/IReadAlongModel;
    .locals 0

    return-object p1
.end method

.method public provideReadAlongPolicy()Lcom/audible/hushpuppy/common/readalong/IReadAlongPolicy;
    .locals 1

    .line 418
    new-instance v0, Lcom/audible/hushpuppy/common/readalong/KaraokeReadAlongPolicy;

    invoke-direct {v0}, Lcom/audible/hushpuppy/common/readalong/KaraokeReadAlongPolicy;-><init>()V

    return-object v0
.end method

.method public provideReaderManager(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/reader/IReaderManager;
    .locals 0

    .line 431
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    return-object p1
.end method

.method public provideReaderUIManager(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/ui/IReaderUIManager;
    .locals 0

    .line 444
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    return-object p1
.end method

.method public provideRelationshipManager(Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;Lcom/audible/relationship/controller/IDBScalingRelationshipManager;)Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;
    .locals 0

    .line 827
    new-instance p1, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;

    invoke-direct {p1, p4, p5}, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;-><init>(Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;)V

    return-object p1
.end method

.method public provideRestrictionHandler(Landroid/content/Context;Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;
    .locals 0

    .line 251
    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;->providedRestrictionHandler(Landroid/content/Context;Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;)Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    move-result-object p1

    return-object p1
.end method

.method public provideServiceCallbackController(Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/model/read/IUpsellModel;Lcom/audible/hushpuppy/controller/ILibraryController;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/controller/NavigationListener;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;
    .locals 10

    .line 590
    new-instance v9, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;-><init>(Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/model/read/IUpsellModel;Lcom/audible/hushpuppy/controller/ILibraryController;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/controller/NavigationListener;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V

    return-object v9
.end method

.method public provideSyncFileManager(Lcom/audible/relationship/db/ISyncMappingStorage;Lcom/audible/relationship/network/client/ICompanionMappingClient;)Lcom/audible/relationship/controller/ISyncFileManager;
    .locals 1

    .line 568
    new-instance v0, Lcom/audible/relationship/controller/SyncFileManager;

    invoke-direct {v0, p1, p2}, Lcom/audible/relationship/controller/SyncFileManager;-><init>(Lcom/audible/relationship/db/ISyncMappingStorage;Lcom/audible/relationship/network/client/ICompanionMappingClient;)V

    return-object v0
.end method

.method public provideSyncMappingStorage(Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;)Lcom/audible/relationship/db/ISyncMappingStorage;
    .locals 1

    .line 554
    new-instance v0, Lcom/audible/relationship/db/SyncMappingStorage;

    invoke-direct {v0, p1}, Lcom/audible/relationship/db/SyncMappingStorage;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-object v0
.end method

.method public provideToaRedeemClient(Lde/greenrobot/event/EventBus;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/pfm/endpoint/IEndpointFactory;)Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;
    .locals 1

    .line 959
    new-instance v0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaRedeemClient;

    invoke-direct {v0, p1, p2, p3}, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaRedeemClient;-><init>(Lde/greenrobot/event/EventBus;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/pfm/endpoint/IEndpointFactory;)V

    return-object v0
.end method

.method public provideUpsellHelper(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/IDelayRequestHandler;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;)Lcom/audible/hushpuppy/controller/IUpsellHelper;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
            "Lde/greenrobot/event/EventBus;",
            "Lcom/audible/hushpuppy/controller/IDelayRequestHandler<",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/hushpuppy/PurchaseAudioModel;",
            ">;",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            "Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;",
            "Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;",
            "Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;",
            ")",
            "Lcom/audible/hushpuppy/controller/IUpsellHelper;"
        }
    .end annotation

    .line 929
    new-instance v10, Lcom/audible/hushpuppy/controller/UpsellHelper;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/audible/hushpuppy/controller/UpsellHelper;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/IDelayRequestHandler;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;Lcom/audible/hushpuppy/controller/IStateChangeViewController;Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;)V

    return-object v10
.end method

.method public provideUpsellModel(Lcom/audible/hushpuppy/model/write/UpsellModelFactory;)Lcom/audible/hushpuppy/model/read/IUpsellModel;
    .locals 0

    .line 264
    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/UpsellModelFactory;->get()Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    move-result-object p1

    return-object p1
.end method

.method public provideUpsellModelFactory(Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Lde/greenrobot/event/EventBus;)Lcom/audible/hushpuppy/model/write/UpsellModelFactory;
    .locals 1

    .line 218
    new-instance v0, Lcom/audible/hushpuppy/model/write/UpsellModelFactory;

    invoke-direct {v0, p1, p2}, Lcom/audible/hushpuppy/model/write/UpsellModelFactory;-><init>(Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Lde/greenrobot/event/EventBus;)V

    return-object v0
.end method

.method public provideUpsellWritableModel(Lcom/audible/hushpuppy/model/write/UpsellModelFactory;)Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;
    .locals 0

    .line 277
    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/UpsellModelFactory;->get()Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    move-result-object p1

    return-object p1
.end method

.method public provideUserModel(Lde/greenrobot/event/EventBus;)Lcom/audible/hushpuppy/model/read/IUserModel;
    .locals 1

    .line 1329
    new-instance v0, Lcom/audible/hushpuppy/model/write/UserModel;

    invoke-direct {v0, p1}, Lcom/audible/hushpuppy/model/write/UserModel;-><init>(Lde/greenrobot/event/EventBus;)V

    return-object v0
.end method

.method public providesAsinPairBatchController(Lcom/audible/relationship/controller/IAsinPairBatchStorage;Lcom/audible/relationship/controller/IDBScalingRelationshipManager;)Lcom/audible/relationship/controller/IAsinPairBatchController;
    .locals 1

    .line 1316
    new-instance v0, Lcom/audible/relationship/controller/AsinPairBatchController;

    invoke-direct {v0, p1, p2}, Lcom/audible/relationship/controller/AsinPairBatchController;-><init>(Lcom/audible/relationship/controller/IAsinPairBatchStorage;Lcom/audible/relationship/controller/IDBScalingRelationshipManager;)V

    return-object v0
.end method

.method public providesAsinPairBatchStorage()Lcom/audible/relationship/controller/IAsinPairBatchStorage;
    .locals 1

    .line 1299
    new-instance v0, Lcom/audible/relationship/controller/InMemoryAsinPairBatchStorage;

    invoke-direct {v0}, Lcom/audible/relationship/controller/InMemoryAsinPairBatchStorage;-><init>()V

    return-object v0
.end method

.method public providesBuyAudioClient(Lde/greenrobot/event/EventBus;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/pfm/endpoint/IEndpointFactory;)Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;
    .locals 1

    .line 945
    new-instance v0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient;

    invoke-direct {v0, p1, p2, p3}, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient;-><init>(Lde/greenrobot/event/EventBus;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/pfm/endpoint/IEndpointFactory;)V

    return-object v0
.end method

.method public providesCacheableRepository(Landroid/content/Context;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)Lcom/audible/pfm/repository/ICacheableRepository;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ")",
            "Lcom/audible/pfm/repository/ICacheableRepository<",
            "Lcom/audible/pfm/domain/DevicePlatformConfig;",
            ">;"
        }
    .end annotation

    .line 1104
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->device_super_type:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1105
    invoke-virtual {p2}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isReleaseBuild()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1108
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1109
    :goto_0
    new-instance v2, Ljava/io/File;

    sget v3, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->pfm_file_path:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1110
    new-instance v3, Ljava/io/File;

    sget v4, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->test_pfm_file_path:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1113
    new-instance p1, Lcom/audible/pfm/network/PfmDownloadClient;

    if-eqz p2, :cond_1

    invoke-direct {p1}, Lcom/audible/pfm/network/PfmDownloadClient;-><init>()V

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    invoke-direct {p1, p2, p2}, Lcom/audible/pfm/network/PfmDownloadClient;-><init>(ZZ)V

    .line 1114
    :goto_1
    new-instance p2, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;

    invoke-direct {p2, v2}, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;-><init>(Ljava/io/File;)V

    .line 1115
    new-instance v1, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;

    invoke-direct {v1, v3}, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;-><init>(Ljava/io/File;)V

    .line 1117
    new-instance v2, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;

    invoke-direct {v2, v0, p1, p2}, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;-><init>(Ljava/lang/String;Lcom/audible/pfm/network/IPfmDownloadClient;Lcom/audible/pfm/network/parser/IPfmReaderWriter;)V

    .line 1119
    new-instance p1, Lcom/audible/pfm/repository/SideloadTestDevicePlatformConfigRepository;

    invoke-direct {p1, v0, v1}, Lcom/audible/pfm/repository/SideloadTestDevicePlatformConfigRepository;-><init>(Ljava/lang/String;Lcom/audible/pfm/network/parser/IPfmReaderWriter;)V

    .line 1122
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;

    invoke-direct {p2, p1}, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;-><init>(Lcom/audible/pfm/repository/ICacheableRepository;)V

    goto :goto_2

    :cond_2
    new-instance p2, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;

    invoke-direct {p2, v2}, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;-><init>(Lcom/audible/pfm/repository/ICacheableRepository;)V

    :goto_2
    return-object p2
.end method

.method public providesConfiguration(Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;)Lcom/audible/relationship/db/IConfiguration;
    .locals 1

    .line 1176
    new-instance v0, Lcom/audible/relationship/db/KeyValueStorage;

    invoke-direct {v0, p1}, Lcom/audible/relationship/db/KeyValueStorage;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 1177
    new-instance p1, Lcom/audible/relationship/db/Configuration;

    invoke-direct {p1, v0}, Lcom/audible/relationship/db/Configuration;-><init>(Lcom/audible/relationship/db/IKeyValueStorage;)V

    return-object p1
.end method

.method public providesCoverArtManager()Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;
    .locals 1

    .line 972
    new-instance v0, Lcom/audible/hushpuppy/view/player/view/CoverArtManager;

    invoke-direct {v0}, Lcom/audible/hushpuppy/view/player/view/CoverArtManager;-><init>()V

    return-object v0
.end method

.method public providesDbScalingRelationshipManager(Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/audible/relationship/db/IRelationshipStorage;Lcom/audible/relationship/controller/IRelationshipUpdateController;)Lcom/audible/relationship/controller/IDBScalingRelationshipManager;
    .locals 1

    .line 1236
    new-instance v0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/audible/relationship/controller/DBScalingRelationshipManager;-><init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/audible/relationship/db/IRelationshipStorage;Lcom/audible/relationship/controller/IRelationshipUpdateController;)V

    return-object v0
.end method

.method public providesDebugSharedPreferenes(Landroid/content/Context;)Lcom/audible/mobile/preferences/PreferenceStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;",
            ">;"
        }
    .end annotation

    .line 1163
    new-instance v0, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;

    invoke-direct {v0, p1}, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public providesEndpointController(Lcom/audible/pfm/repository/ICacheableRepository;)Lcom/audible/pfm/controller/IEndpointController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/pfm/repository/ICacheableRepository<",
            "Lcom/audible/pfm/domain/DevicePlatformConfig;",
            ">;)",
            "Lcom/audible/pfm/controller/IEndpointController;"
        }
    .end annotation

    .line 1136
    new-instance v0, Lcom/audible/pfm/controller/EndpointController;

    invoke-direct {v0, p1}, Lcom/audible/pfm/controller/EndpointController;-><init>(Lcom/audible/pfm/repository/ICacheableRepository;)V

    return-object v0
.end method

.method public providesJitProvider(Lde/greenrobot/event/EventBus;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)Lcom/audible/hushpuppy/controller/IJitTutorialProvider;
    .locals 9

    .line 1015
    new-instance v8, Lcom/audible/hushpuppy/controller/JitTutorialProvider;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/audible/hushpuppy/controller/JitTutorialProvider;-><init>(Lde/greenrobot/event/EventBus;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V

    return-object v8
.end method

.method public providesLegacyContentUpdateHelper(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/ILibraryController;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;)Lcom/audible/hushpuppy/controller/ILegacyContentUpdateHelper;
    .locals 10

    .line 1370
    new-instance v9, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/ILibraryController;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;)V

    return-object v9
.end method

.method public providesListeningStatsManager(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/pfm/endpoint/IEndpointFactory;)Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;
    .locals 1

    .line 1082
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/pfm/endpoint/IEndpointFactory;)V

    return-object v0
.end method

.method public providesMobileWeblabHandler(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/mobile/preferences/PreferenceStore;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;",
            ">;",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ")",
            "Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;"
        }
    .end annotation

    .line 1344
    new-instance v0, Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/mobile/preferences/PreferenceStore;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V

    return-object v0
.end method

.method public providesPlayerStateContext(Lcom/audible/hushpuppy/common/system/IWorkerHandler;)Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;
    .locals 1

    .line 1029
    new-instance v0, Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;

    invoke-direct {v0, p1}, Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;-><init>(Lcom/audible/hushpuppy/common/system/IWorkerHandler;)V

    return-object v0
.end method

.method public providesReaderStateContext(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;
    .locals 1

    .line 1042
    new-instance v0, Lcom/audible/hushpuppy/model/write/readerstate/ReaderStateContext;

    invoke-direct {v0, p1}, Lcom/audible/hushpuppy/model/write/readerstate/ReaderStateContext;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object v0
.end method

.method public providesRelationshipCommandFactory(Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Lcom/audible/relationship/network/client/ICompanionMappingClient;Lcom/audible/relationship/db/IRelationshipStorage;Lcom/audible/relationship/db/IConfiguration;)Lcom/audible/relationship/controller/IRelationshipCommandFactory;
    .locals 6

    .line 1214
    invoke-virtual {p2}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isReleaseBuild()Z

    move-result p2

    xor-int/lit8 v5, p2, 0x1

    .line 1215
    new-instance p2, Lcom/audible/relationship/controller/RelationshipCommandFactory;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/audible/relationship/controller/RelationshipCommandFactory;-><init>(Lde/greenrobot/event/EventBus;Lcom/audible/relationship/network/client/ICompanionMappingClient;Lcom/audible/relationship/db/IRelationshipStorage;Lcom/audible/relationship/db/IConfiguration;Z)V

    return-object p2
.end method

.method public providesRelationshipRequestStorage(Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;)Lcom/audible/relationship/db/IRelationshipRequestStorage;
    .locals 1

    .line 1248
    new-instance v0, Lcom/audible/relationship/db/RelationshipRequestStorage;

    invoke-direct {v0, p1}, Lcom/audible/relationship/db/RelationshipRequestStorage;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-object v0
.end method

.method public providesRelationshipStorage(Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;Lcom/audible/relationship/db/IConfiguration;)Lcom/audible/relationship/db/IRelationshipStorage;
    .locals 1

    .line 1191
    new-instance v0, Lcom/audible/relationship/db/RelationshipStorage;

    invoke-direct {v0, p1, p2}, Lcom/audible/relationship/db/RelationshipStorage;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;Lcom/audible/relationship/db/IConfiguration;)V

    return-object v0
.end method

.method public providesRelationshipSyncData()Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;
    .locals 1

    .line 1054
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/readingstream/RelationshipSyncData;

    invoke-direct {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/RelationshipSyncData;-><init>()V

    return-object v0
.end method

.method public providesRelationshipUpdateController(Lcom/audible/relationship/db/IRelationshipRequestStorage;Lcom/audible/relationship/controller/IRelationshipCommandFactory;)Lcom/audible/relationship/controller/IRelationshipUpdateController;
    .locals 1

    .line 1265
    new-instance v0, Lcom/audible/relationship/controller/RelationshipUpdateController;

    invoke-direct {v0, p1, p2}, Lcom/audible/relationship/controller/RelationshipUpdateController;-><init>(Lcom/audible/relationship/db/IRelationshipRequestStorage;Lcom/audible/relationship/controller/IRelationshipCommandFactory;)V

    return-object v0
.end method

.method public providesSampleSyncFileDownloadClient(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;)Lcom/audible/hushpuppy/service/network/common/ISampleSyncFileDownloadClient;
    .locals 1

    .line 1150
    new-instance v0, Lcom/audible/hushpuppy/service/network/common/SampleSyncFileDownloadClient;

    invoke-direct {v0, p1, p2}, Lcom/audible/hushpuppy/service/network/common/SampleSyncFileDownloadClient;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;)V

    return-object v0
.end method

.method public providesSleepTimerController(Lcom/audible/hushpuppy/controller/ChapterController;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/controller/ISleepTimerController;
    .locals 7

    .line 990
    new-instance v6, Lcom/audible/hushpuppy/controller/SleepTimerController;

    invoke-interface {p5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/audible/hushpuppy/controller/SleepTimerController;-><init>(Landroid/content/Context;Lcom/audible/hushpuppy/controller/ChapterController;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)V

    return-object v6
.end method

.method public providesTodoEventHandler(Lcom/audible/relationship/controller/IAsinPairBatchController;Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;Lcom/audible/relationship/controller/IDBScalingRelationshipManager;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/mobile/preferences/PreferenceStore;)Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/relationship/controller/IAsinPairBatchController;",
            "Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;",
            "Lcom/audible/relationship/controller/IDBScalingRelationshipManager;",
            "Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;",
            ">;)",
            "Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;"
        }
    .end annotation

    .line 1286
    new-instance v6, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;-><init>(Lcom/audible/relationship/controller/IAsinPairBatchController;Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;Lcom/audible/relationship/controller/IDBScalingRelationshipManager;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/mobile/preferences/PreferenceStore;)V

    return-object v6
.end method

.method public providesUpsellWebview(Landroid/content/Context;)Lcom/audible/hushpuppy/view/startactions/UpsellWebView;
    .locals 1

    .line 1382
    new-instance v0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;

    invoke-direct {v0, p1}, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public providesWorkerHandler()Lcom/audible/hushpuppy/common/system/IWorkerHandler;
    .locals 1

    .line 1066
    new-instance v0, Lcom/audible/hushpuppy/common/system/WorkerHandler;

    invoke-direct {v0}, Lcom/audible/hushpuppy/common/system/WorkerHandler;-><init>()V

    return-object v0
.end method
