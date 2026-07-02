.class Lcom/audible/hushpuppy/plugin/ApplicationPlugin$2;
.super Ljava/lang/Object;
.source "ApplicationPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->publishHushpuppyState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/plugin/ApplicationPlugin;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin$2;->this$0:Lcom/audible/hushpuppy/plugin/ApplicationPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 512
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;->AudibleServiceConnectionWithPfm:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 513
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->InitAudibleServicesTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 514
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin$2;->this$0:Lcom/audible/hushpuppy/plugin/ApplicationPlugin;

    iget-object v0, v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    new-instance v1, Lcom/audible/hushpuppy/plugin/ApplicationPlugin$2$1;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin$2$1;-><init>(Lcom/audible/hushpuppy/plugin/ApplicationPlugin$2;)V

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->initAllServices(Lcom/audible/hushpuppy/common/misc/IVoidCallback;)V

    .line 519
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->InitAudibleServicesTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    return-void
.end method
