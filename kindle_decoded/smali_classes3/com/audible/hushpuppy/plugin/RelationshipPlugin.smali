.class public final Lcom/audible/hushpuppy/plugin/RelationshipPlugin;
.super Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;
.source "RelationshipPlugin.java"


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    entry = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
    name = "com.audible.hushpuppy.RelationshipPlugin"
    roles = {
        .enum Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;
    }
.end annotation


# static fields
.field private static final COMPANION_SUBSEQUENT_REQUEST_TICK_INTERVAL:I = 0x5

.field private static final COMPANION_TO_DO_FIRST_REQUEST_TICK:I = 0x5

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final UNMAPPED_EBOOK_MAPPING_REQUEST_FREQUENCY_MS:J


# instance fields
.field protected connectivityManager:Landroid/net/ConnectivityManager;

.field protected dbScalingRelationshipManager:Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

.field protected debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field protected hushpuppySettings:Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;

.field protected legacyRelationshipManager:Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;

.field protected mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 53
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->UNMAPPED_EBOOK_MAPPING_REQUEST_FREQUENCY_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;-><init>()V

    return-void
.end method

.method private isDeviceConnectedToWifi()Z
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->connectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected disable()V
    .locals 2

    .line 117
    sget-object v0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "HP-AppStart: Disabling com.audible.hushpuppy.RelationshipPlugin"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->legacyRelationshipManager:Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;

    invoke-interface {v0}, Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;->shutdown()V

    .line 120
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->dbScalingRelationshipManager:Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    invoke-interface {v0}, Lcom/audible/relationship/controller/IDBScalingRelationshipManager;->shutdown()V

    return-void
.end method

.method protected enable()V
    .locals 2

    .line 105
    sget-object v0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "HP-AppStart: Enabling com.audible.hushpuppy.RelationshipPlugin"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->todoEventHandler()Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMessagingManager()Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->register(Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;)V

    .line 108
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->legacyRelationshipManager:Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;

    invoke-interface {v0}, Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;->enable()V

    .line 109
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->dbScalingRelationshipManager:Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    invoke-interface {v0}, Lcom/audible/relationship/controller/IDBScalingRelationshipManager;->enable()V

    .line 111
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

    const-string v0, "com.audible.hushpuppy.LibraryPlugin"

    .line 99
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public initializeEx(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 94
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->inject(Lcom/audible/hushpuppy/plugin/RelationshipPlugin;)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;)V
    .locals 3

    .line 130
    sget-object v0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HP-AppStart: Received GlobalSyncEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;->MANUAL_LIBRARY_SYNC:Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;->DB_CREATION_SYNC:Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 134
    :goto_1
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;->checkAndUpdateDBScalingToggle()V

    .line 135
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->dbScalingRelationshipManager:Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    invoke-interface {v0, p1}, Lcom/audible/relationship/controller/IDBScalingRelationshipManager;->requestFullRelationship(Z)V

    goto :goto_2

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->legacyRelationshipManager:Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;->updateFullCompanionMappings(Z)V

    :goto_2
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/relationship/AudibleLibraryUpdateEvent;)V
    .locals 1

    .line 180
    sget-object p1, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received AudibleLibraryUpdateEvent"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->legacyRelationshipManager:Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;

    invoke-interface {p1}, Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;->updatePartialCompanionMappings()V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/relationship/RelationshipExpiredEvent;)V
    .locals 1

    .line 150
    sget-object p1, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received RelationshipNotFoundEvent"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->legacyRelationshipManager:Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;

    invoke-interface {p1}, Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;->updatePartialCompanionMappings()V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/relationship/RelationshipNotFoundEvent;)V
    .locals 4

    .line 164
    sget-object p1, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received RelationshipNotFoundEvent"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->hushpuppySettings:Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;

    sget-object v0, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;->LAST_FETCH_DEVICE_TIME_MS:Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;->getLong(Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;Ljava/lang/Long;)Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Value;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Value;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sget-wide v0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->UNMAPPED_EBOOK_MAPPING_REQUEST_FREQUENCY_MS:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->isDeviceConnectedToWifi()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->legacyRelationshipManager:Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;

    invoke-interface {p1}, Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;->updatePartialCompanionMappings()V

    :cond_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/upsell/PurchaseCompletedEvent;)V
    .locals 1

    .line 192
    sget-object p1, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received PurchaseCompletedEvent for Sync Mapping"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 194
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 195
    new-instance v0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin$1;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/plugin/RelationshipPlugin$1;-><init>(Lcom/audible/hushpuppy/plugin/RelationshipPlugin;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
