.class public final Lcom/audible/hushpuppy/common/receiver/StandAloneLibraryManualSyncListener;
.super Ljava/lang/Object;
.source "StandAloneLibraryManualSyncListener.java"

# interfaces
.implements Lcom/amazon/kindle/krx/sync/IManualSyncListener;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final eventBus:Lde/greenrobot/event/EventBus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/receiver/StandAloneLibraryManualSyncListener;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/receiver/StandAloneLibraryManualSyncListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/audible/hushpuppy/common/receiver/StandAloneLibraryManualSyncListener;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method


# virtual methods
.method public onManualSync(Lcom/amazon/kindle/krx/sync/IManualSyncListener$ManualSyncType;)V
    .locals 3

    .line 49
    sget-object v0, Lcom/amazon/kindle/krx/sync/IManualSyncListener$ManualSyncType;->LIBRARY_SYNC:Lcom/amazon/kindle/krx/sync/IManualSyncListener$ManualSyncType;

    if-ne p1, v0, :cond_0

    .line 50
    sget-object v0, Lcom/audible/hushpuppy/common/receiver/StandAloneLibraryManualSyncListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Launching GlobalSyncEvent ..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;->LibraryManualSync:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 52
    iget-object p1, p0, Lcom/audible/hushpuppy/common/receiver/StandAloneLibraryManualSyncListener;->eventBus:Lde/greenrobot/event/EventBus;

    sget-object v0, Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;->MANUAL_LIBRARY_SYNC:Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 55
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/common/receiver/StandAloneLibraryManualSyncListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Receiving %s. Do nothing. "

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
