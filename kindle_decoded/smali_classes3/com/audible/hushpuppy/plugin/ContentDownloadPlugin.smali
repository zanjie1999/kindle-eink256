.class public final Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;
.super Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;
.source "ContentDownloadPlugin.java"


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    entry = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
    name = "com.audible.hushpuppy.ContentDownloadPlugin"
    roles = {
        .enum Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private autoDownloadSettings:Lcom/audible/hushpuppy/extensions/autodownload/AbstractAutoDownloadSetting;

.field protected dbScalingDownloadManager:Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;

.field protected debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field protected hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field protected legacyDownloadManager:Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;

.field protected mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

.field private final upsoldAsinsToAlwaysDownload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/audible/mobile/domain/Asin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->upsoldAsinsToAlwaysDownload:Ljava/util/List;

    return-void
.end method

.method private downloadCompanion(Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;->checkAndUpdateDBScalingToggle()V

    .line 141
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->wasAudioFileFound()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->wasSyncFileFound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->dbScalingDownloadManager:Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;->downloadRelatedContent(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->wasAudioFileFound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->dbScalingDownloadManager:Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;->downloadAudioContent(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->wasSyncFileFound()Z

    move-result v0

    if-nez v0, :cond_5

    .line 147
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->dbScalingDownloadManager:Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;->downloadSyncContent(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->wasAudioFileFound()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->wasSyncFileFound()Z

    move-result v0

    if-nez v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->legacyDownloadManager:Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;->downloadRelatedContent(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    goto :goto_0

    .line 152
    :cond_3
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->wasAudioFileFound()Z

    move-result v0

    if-nez v0, :cond_4

    .line 153
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->legacyDownloadManager:Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;->downloadAudioContent(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    goto :goto_0

    .line 154
    :cond_4
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->wasSyncFileFound()Z

    move-result v0

    if-nez v0, :cond_5

    .line 155
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->legacyDownloadManager:Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;->downloadSyncContent(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private getAutoDownloadAudiobooksSettingItemProviderInstance()Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;
    .locals 4

    .line 207
    const-class v0, Lcom/amazon/kindle/setting/item/ItemsProvider;

    invoke-static {v0}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcom/amazon/discovery/Discoveries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/setting/item/ItemsProvider;

    .line 209
    instance-of v3, v2, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;

    if-eqz v3, :cond_0

    .line 210
    check-cast v2, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;

    move-object v1, v2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getAutoDownloadOnEbookOpenStatus()Z
    .locals 2

    .line 224
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->getAutoDownloadAudiobooksSettingItemProviderInstance()Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadUtils;->isAutoDownloadEnabled(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getContentUpdateHandler()Lcom/audible/hushpuppy/controller/ContentUpdateHandler;
    .locals 1

    .line 328
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->contentUpdateHandler()Lcom/audible/hushpuppy/controller/ContentUpdateHandler;

    move-result-object v0

    return-object v0
.end method

.method private isAutoDownload(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)Z
    .locals 5

    .line 244
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->getAutoDownloadOnEbookOpenStatus()Z

    move-result v0

    .line 245
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasSampleAudiobook()Z

    move-result v1

    .line 247
    iget-object v2, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->upsoldAsinsToAlwaysDownload:Ljava/util/List;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v3

    invoke-interface {v3}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 248
    iget-object v3, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->upsoldAsinsToAlwaysDownload:Ljava/util/List;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 250
    :goto_1
    sget-object p3, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAutoDownloadOnEbookOpen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " /hasSample: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " /containsEbookAsin: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " /containsAudiobookAsin: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " /autoDownload is: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return p2
.end method


# virtual methods
.method protected disable()V
    .locals 2

    .line 127
    sget-object v0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "HP-AppStart: Disabling com.audible.hushpuppy.ContentDownloadPlugin"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->legacyDownloadManager:Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;->pauseEvents()V

    .line 130
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->dbScalingDownloadManager:Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;->pauseEvents()V

    return-void
.end method

.method protected enable()V
    .locals 2

    .line 113
    sget-object v0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "HP-AppStart: Enabling com.audible.hushpuppy.ContentDownloadPlugin"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->legacyDownloadManager:Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;->resumeEvents()V

    .line 116
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->dbScalingDownloadManager:Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;->resumeEvents()V

    .line 117
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->autoDownloadSettings:Lcom/audible/hushpuppy/extensions/autodownload/AbstractAutoDownloadSetting;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/extensions/autodownload/AbstractAutoDownloadSetting;->registerSetting()V

    .line 119
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->getContentUpdateHandler()Lcom/audible/hushpuppy/controller/ContentUpdateHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->enable()V

    .line 121
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

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

    .line 324
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public initializeEx(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 93
    sget-object v0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "HP-AppStart: Initializing com.audible.hushpuppy.ContentDownloadPlugin"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->inject(Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;)V

    .line 96
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->legacyDownloadManager()Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->legacyDownloadManager:Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;

    .line 97
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->downloadManager()Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->dbScalingDownloadManager:Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;

    .line 98
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->hushpuppyModel()Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 99
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->abstractAutoDownloadSetting()Lcom/audible/hushpuppy/extensions/autodownload/AbstractAutoDownloadSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->autoDownloadSettings:Lcom/audible/hushpuppy/extensions/autodownload/AbstractAutoDownloadSetting;

    .line 100
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->mobileWeblabHandler()Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    .line 101
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->audibleDebugHelper()Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    .line 104
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->getAutoDownloadAudiobooksSettingItemProviderInstance()Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    :cond_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/chrome/DownloadButtonClickedEvent;)V
    .locals 2

    .line 300
    sget-object v0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received DownloadButtonClickedEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 302
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->downloadCompanion(Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;)V
    .locals 3

    .line 167
    sget-object v0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received LocalAudiobookFileNotFoundEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->wasAudioFileFound()Z

    move-result v1

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->wasSyncFileFound()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->isAutoDownload(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    sget-object v0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "In LocalAudioFileNotFound event, checking if full"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasSampleAudiobook()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    sget-object v0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Relationship is for full title, about to remove the asin from the upsoldAsinsToAlwaysDownload"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->upsoldAsinsToAlwaysDownload:Ljava/util/List;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->wasAudioFileFound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadWhenAutoDownloadOn:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 180
    :cond_1
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->getAutoDownloadOnEbookOpenStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->wasSyncFileFound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    sget-object p1, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Ignoring auto-download companion since sync file was found"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_2
    sget-object v0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Going to auto-download companion"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 184
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->downloadCompanion(Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;)V

    goto :goto_0

    .line 187
    :cond_3
    sget-object v0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Not auto downloading, posting AutoDownloadNotHappeningEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/audible/hushpuppy/common/event/file/AutoDownloadNotHappeningEvent;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/audible/hushpuppy/common/event/file/AutoDownloadNotHappeningEvent;-><init>(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 193
    :goto_0
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setEBookPosition(I)V

    :cond_4
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/file/LocalSyncFileNotFoundEvent;)V
    .locals 2

    .line 265
    sget-object v0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received LocalSyncFileNotFoundEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;->checkAndUpdateDBScalingToggle()V

    .line 267
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->dbScalingDownloadManager:Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalSyncFileNotFoundEvent;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;->downloadSyncContent(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->legacyDownloadManager:Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalSyncFileNotFoundEvent;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;->downloadSyncContent(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    :goto_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/library/LibraryDownloadEvent;)V
    .locals 2

    .line 312
    sget-object v0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received LibraryDownloadClickedEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;->checkAndUpdateDBScalingToggle()V

    .line 314
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->dbScalingDownloadManager:Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/library/LibraryDownloadEvent;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;->downloadRelatedContent(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    goto :goto_0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->legacyDownloadManager:Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/library/LibraryDownloadEvent;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;->downloadRelatedContent(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    :goto_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/upsell/PurchaseCompletedEvent;)V
    .locals 2

    .line 281
    sget-object v0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received PurchaseCompletedEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 282
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/upsell/PurchaseCompletedEvent;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/upsell/PurchaseCompletedEvent;->isAutodownload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    sget-object v0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "AutoDownload is ON on PurchaseCompletedEvent, adding Asin to upsoldAsins"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->upsoldAsinsToAlwaysDownload:Ljava/util/List;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/upsell/PurchaseCompletedEvent;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    .line 283
    :cond_2
    :goto_0
    sget-object p1, Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "PurchaseCompletedEvent - asin was null."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    return-void
.end method
