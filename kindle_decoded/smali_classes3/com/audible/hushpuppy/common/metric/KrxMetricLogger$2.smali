.class Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$2;
.super Ljava/lang/Object;
.source "KrxMetricLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->reportTimerMetricInternal(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;

.field final synthetic val$combinedKey:Ljava/lang/String;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;Ljava/lang/String;J)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$2;->this$0:Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;

    iput-object p2, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$2;->val$combinedKey:Ljava/lang/String;

    iput-wide p3, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$2;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 373
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$2;->val$combinedKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$2;->val$time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Report TimerMetric: %s - %s"

    invoke-interface {v0, v3, v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$2;->this$0:Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->access$200(Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$2;->val$combinedKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$2;->this$0:Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;

    iget-wide v3, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$2;->val$time:J

    invoke-static {v0, v3, v4}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->access$300(Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;J)Ljava/util/Map;

    move-result-object v4

    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$2;->this$0:Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->access$100(Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;)Ljava/util/Map;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
