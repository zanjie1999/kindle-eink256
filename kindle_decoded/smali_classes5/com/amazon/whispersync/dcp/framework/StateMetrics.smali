.class public final Lcom/amazon/whispersync/dcp/framework/StateMetrics;
.super Ljava/lang/Object;
.source "StateMetrics.java"


# static fields
.field private static sCollector:Lcom/amazon/whispersync/com/google/inject/Provider;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;",
            ">;"
        }
    .end annotation
.end field

.field private static sStateChange:Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

    sget-object v1, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier$Level;->INFO:Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier$Level;

    const-string v2, "DCP"

    const-string v3, "Metrics"

    const-string v4, "StateChange"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;-><init>(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/StateMetrics;->sStateChange:Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static formatExtraDataForMetrics(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "key"

    .line 32
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    const-string/jumbo p0, "value"

    .line 36
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static incrementStateMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/StateMetrics;->sCollector:Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    invoke-interface {v0, p0, p1}, Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;->incrementStateMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V

    return-void
.end method

.method public static recordStateKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/amazon/whispersync/dcp/framework/StateMetrics;->formatExtraDataForMetrics(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 26
    sget-object p1, Lcom/amazon/whispersync/dcp/framework/StateMetrics;->sStateChange:Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

    invoke-static {p1, p0}, Lcom/amazon/whispersync/dcp/framework/StateMetrics;->incrementStateMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V

    return-void
.end method
