.class public Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;
.super Ljava/lang/Object;
.source "InBookChromeMetricsReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;,
        Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;,
        Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$FieldKey;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final SCHEMA_NAME:Ljava/lang/String; = "reader_chrome_instrumentation"

.field private static final SCHEMA_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportMetric(Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;)V
    .locals 3

    .line 76
    sget-object v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report Metric context:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 78
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "reader_chrome_instrumentation"

    .line 80
    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    .line 81
    sget-object v2, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$FieldKey;->CONTEXT:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$FieldKey;

    iget-object v2, v2, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$FieldKey;->value:Ljava/lang/String;

    iget-object p1, p1, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;->value:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 82
    sget-object p1, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$FieldKey;->ACTION:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$FieldKey;

    iget-object p1, p1, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$FieldKey;->value:Ljava/lang/String;

    iget-object p2, p2, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;->value:Ljava/lang/String;

    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 83
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_0
    return-void
.end method
