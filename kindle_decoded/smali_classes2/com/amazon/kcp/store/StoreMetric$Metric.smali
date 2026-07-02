.class Lcom/amazon/kcp/store/StoreMetric$Metric;
.super Ljava/lang/Object;
.source "StoreMetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/StoreMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Metric"
.end annotation


# instance fields
.field private final count:I

.field private final level:Lcom/amazon/kindle/krx/metrics/MetricType;

.field private final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    .line 28
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreMetric$Metric;->name:Ljava/lang/String;

    const-string v0, "level"

    const-string v1, "debug"

    .line 29
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/store/StoreMetric$Metric;->convertToMetricType(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricType;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreMetric$Metric;->level:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v0, "counter"

    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/store/StoreMetric$Metric;->count:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/json/JSONObject;Lcom/amazon/kcp/store/StoreMetric$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/StoreMetric$Metric;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method private convertToMetricType(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricType;
    .locals 2

    const-string v0, "debug"

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object p1, Lcom/amazon/kindle/krx/metrics/MetricType;->DEBUG:Lcom/amazon/kindle/krx/metrics/MetricType;

    goto :goto_0

    :cond_0
    const-string v0, "info"

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    sget-object p1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "warn"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    sget-object p1, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    goto :goto_0

    :cond_2
    const-string v0, "error"

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    sget-object p1, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    goto :goto_0

    :cond_3
    const-string v0, "critical"

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    sget-object p1, Lcom/amazon/kindle/krx/metrics/MetricType;->CRITICAL:Lcom/amazon/kindle/krx/metrics/MetricType;

    goto :goto_0

    .line 73
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/store/StoreMetric;->access$000()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid metric level reported from store: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", defaulting to DEBUG"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    sget-object p1, Lcom/amazon/kindle/krx/metrics/MetricType;->DEBUG:Lcom/amazon/kindle/krx/metrics/MetricType;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getMetricType()Lcom/amazon/kindle/krx/metrics/MetricType;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreMetric$Metric;->level:Lcom/amazon/kindle/krx/metrics/MetricType;

    return-object v0
.end method

.method public getMetricsData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    iget v1, p0, Lcom/amazon/kcp/store/StoreMetric$Metric;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Count"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreMetric$Metric;->name:Ljava/lang/String;

    return-object v0
.end method
