.class public final Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;
.super Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;
.source "MetricLoggingPlugin.java"


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    entry = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
    name = "com.audible.hushpuppy.MetricLoggingPlugin"
    roles = {
        .enum Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private alarmReceiver:Lcom/audible/hushpuppy/controller/audible/stats/receivers/AlarmReceiver;

.field private connectionChangeReceiver:Lcom/audible/hushpuppy/controller/audible/stats/receivers/ConnectionChangeReceiver;

.field protected foregroundStateController:Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;

.field private languageChangeReceiver:Lcom/audible/hushpuppy/controller/audible/stats/receivers/LanguageChangeReceiver;

.field protected listeningStatsManager:Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

.field protected playbackPositionController:Lcom/audible/hushpuppy/controller/audible/readingstream/PlaybackPositionController;

.field protected playerStateChangeController:Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateController;

.field protected playerStateChangeListener:Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener;

.field protected playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

.field protected playerStateListener:Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener;

.field protected readerModeChangeController:Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderModeController;

.field protected readerStateChangeListener:Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;

.field protected readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

.field protected readerStateListener:Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;

.field protected relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

.field protected screenOnOffReceiver:Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;

.field private timeChangeReceiver:Lcom/audible/hushpuppy/controller/audible/stats/receivers/TimeChangeReceiver;

.field protected workerHandler:Lcom/audible/hushpuppy/common/system/IWorkerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected disable()V
    .locals 2

    .line 197
    sget-object v0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "HP-AppStart: Disabling com.audible.hushpuppy.MetricLoggingPlugin"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->playbackPositionController:Lcom/audible/hushpuppy/controller/audible/readingstream/PlaybackPositionController;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 199
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->playerStateChangeController:Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateController;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->foregroundStateController:Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 201
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 202
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->listeningStatsManager:Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->playerStateListener:Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/misc/IObservable;->unregister(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->readerStateListener:Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/misc/IObservable;->unregister(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->readerModeChangeController:Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderModeController;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->screenOnOffReceiver:Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 208
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->timeChangeReceiver:Lcom/audible/hushpuppy/controller/audible/stats/receivers/TimeChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->connectionChangeReceiver:Lcom/audible/hushpuppy/controller/audible/stats/receivers/ConnectionChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 210
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->languageChangeReceiver:Lcom/audible/hushpuppy/controller/audible/stats/receivers/LanguageChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->alarmReceiver:Lcom/audible/hushpuppy/controller/audible/stats/receivers/AlarmReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 213
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->playerStateChangeListener:Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/misc/IObservable;->unregister(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->readerStateChangeListener:Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/misc/IObservable;->unregister(Ljava/lang/Object;)Z

    return-void
.end method

.method protected enable()V
    .locals 3

    .line 163
    sget-object v0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "HP-AppStart: Enabling com.audible.hushpuppy.MetricLoggingPlugin"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->playbackPositionController:Lcom/audible/hushpuppy/controller/audible/readingstream/PlaybackPositionController;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 165
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->playerStateChangeController:Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateController;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->foregroundStateController:Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->listeningStatsManager:Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->playerStateListener:Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/misc/IObservable;->register(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->readerStateListener:Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/misc/IObservable;->register(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->readerModeChangeController:Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderModeController;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 176
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->screenOnOffReceiver:Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/stats/receivers/TimeChangeReceiver;

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->listeningStatsManager:Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    iget-object v2, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->workerHandler:Lcom/audible/hushpuppy/common/system/IWorkerHandler;

    invoke-direct {v0, v1, v2}, Lcom/audible/hushpuppy/controller/audible/stats/receivers/TimeChangeReceiver;-><init>(Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;Lcom/audible/hushpuppy/common/system/IWorkerHandler;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->timeChangeReceiver:Lcom/audible/hushpuppy/controller/audible/stats/receivers/TimeChangeReceiver;

    .line 179
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->timeChangeReceiver:Lcom/audible/hushpuppy/controller/audible/stats/receivers/TimeChangeReceiver;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/controller/audible/stats/receivers/TimeChangeReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/stats/receivers/ConnectionChangeReceiver;

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->listeningStatsManager:Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    iget-object v2, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->workerHandler:Lcom/audible/hushpuppy/common/system/IWorkerHandler;

    invoke-direct {v0, v1, v2}, Lcom/audible/hushpuppy/controller/audible/stats/receivers/ConnectionChangeReceiver;-><init>(Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;Lcom/audible/hushpuppy/common/system/IWorkerHandler;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->connectionChangeReceiver:Lcom/audible/hushpuppy/controller/audible/stats/receivers/ConnectionChangeReceiver;

    .line 182
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->connectionChangeReceiver:Lcom/audible/hushpuppy/controller/audible/stats/receivers/ConnectionChangeReceiver;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/controller/audible/stats/receivers/ConnectionChangeReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/stats/receivers/LanguageChangeReceiver;

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->listeningStatsManager:Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    iget-object v2, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->workerHandler:Lcom/audible/hushpuppy/common/system/IWorkerHandler;

    invoke-direct {v0, v1, v2}, Lcom/audible/hushpuppy/controller/audible/stats/receivers/LanguageChangeReceiver;-><init>(Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;Lcom/audible/hushpuppy/common/system/IWorkerHandler;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->languageChangeReceiver:Lcom/audible/hushpuppy/controller/audible/stats/receivers/LanguageChangeReceiver;

    .line 185
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->languageChangeReceiver:Lcom/audible/hushpuppy/controller/audible/stats/receivers/LanguageChangeReceiver;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/controller/audible/stats/receivers/LanguageChangeReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/stats/receivers/AlarmReceiver;

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->listeningStatsManager:Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    iget-object v2, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->workerHandler:Lcom/audible/hushpuppy/common/system/IWorkerHandler;

    invoke-direct {v0, v1, v2}, Lcom/audible/hushpuppy/controller/audible/stats/receivers/AlarmReceiver;-><init>(Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;Lcom/audible/hushpuppy/common/system/IWorkerHandler;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->alarmReceiver:Lcom/audible/hushpuppy/controller/audible/stats/receivers/AlarmReceiver;

    .line 188
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->alarmReceiver:Lcom/audible/hushpuppy/controller/audible/stats/receivers/AlarmReceiver;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/controller/audible/stats/receivers/AlarmReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->playerStateChangeListener:Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/misc/IObservable;->register(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->readerStateChangeListener:Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/misc/IObservable;->register(Ljava/lang/Object;)Z

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

    .line 220
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public initializeEx(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 158
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->inject(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;)V

    return-void
.end method
