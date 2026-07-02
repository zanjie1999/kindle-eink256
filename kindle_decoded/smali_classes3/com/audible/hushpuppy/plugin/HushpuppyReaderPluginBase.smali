.class public abstract Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;
.super Ljava/lang/Object;
.source "HushpuppyReaderPluginBase.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase$HushpuppyStateChangeEventHandler;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private eventBus:Lde/greenrobot/event/EventBus;

.field private volatile kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 32
    sget-object v0, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method


# virtual methods
.method protected abstract disable()V
.end method

.method protected abstract enable()V
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

    .line 75
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final getEventBus()Lde/greenrobot/event/EventBus;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->eventBus:Lde/greenrobot/event/EventBus;

    return-object v0
.end method

.method protected final getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method public final initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 4

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 47
    sget-object v1, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing plugin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 50
    invoke-static {}, Lcom/audible/hushpuppy/common/event/EventBusFactory;->getInstance()Lcom/audible/hushpuppy/common/event/EventBusFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/audible/hushpuppy/common/event/EventBusFactory;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v1

    iput-object v1, p0, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->eventBus:Lde/greenrobot/event/EventBus;

    .line 52
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v1}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->create(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 54
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->PluginInitializationTimer_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    invoke-virtual {v1, v2, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->initializeEx(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 56
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->PluginInitializationTimer_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    invoke-virtual {p1, v1, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase$HushpuppyStateChangeEventHandler;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase$HushpuppyStateChangeEventHandler;-><init>(Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    return-void
.end method

.method public initializeEx(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    return-void
.end method
