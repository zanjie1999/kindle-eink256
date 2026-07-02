.class public final Lcom/audible/hushpuppy/plugin/LibraryPlugin;
.super Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;
.source "LibraryPlugin.java"


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    entry = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
    name = "com.audible.hushpuppy.LibraryPlugin"
    roles = {
        .enum Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field protected audioDownloadHandler:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;

.field protected libraryContextualActionButtonProvider:Lcom/audible/hushpuppy/view/library/LibraryContextualActionButtonProvider;

.field protected libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

.field protected libraryLeftNavProvider:Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;

.field protected libraryPersistentPlayerProvider:Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;

.field protected storage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/plugin/LibraryPlugin;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0, v0}, Lcom/audible/hushpuppy/plugin/LibraryPlugin;-><init>(Lcom/audible/hushpuppy/controller/ILibraryController;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;)V

    return-void
.end method

.method protected constructor <init>(Lcom/audible/hushpuppy/controller/ILibraryController;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

    return-void
.end method

.method private enableAudioDownloadHandler()V
    .locals 2

    .line 202
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->audioDownloadHandler:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->registerAudioDownloadHandler(Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;)V

    return-void
.end method

.method private enableLibraryContextualActionButton()V
    .locals 2

    .line 178
    sget-object v0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Registering Library Contextual Action Download Button Provider."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->libraryContextualActionButtonProvider:Lcom/audible/hushpuppy/view/library/LibraryContextualActionButtonProvider;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->registerContextualActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private enableLibraryPersistentPlayer(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object p1

    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->libraryPersistentPlayerProvider:Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->registerLibraryDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    .line 191
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->libraryPersistentPlayerProvider:Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->subscribe()V

    goto :goto_0

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->libraryPersistentPlayerProvider:Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->unsubscribe()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected disable()V
    .locals 2

    .line 121
    sget-object v0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "HP-AppStart: Disabling com.audible.hushpuppy.LibraryPlugin"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/ILibraryController;->resetCache()V

    .line 123
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->enableLibraryPersistentPlayer(Z)V

    .line 125
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->libraryLeftNavProvider:Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;

    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->disable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method

.method protected enable()V
    .locals 2

    .line 109
    sget-object v0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "HP-AppStart: Enabling com.audible.hushpuppy.LibraryPlugin"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/ILibraryController;->enable()V

    .line 112
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->enableLibraryContextualActionButton()V

    const/4 v0, 0x1

    .line 113
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->enableLibraryPersistentPlayer(Z)V

    .line 114
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->libraryLeftNavProvider:Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;

    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->enable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 115
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->enableAudioDownloadHandler()V

    return-void
.end method

.method public getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "com.audible.hushpuppy.ApplicationPlugin"

    .line 208
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public initializeEx(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 3

    .line 95
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->inject(Lcom/audible/hushpuppy/plugin/LibraryPlugin;)V

    if-eqz p1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->libraryLeftNavProvider:Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;

    if-eqz v0, :cond_1

    .line 98
    const-class v0, Lcom/amazon/kindle/setting/item/ItemsProvider;

    invoke-static {v0}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/amazon/discovery/Discoveries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/setting/item/ItemsProvider;

    .line 100
    instance-of v2, v1, Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider;

    if-eqz v2, :cond_0

    .line 101
    check-cast v1, Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider;

    iget-object v2, p0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->libraryLeftNavProvider:Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;

    invoke-virtual {v1, p1, v2}, Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/player/AudioBookReadyForPlaybackEvent;)V
    .locals 2

    .line 156
    sget-object v0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received AudioBookReadyForPlaybackEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/player/AudioBookReadyForPlaybackEvent;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/player/AudioBookReadyForPlaybackEvent;->getAudioFile()Ljava/io/File;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/controller/ILibraryController;->verifyAudioFileAvailability(Lcom/audible/mobile/domain/Asin;Ljava/io/File;)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationEvent;)V
    .locals 2

    .line 138
    sget-object v0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "HP-AppStart: Received CompanionMappingModificationEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationEvent;->isFullSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationEvent;->getModifications()Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/ILibraryController;->syncMappings(Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationEvent;->getModifications()Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/ILibraryController;->persistMappings(Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;)V

    :goto_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/sync/FTUESyncEvent;)V
    .locals 1

    .line 169
    sget-object p1, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received FTUESyncEvent"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/LibraryPlugin;->libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/ILibraryController;->resetCache()V

    return-void
.end method
