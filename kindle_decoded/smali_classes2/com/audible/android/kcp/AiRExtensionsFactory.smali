.class public Lcom/audible/android/kcp/AiRExtensionsFactory;
.super Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;
.source "AiRExtensionsFactory.java"


# instance fields
.field private mAirComponentsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;-><init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;)V

    .line 77
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/audible/android/kcp/AiRExtensionsFactory;->mAirComponentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private getActivationManager(Landroid/content/Context;)Lcom/audible/android/kcp/activation/ActivationManager;
    .locals 3

    .line 262
    const-class v0, Lcom/audible/android/kcp/activation/ActivationManager;

    iget-object v1, p0, Lcom/audible/android/kcp/AiRExtensionsFactory;->mAirComponentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/audible/android/kcp/AiRExtensionsFactory;->mAirComponentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/audible/android/kcp/activation/AirActivationManager;

    invoke-direct {v2, p1}, Lcom/audible/android/kcp/activation/AirActivationManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/audible/android/kcp/AiRExtensionsFactory;->mAirComponentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/android/kcp/activation/ActivationManager;

    return-object p1
.end method

.method private getAiRPlayerManager(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/android/kcp/player/manager/AiRPlayerManager;
    .locals 5

    .line 240
    const-class v0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;

    iget-object v1, p0, Lcom/audible/android/kcp/AiRExtensionsFactory;->mAirComponentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/audible/android/kcp/AiRExtensionsFactory;->mAirComponentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;

    .line 242
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getCompanionManager(Landroid/content/Context;)Lcom/audible/android/kcp/companion/CompanionManager;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getStorePreferences(Landroid/content/Context;)Lcom/audible/android/kcp/common/AiRPreferencesStore;

    move-result-object v4

    invoke-direct {v2, p1, v3, p2, v4}, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;-><init>(Landroid/content/Context;Lcom/audible/android/kcp/companion/CompanionManager;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/mobile/preferences/PreferenceStore;)V

    .line 241
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/audible/android/kcp/AiRExtensionsFactory;->mAirComponentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;

    return-object p1
.end method

.method private getAudioFileManager(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/android/kcp/download/AudioFileManager;
    .locals 5

    .line 252
    const-class v0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;

    iget-object v1, p0, Lcom/audible/android/kcp/AiRExtensionsFactory;->mAirComponentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/audible/android/kcp/AiRExtensionsFactory;->mAirComponentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;

    invoke-direct {p0, p1}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getDownloadManager(Landroid/content/Context;)Lcom/audible/mobile/download/DownloadManager;

    move-result-object v3

    .line 254
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getStorePreferences(Landroid/content/Context;)Lcom/audible/android/kcp/common/AiRPreferencesStore;

    move-result-object v4

    invoke-direct {p0, p1, p2}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getAiRPlayerManager(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    move-result-object p2

    invoke-direct {v2, p1, v3, v4, p2}, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;-><init>(Landroid/content/Context;Lcom/audible/mobile/download/DownloadManager;Lcom/audible/mobile/preferences/PreferenceStore;Lcom/audible/android/kcp/player/manager/AiRPlayerManager;)V

    .line 253
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/audible/android/kcp/AiRExtensionsFactory;->mAirComponentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;

    return-object p1
.end method

.method private getCompanionManager(Landroid/content/Context;)Lcom/audible/android/kcp/companion/CompanionManager;
    .locals 3

    .line 208
    const-class v0, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;

    iget-object v1, p0, Lcom/audible/android/kcp/AiRExtensionsFactory;->mAirComponentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/audible/android/kcp/AiRExtensionsFactory;->mAirComponentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;

    invoke-direct {v2, p1}, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/audible/android/kcp/AiRExtensionsFactory;->mAirComponentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;

    return-object p1
.end method

.method private getDownloadManager(Landroid/content/Context;)Lcom/audible/mobile/download/DownloadManager;
    .locals 3

    .line 218
    const-class v0, Lcom/audible/mobile/download/AudibleDownloadManagerImpl;

    iget-object v1, p0, Lcom/audible/android/kcp/AiRExtensionsFactory;->mAirComponentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/audible/android/kcp/AiRExtensionsFactory;->mAirComponentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/audible/mobile/download/AudibleDownloadManagerImpl;

    invoke-direct {v2, p1}, Lcom/audible/mobile/download/AudibleDownloadManagerImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/audible/android/kcp/AiRExtensionsFactory;->mAirComponentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/download/AudibleDownloadManagerImpl;

    return-object p1
.end method

.method private getNewAudiobookRegistrar(Landroid/content/Context;)Lcom/audible/android/kcp/library/NewAudiobookRegistrar;
    .locals 3

    .line 229
    const-class v0, Lcom/audible/android/kcp/library/SharePreferencesNewAudiobookRegistrar;

    iget-object v1, p0, Lcom/audible/android/kcp/AiRExtensionsFactory;->mAirComponentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/audible/android/kcp/AiRExtensionsFactory;->mAirComponentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/audible/android/kcp/library/SharePreferencesNewAudiobookRegistrar;

    .line 231
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getStorePreferences(Landroid/content/Context;)Lcom/audible/android/kcp/common/AiRPreferencesStore;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/audible/android/kcp/library/SharePreferencesNewAudiobookRegistrar;-><init>(Lcom/audible/mobile/preferences/PreferenceStore;)V

    .line 230
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/audible/android/kcp/AiRExtensionsFactory;->mAirComponentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/android/kcp/library/SharePreferencesNewAudiobookRegistrar;

    return-object p1
.end method

.method private getStorePreferences(Landroid/content/Context;)Lcom/audible/android/kcp/common/AiRPreferencesStore;
    .locals 3

    .line 198
    const-class v0, Lcom/audible/android/kcp/common/AiRPreferencesStore;

    iget-object v1, p0, Lcom/audible/android/kcp/AiRExtensionsFactory;->mAirComponentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/audible/android/kcp/AiRExtensionsFactory;->mAirComponentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/audible/android/kcp/common/AiRPreferencesStore;

    invoke-direct {v2, p1}, Lcom/audible/android/kcp/common/AiRPreferencesStore;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/audible/android/kcp/AiRExtensionsFactory;->mAirComponentsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/android/kcp/common/AiRPreferencesStore;

    return-object p1
.end method

.method private provideDownloadService(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)Lcom/audible/android/kcp/download/DownloadManagerAdapter;
    .locals 10

    .line 169
    invoke-static {}, Lcom/audible/mobile/notification/NotificationFactoryProvider;->getProvider()Lcom/audible/mobile/notification/NotificationFactoryProvider;

    move-result-object v0

    const-class v1, Lcom/audible/mobile/download/service/AudiobookDownloadService;

    new-instance v8, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getAudioFileManager(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/android/kcp/download/AudioFileManager;

    move-result-object v4

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v5

    .line 171
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getCompanionManager(Landroid/content/Context;)Lcom/audible/android/kcp/companion/CompanionManager;

    move-result-object v6

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v7

    move-object v2, v8

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;-><init>(Landroid/content/Context;Lcom/audible/android/kcp/download/AudioFileManager;Lcom/amazon/kindle/krx/library/ILibraryManager;Lcom/audible/android/kcp/companion/CompanionManager;Lcom/amazon/kindle/krx/ui/ILibraryUIManager;)V

    .line 169
    invoke-virtual {v0, v1, v8}, Lcom/audible/mobile/notification/NotificationFactoryProvider;->offerFactory(Ljava/lang/Class;Lcom/audible/mobile/notification/NotificationFactory;)Z

    .line 173
    new-instance v0, Lcom/audible/android/kcp/download/receiver/AudioDownloaderBroadcastReceiver;

    invoke-direct {p0, p1, p2}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getAudioFileManager(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/android/kcp/download/AudioFileManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/download/receiver/AudioDownloaderBroadcastReceiver;-><init>(Lcom/audible/android/kcp/download/AudioFileManager;)V

    .line 174
    invoke-static {p1}, Lcom/audible/android/kcp/download/receiver/AudioDownloaderBroadcastReceiver;->getAudioDownloaderBroadcastIntentFilter(Landroid/content/Context;)Landroid/content/IntentFilter;

    move-result-object v1

    .line 173
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    new-instance v0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;

    invoke-direct {p0, p1, p2}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getAudioFileManager(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/android/kcp/download/AudioFileManager;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getActivationManager(Landroid/content/Context;)Lcom/audible/android/kcp/activation/ActivationManager;

    move-result-object v6

    .line 177
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getNewAudiobookRegistrar(Landroid/content/Context;)Lcom/audible/android/kcp/library/NewAudiobookRegistrar;

    move-result-object v8

    invoke-direct {p0, p1, p2}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getAiRPlayerManager(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    move-result-object v9

    move-object v2, v0

    move-object v3, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v9}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/android/kcp/download/AudioFileManager;Lde/greenrobot/event/EventBus;Lcom/audible/android/kcp/activation/ActivationManager;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/android/kcp/library/NewAudiobookRegistrar;Lcom/audible/android/kcp/player/manager/AiRPlayerManager;)V

    return-object v0
.end method

.method private provideLibraryService(Landroid/content/Context;)Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;
    .locals 1

    .line 182
    new-instance v0, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;

    invoke-direct {v0, p1}, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private providePlayerService(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;Lde/greenrobot/event/EventBus;)Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;
    .locals 2

    .line 188
    new-instance v0, Lcom/audible/android/kcp/common/AiRPreferencesStore;

    invoke-direct {v0, p1}, Lcom/audible/android/kcp/common/AiRPreferencesStore;-><init>(Landroid/content/Context;)V

    .line 189
    new-instance v1, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-direct {v1, p1, p3, p4, v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;-><init>(Landroid/content/Context;Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;Lde/greenrobot/event/EventBus;Lcom/audible/android/kcp/common/AiRPreferencesStore;)V

    .line 191
    new-instance p3, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;

    invoke-direct {p3, v1, p2}, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;-><init>(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-static {p1}, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->getPlayerBroadcastIntentFilter(Landroid/content/Context;)Landroid/content/IntentFilter;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-object v1
.end method


# virtual methods
.method public final provideAudibleService(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;Lcom/audible/hushpuppy/service/network/common/ISampleSyncFileDownloadClient;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;
    .locals 15

    .line 91
    invoke-direct/range {p0 .. p4}, Lcom/audible/android/kcp/AiRExtensionsFactory;->provideDownloadService(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)Lcom/audible/android/kcp/download/DownloadManagerAdapter;

    move-result-object v1

    .line 92
    invoke-direct/range {p0 .. p1}, Lcom/audible/android/kcp/AiRExtensionsFactory;->provideLibraryService(Landroid/content/Context;)Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;

    move-result-object v2

    move-object v13, p0

    move-object/from16 v0, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 93
    invoke-direct {p0, v0, v6, v2, v7}, Lcom/audible/android/kcp/AiRExtensionsFactory;->providePlayerService(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;Lde/greenrobot/event/EventBus;)Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    move-result-object v3

    .line 94
    invoke-direct/range {p0 .. p1}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getCompanionManager(Landroid/content/Context;)Lcom/audible/android/kcp/companion/CompanionManager;

    move-result-object v4

    .line 95
    invoke-direct/range {p0 .. p1}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getNewAudiobookRegistrar(Landroid/content/Context;)Lcom/audible/android/kcp/library/NewAudiobookRegistrar;

    move-result-object v5

    .line 96
    invoke-direct/range {p0 .. p2}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getAiRPlayerManager(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    move-result-object v8

    .line 98
    new-instance v14, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;

    move-object v0, v14

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p4

    invoke-direct/range {v0 .. v12}, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;-><init>(Lcom/audible/android/kcp/download/DownloadManagerAdapter;Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;Lcom/audible/android/kcp/companion/CompanionManager;Lcom/audible/android/kcp/library/NewAudiobookRegistrar;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/android/kcp/player/manager/AiRPlayerManager;Lcom/audible/hushpuppy/service/network/common/ISampleSyncFileDownloadClient;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/IAudibleDebugHelper;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V

    return-object v14
.end method

.method public final provideAudioDownloadHandler(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 134
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->legacyHushpuppyStorage()Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    move-result-object v7

    .line 135
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->hushpuppyStorage()Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    move-result-object v8

    .line 137
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 139
    new-instance v10, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getDownloadManager(Landroid/content/Context;)Lcom/audible/mobile/download/DownloadManager;

    move-result-object v3

    invoke-direct {v10, v1, v3}, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;-><init>(Landroid/content/Context;Lcom/audible/mobile/download/DownloadManager;)V

    .line 141
    new-instance v11, Lcom/audible/android/kcp/download/DownloadErrorStorage;

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getStorePreferences(Landroid/content/Context;)Lcom/audible/android/kcp/common/AiRPreferencesStore;

    move-result-object v3

    invoke-direct {v11, v3}, Lcom/audible/android/kcp/download/DownloadErrorStorage;-><init>(Lcom/audible/mobile/preferences/PreferenceStore;)V

    .line 143
    new-instance v6, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;

    new-instance v3, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;

    invoke-direct {v3}, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;-><init>()V

    .line 144
    invoke-direct {v0, v1, v2}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getAiRPlayerManager(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getSyncManager()Lcom/amazon/kindle/krx/sync/ISyncManager;

    move-result-object v5

    invoke-direct {v6, v3, v4, v5}, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;-><init>(Lcom/audible/android/kcp/sync/SynchronizationManager;Lcom/audible/android/kcp/player/manager/AiRPlayerManager;Lcom/amazon/kindle/krx/sync/ISyncManager;)V

    .line 146
    new-instance v15, Lcom/audible/android/kcp/AirAudioDeletionHandler;

    move-object/from16 v3, p2

    check-cast v3, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-direct {v0, v1, v2}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getAudioFileManager(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/android/kcp/download/AudioFileManager;

    move-result-object v4

    .line 147
    invoke-direct {v0, v1, v2}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getAiRPlayerManager(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    move-result-object v5

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getNewAudiobookRegistrar(Landroid/content/Context;)Lcom/audible/android/kcp/library/NewAudiobookRegistrar;

    move-result-object v9

    move-object v1, v15

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v1 .. v14}, Lcom/audible/android/kcp/AirAudioDeletionHandler;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/write/HushpuppyModel;Lcom/audible/android/kcp/download/AudioFileManager;Lcom/audible/android/kcp/player/manager/AiRPlayerManager;Lcom/audible/android/kcp/sync/SynchronizationUpdater;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;Lcom/audible/android/kcp/library/NewAudiobookRegistrar;Lcom/audible/android/kcp/coverart/CoverArtManager;Lcom/audible/android/kcp/download/DownloadErrorStorage;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V

    return-object v15
.end method

.method public final provideAudiobookSwitcher(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;
    .locals 0

    .line 112
    new-instance p3, Lcom/audible/android/kcp/AiRAudiobookSwitcher;

    invoke-direct {p3, p1, p2}, Lcom/audible/android/kcp/AiRAudiobookSwitcher;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V

    return-object p3
.end method

.method public final provideAutoDownloadSetting(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/extensions/autodownload/AbstractAutoDownloadSetting;
    .locals 0

    .line 118
    new-instance p1, Lcom/audible/android/kcp/AiRAutoDownloadSetting;

    invoke-direct {p1}, Lcom/audible/android/kcp/AiRAutoDownloadSetting;-><init>()V

    return-object p1
.end method

.method public final provideOwnershipManager(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;
    .locals 1

    .line 105
    new-instance v0, Lcom/audible/android/kcp/AiROwnershipManager;

    invoke-direct {v0, p1}, Lcom/audible/android/kcp/AiROwnershipManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object v0
.end method

.method public providePlatformSetting(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;
    .locals 1

    .line 125
    new-instance v0, Lcom/audible/android/kcp/AirPlatformSetting;

    invoke-direct {v0, p1}, Lcom/audible/android/kcp/AirPlatformSetting;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object v0
.end method

.method public provideUserRegistrationHandler(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;)Lcom/audible/hushpuppy/extensions/registration/IUserRegistrationHandler;
    .locals 8

    .line 154
    new-instance v0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;

    new-instance v7, Lcom/audible/android/kcp/AiRUserRegistrationHandler;

    .line 155
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getAudioFileManager(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/android/kcp/download/AudioFileManager;

    move-result-object v4

    .line 156
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getActivationManager(Landroid/content/Context;)Lcom/audible/android/kcp/activation/ActivationManager;

    move-result-object v5

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/audible/android/kcp/AiRExtensionsFactory;->getStorePreferences(Landroid/content/Context;)Lcom/audible/android/kcp/common/AiRPreferencesStore;

    move-result-object v6

    move-object v1, v7

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/audible/android/kcp/AiRUserRegistrationHandler;-><init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/audible/android/kcp/download/AudioFileManager;Lcom/audible/android/kcp/activation/ActivationManager;Lcom/audible/mobile/preferences/PreferenceStore;)V

    invoke-direct {v0, v7}, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;-><init>(Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;)V

    return-object v0
.end method

.method public providedRestrictionHandler(Landroid/content/Context;Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;)Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;
    .locals 0

    .line 162
    new-instance p1, Lcom/audible/hushpuppy/common/permissions/AllowAllHushpuppyRestrictionHandler;

    invoke-direct {p1}, Lcom/audible/hushpuppy/common/permissions/AllowAllHushpuppyRestrictionHandler;-><init>()V

    return-object p1
.end method
