.class Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics$2;
.super Ljava/lang/Object;
.source "DcpReportableMetrics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;

.field final synthetic val$metric:Lcom/amazon/kindle/krx/metrics/MetricsData;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;Lcom/amazon/kindle/krx/metrics/MetricsData;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics$2;->this$0:Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;

    iput-object p2, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics$2;->val$metric:Lcom/amazon/kindle/krx/metrics/MetricsData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics$2;->this$0:Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;

    invoke-static {v0}, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->access$100(Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;)Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;->ensureDCMFullyInitialized()V

    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics$2;->this$0:Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;

    iget-object v0, v0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->appVersionStringValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics$2;->this$0:Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->initializeAppVersions()V

    :cond_0
    const/4 v0, 0x1

    const-string v1, "DCP reportMetric"

    .line 195
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 196
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics$2;->this$0:Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;

    iget-object v2, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics$2;->val$metric:Lcom/amazon/kindle/krx/metrics/MetricsData;

    invoke-static {v0, v2}, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->access$200(Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;Lcom/amazon/kindle/krx/metrics/MetricsData;)Lcom/amazon/client/metrics/common/MetricEvent;

    move-result-object v0

    .line 197
    iget-object v2, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics$2;->val$metric:Lcom/amazon/kindle/krx/metrics/MetricsData;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->getMetricType()Lcom/amazon/kindle/krx/metrics/MetricType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/metrics/MetricType;->getPriority()I

    move-result v2

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/metrics/MetricType;->getPriority()I

    move-result v3

    if-lt v2, v3, :cond_1

    sget-object v2, Lcom/amazon/client/metrics/common/Priority;->HIGH:Lcom/amazon/client/metrics/common/Priority;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/amazon/client/metrics/common/Priority;->NORMAL:Lcom/amazon/client/metrics/common/Priority;

    .line 199
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics$2;->this$0:Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;

    invoke-static {v3, v0, v2}, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->access$300(Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;Lcom/amazon/client/metrics/common/MetricEvent;Lcom/amazon/client/metrics/common/Priority;)V

    const/4 v0, 0x0

    .line 200
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method
