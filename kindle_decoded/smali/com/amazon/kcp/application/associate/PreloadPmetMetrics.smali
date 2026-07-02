.class Lcom/amazon/kcp/application/associate/PreloadPmetMetrics;
.super Lcom/amazon/kindle/krx/metrics/MetricsData;
.source "PreloadPmetMetrics.java"

# interfaces
.implements Lcom/amazon/maft/metrics/PmetMetrics;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addCount(Ljava/lang/String;D)Lcom/amazon/maft/metrics/PmetMetrics;
    .locals 0

    double-to-int p2, p2

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    return-object p0
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/maft/metrics/PmetMetrics;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    return-object p0
.end method

.method public record()V
    .locals 1

    .line 44
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    return-void
.end method
