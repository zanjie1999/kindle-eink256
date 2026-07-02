.class public Lcom/amazon/kcp/info/brochure/BrochureAssetMetricsManager;
.super Ljava/lang/Object;
.source "BrochureAssetMetricsManager.java"


# direct methods
.method public static recordCount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
