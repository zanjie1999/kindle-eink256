.class public Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;
.super Ljava/lang/Object;
.source "ADAPTAmazonClientMetricsAdapter.java"


# static fields
.field private static final DEFAULT_PROGRAM_NAME:Ljava/lang/String; = "Pentos_SDK"

.field private static final DEFAULT_SOURCE_NAME:Ljava/lang/String; = "SDK"

.field private static final INSTANCE:Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;

.field private static final LOGGER:Lcom/amazon/adapt/mpp/logging/Logger;


# instance fields
.field private context:Landroid/content/Context;

.field private metricEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/client/metrics/common/MetricEvent;",
            ">;"
        }
    .end annotation
.end field

.field private metricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

.field private programName:Ljava/lang/String;

.field private sourceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;

    invoke-static {v0}, Lcom/amazon/adapt/mpp/logging/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/amazon/adapt/mpp/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->LOGGER:Lcom/amazon/adapt/mpp/logging/Logger;

    .line 27
    new-instance v0, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;

    invoke-direct {v0}, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;-><init>()V

    sput-object v0, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->INSTANCE:Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createMetricEventWithAttrs(Ljava/util/Map;)Lcom/amazon/client/metrics/common/MetricEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/client/metrics/common/MetricEvent;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->metricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

    iget-object v1, p0, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->programName:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->sourceName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/amazon/client/metrics/common/MetricsFactory;->createMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/common/MetricEvent;

    move-result-object v0

    .line 105
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 107
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 109
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/amazon/client/metrics/common/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->INSTANCE:Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;

    return-object v0
.end method


# virtual methods
.method public incrementCounter(Ljava/lang/String;ILcom/amazon/client/metrics/common/Priority;)V
    .locals 1

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->incrementCounter(Ljava/lang/String;ILcom/amazon/client/metrics/common/Priority;Ljava/util/Map;)V

    return-void
.end method

.method public incrementCounter(Ljava/lang/String;ILcom/amazon/client/metrics/common/Priority;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/amazon/client/metrics/common/Priority;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p4}, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->createMetricEventWithAttrs(Ljava/util/Map;)Lcom/amazon/client/metrics/common/MetricEvent;

    move-result-object p4

    int-to-double v0, p2

    .line 50
    invoke-interface {p4, p1, v0, v1}, Lcom/amazon/client/metrics/common/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 51
    iget-object p1, p0, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->metricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

    invoke-interface {p1, p4, p3}, Lcom/amazon/client/metrics/common/MetricsFactory;->record(Lcom/amazon/client/metrics/common/MetricEvent;Lcom/amazon/client/metrics/common/Priority;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Pentos_SDK"

    const-string v1, "SDK"

    .line 91
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->context:Landroid/content/Context;

    .line 96
    iput-object p4, p0, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->sourceName:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->programName:Ljava/lang/String;

    .line 98
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->metricEvents:Ljava/util/Map;

    .line 99
    iget-object p1, p0, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/amazon/kcp/store/adapter/InstrumentDCMAdapter;->setMetricsConfig(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;->getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/common/MetricsFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->metricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

    return-void
.end method
