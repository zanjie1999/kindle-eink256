.class public Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;
.super Ljava/lang/Object;
.source "MetricsHelper.java"


# static fields
.field private static appType:Ljava/lang/String;

.field private static fastMetricsManager:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private static metricsHelper:Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;

.field private static pmetMetricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/amazon/kindle/reportcontenterror/RcePlugin;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->pmetMetricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 34
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    sput-object v0, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->fastMetricsManager:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    .line 35
    invoke-static {}, Lcom/amazon/kindle/reportcontenterror/RcePlugin;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->appType:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->metricsHelper:Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;

    invoke-direct {v0}, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;-><init>()V

    :cond_0
    return-object v0
.end method

.method private reportFastMetrics(Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    .line 53
    sget-object v0, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->fastMetricsManager:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "report_content_error_metrics"

    .line 54
    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    const-string v1, "rce_metric_action"

    .line 56
    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    const-string v0, "rce_metric_value"

    .line 57
    invoke-interface {p1, v0, p2, p3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addLong(Ljava/lang/String;J)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    const-string p2, "rce_metric_type"

    .line 58
    invoke-interface {p1, p2, p4}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->appType:Ljava/lang/String;

    const-string p3, "rce_app_type"

    .line 59
    invoke-interface {p1, p3, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    .line 60
    sget-object p2, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->fastMetricsManager:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    goto :goto_0

    .line 62
    :cond_0
    const-class p1, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FastMetrics not available."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public reportMetric(Ljava/lang/String;)V
    .locals 3

    const-wide/16 v0, 0x1

    const-string v2, "COUNTER"

    .line 72
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->reportFastMetrics(Ljava/lang/String;JLjava/lang/String;)V

    .line 73
    sget-object v0, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->pmetMetricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    const-string v1, "REPORT_CONTENT_ERROR_KFA_FOS_METRICS"

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startMetricTimer(Ljava/lang/String;)V
    .locals 1

    .line 82
    sget-object v0, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->pmetMetricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    return-void
.end method

.method public stopMetricTimer(Ljava/lang/String;)V
    .locals 4

    .line 91
    sget-object v0, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->pmetMetricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->getMetricElapsedTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 92
    sget-object v2, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->pmetMetricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    const-string v3, "REPORT_CONTENT_ERROR_KFA_FOS_METRICS"

    invoke-interface {v2, v3, p1, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TIMER"

    .line 94
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->reportFastMetrics(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
