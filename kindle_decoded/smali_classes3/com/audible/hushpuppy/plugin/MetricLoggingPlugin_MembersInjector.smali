.class public final Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin_MembersInjector;
.super Ljava/lang/Object;
.source "MetricLoggingPlugin_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field private final foregroundStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final listeningStatsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final playbackPositionControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/readingstream/PlaybackPositionController;",
            ">;"
        }
    .end annotation
.end field

.field private final playerStateChangeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final playerStateChangeListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final playerStateContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;",
            ">;"
        }
    .end annotation
.end field

.field private final playerStateListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final readerModeChangeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderModeController;",
            ">;"
        }
    .end annotation
.end field

.field private final readerStateChangeListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final readerStateContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;",
            ">;"
        }
    .end annotation
.end field

.field private final readerStateListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final relationshipSyncDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;",
            ">;"
        }
    .end annotation
.end field

.field private final screenOnOffReceiverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final workerHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/system/IWorkerHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectForegroundStateController(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->foregroundStateController:Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;

    return-void
.end method

.method public static injectListeningStatsManager(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->listeningStatsManager:Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    return-void
.end method

.method public static injectPlaybackPositionController(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/controller/audible/readingstream/PlaybackPositionController;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->playbackPositionController:Lcom/audible/hushpuppy/controller/audible/readingstream/PlaybackPositionController;

    return-void
.end method

.method public static injectPlayerStateChangeController(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateController;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->playerStateChangeController:Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateController;

    return-void
.end method

.method public static injectPlayerStateChangeListener(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->playerStateChangeListener:Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener;

    return-void
.end method

.method public static injectPlayerStateContext(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    return-void
.end method

.method public static injectPlayerStateListener(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->playerStateListener:Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener;

    return-void
.end method

.method public static injectReaderModeChangeController(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderModeController;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->readerModeChangeController:Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderModeController;

    return-void
.end method

.method public static injectReaderStateChangeListener(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->readerStateChangeListener:Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;

    return-void
.end method

.method public static injectReaderStateContext(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    return-void
.end method

.method public static injectReaderStateListener(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->readerStateListener:Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;

    return-void
.end method

.method public static injectRelationshipSyncData(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

    return-void
.end method

.method public static injectScreenOnOffReceiver(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->screenOnOffReceiver:Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;

    return-void
.end method

.method public static injectWorkerHandler(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;Lcom/audible/hushpuppy/common/system/IWorkerHandler;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;->workerHandler:Lcom/audible/hushpuppy/common/system/IWorkerHandler;

    return-void
.end method
