.class public Lcom/audible/hushpuppy/common/receiver/ReaderSyncListener;
.super Ljava/lang/Object;
.source "ReaderSyncListener.java"

# interfaces
.implements Lcom/amazon/kindle/krx/system/IBroadcastListener;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final eventBus:Lde/greenrobot/event/EventBus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/receiver/ReaderSyncListener;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/receiver/ReaderSyncListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/audible/hushpuppy/common/receiver/ReaderSyncListener;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method


# virtual methods
.method public final onReceiveIntent(Landroid/content/Intent;)V
    .locals 2

    .line 46
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;->FosDeviceManualSync:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 47
    sget-object p1, Lcom/audible/hushpuppy/common/receiver/ReaderSyncListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Reader raised a sync event"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcom/audible/hushpuppy/common/receiver/ReaderSyncListener;->eventBus:Lde/greenrobot/event/EventBus;

    sget-object v0, Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;->MANUAL_LIBRARY_SYNC:Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
