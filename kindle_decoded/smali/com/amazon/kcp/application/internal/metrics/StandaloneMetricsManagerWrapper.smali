.class public Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;
.super Ljava/lang/Object;
.source "StandaloneMetricsManagerWrapper.java"


# static fields
.field private static final COUNT:Ljava/lang/String; = "Count"

.field private static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;


# instance fields
.field private metricsProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    sput-object v0, Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;->instance:Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;->metricsProperties:Ljava/util/Map;

    .line 78
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "Brand"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;->metricsProperties:Ljava/util/Map;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Manufacturer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;->metricsProperties:Ljava/util/Map;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "Device"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;->metricsProperties:Ljava/util/Map;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "DeviceModel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {}, Lcom/amazon/kcp/util/DownloadChannelInfo;->getDownloadChannel()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found download channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;->metricsProperties:Ljava/util/Map;

    invoke-static {}, Lcom/amazon/kcp/util/DownloadChannelInfo;->getDownloadChannel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadChannel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;
    .locals 2

    .line 38
    sget-object v0, Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;->instance:Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;

    if-nez v0, :cond_1

    .line 39
    const-class v0, Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;->instance:Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;

    invoke-direct {v1}, Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;-><init>()V

    sput-object v1, Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;->instance:Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;->instance:Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;

    return-object v0
.end method

.method private reportCounterMetricsToMetricsManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 91
    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "High"

    .line 92
    invoke-virtual {v1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 93
    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 96
    :cond_0
    iget-object p3, p0, Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;->metricsProperties:Ljava/util/Map;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p3

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;->metricsProperties:Ljava/util/Map;

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    goto :goto_1

    .line 97
    :cond_2
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public reportCounterMetrics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Count"

    .line 73
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;->reportCounterMetricsToMetricsManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " metrics reported, with priority "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
