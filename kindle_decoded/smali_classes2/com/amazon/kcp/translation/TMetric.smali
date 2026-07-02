.class public Lcom/amazon/kcp/translation/TMetric;
.super Ljava/lang/Object;
.source "TMetric.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TRANSLATION_READER_PLUGIN"

.field private static s_metricManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static init(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p0

    sput-object p0, Lcom/amazon/kcp/translation/TMetric;->s_metricManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    return-void
.end method

.method public static reportMetric(Ljava/lang/String;)V
    .locals 2

    .line 103
    sget-object v0, Lcom/amazon/kcp/translation/TMetric;->s_metricManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    if-eqz v0, :cond_0

    const-string v1, "TRANSLATION_READER_PLUGIN"

    .line 104
    invoke-interface {v0, v1, p0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static startMetricTimer(Ljava/lang/String;)V
    .locals 1

    .line 115
    sget-object v0, Lcom/amazon/kcp/translation/TMetric;->s_metricManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static stopMetricTimer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 128
    sget-object v0, Lcom/amazon/kcp/translation/TMetric;->s_metricManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    if-eqz v0, :cond_0

    const-string v1, "TRANSLATION_READER_PLUGIN"

    .line 129
    invoke-interface {v0, v1, p0, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
