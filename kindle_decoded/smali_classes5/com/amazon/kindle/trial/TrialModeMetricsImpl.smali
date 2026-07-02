.class final Lcom/amazon/kindle/trial/TrialModeMetricsImpl;
.super Ljava/lang/Object;
.source "TrialModeMetrics.kt"

# interfaces
.implements Lcom/amazon/kindle/trial/TrialModeMetrics;


# instance fields
.field private final fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private final metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;)V
    .locals 1

    const-string v0, "metricsManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/trial/TrialModeMetricsImpl;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    iput-object p2, p0, Lcom/amazon/kindle/trial/TrialModeMetricsImpl;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    return-void
.end method

.method private final reportFastMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/trial/TrialModeMetricsImpl;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/amazon/kindle/trial/TrialModeMetricsKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Couldn\'t record information to FastMetrics"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 84
    :cond_0
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->TRIAL_MODE_EVENTS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    .line 85
    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    const-string v1, "fastMetrics.getPayloadBu\u2026me, schema.schemaVersion)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "event_id"

    .line 87
    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string p1, "event_value"

    .line 88
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 89
    invoke-interface {v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    const-string p2, "builder.run {\n          \u2026urn@run build()\n        }"

    .line 86
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object p2, p0, Lcom/amazon/kindle/trial/TrialModeMetricsImpl;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    return-void
.end method


# virtual methods
.method public customerRequestedSignIn(Lcom/amazon/kindle/trial/SignInLocation;)V
    .locals 4

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lcom/amazon/kindle/trial/SignInLocation;->getMetricName()Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/amazon/kindle/trial/TrialModeMetricsImpl;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CustomerRequestedSignIn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TrialModeMetrics"

    invoke-interface {v1, v3, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CustomerRequestedSignIn"

    .line 70
    invoke-direct {p0, v1, v0}, Lcom/amazon/kindle/trial/TrialModeMetricsImpl;->reportFastMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->setSignInLocation(Lcom/amazon/kindle/trial/SignInLocation;)V

    return-void
.end method
