.class Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$1;
.super Ljava/lang/Object;
.source "KrxMetricLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->reportCounterMetricInternal(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;

.field final synthetic val$combinedKey:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$1;->this$0:Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;

    iput-object p2, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$1;->val$combinedKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 356
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$1;->val$combinedKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$1;->val$value:Ljava/lang/String;

    const-string v3, "Report CounterMetric: %s - %s"

    invoke-interface {v0, v3, v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$1;->this$0:Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->access$200(Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$1;->val$combinedKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$1;->val$value:Ljava/lang/String;

    iget-object v3, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$1;->this$0:Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;

    invoke-static {v3}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->access$100(Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
