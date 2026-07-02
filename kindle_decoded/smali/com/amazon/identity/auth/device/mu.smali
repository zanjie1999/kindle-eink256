.class Lcom/amazon/identity/auth/device/mu;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/mr;


# instance fields
.field private final mMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

.field private final mMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/AndroidMetricsFactoryImpl;->getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/mu;->mMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

    .line 30
    invoke-interface {p1, p2, p3}, Lcom/amazon/client/metrics/thirdparty/MetricsFactory;->createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/mu;->mMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    const-string p2, "MAPAPP_DCMThirdParty_SUPPORTED"

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 31
    invoke-interface {p1, p2, v0, v1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 32
    iget-object p1, p0, Lcom/amazon/identity/auth/device/mu;->mMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

    iget-object p2, p0, Lcom/amazon/identity/auth/device/mu;->mMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {p1, p2}, Lcom/amazon/client/metrics/thirdparty/MetricsFactory;->record(Lcom/amazon/client/metrics/thirdparty/MetricEvent;)V

    .line 33
    iget-object p1, p0, Lcom/amazon/identity/auth/device/mu;->mMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {p1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->clear()V

    return-void
.end method

.method private aD(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/MetricEvent;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mu;->mMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

    invoke-interface {v0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/MetricsFactory;->createMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/mu;->aD(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object p1

    long-to-double p3, p3

    .line 68
    invoke-interface {p1, p2, p3, p4}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->addTimer(Ljava/lang/String;D)V

    .line 70
    iget-object p2, p0, Lcom/amazon/identity/auth/device/mu;->mMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

    invoke-interface {p2, p1}, Lcom/amazon/client/metrics/thirdparty/MetricsFactory;->record(Lcom/amazon/client/metrics/thirdparty/MetricEvent;)V

    return-void
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/mu;->aD(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object p1

    .line 42
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p3, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 44
    invoke-interface {p1, v1, v2, v3}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    iget-object p2, p0, Lcom/amazon/identity/auth/device/mu;->mMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

    invoke-interface {p2, p1}, Lcom/amazon/client/metrics/thirdparty/MetricsFactory;->record(Lcom/amazon/client/metrics/thirdparty/MetricEvent;)V

    return-void
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    .line 84
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mu;->mMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->addCounter(Ljava/lang/String;D)V

    if-eqz p2, :cond_0

    .line 88
    array-length v0, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p2, v3

    .line 90
    iget-object v5, p0, Lcom/amazon/identity/auth/device/mu;->mMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4, v1, v2}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->addCounter(Ljava/lang/String;D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bA(Ljava/lang/String;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mu;->mMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    return-void
.end method

.method public eM(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;
    .locals 2

    .line 112
    new-instance v0, Lcom/amazon/identity/auth/device/mv;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/mu;->mMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-direct {v0, v1, p1}, Lcom/amazon/identity/auth/device/mv;-><init>(Lcom/amazon/client/metrics/thirdparty/MetricEvent;Ljava/lang/String;)V

    return-object v0
.end method

.method public iL()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mu;->mMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/mu;->mMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v0, v1}, Lcom/amazon/client/metrics/thirdparty/MetricsFactory;->record(Lcom/amazon/client/metrics/thirdparty/MetricEvent;)V

    .line 119
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mu;->mMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->clear()V

    return-void
.end method

.method public incrementCounter(Ljava/lang/String;D)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mu;->mMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    mul-double p2, p2, v1

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-double p2, p2

    div-double/2addr p2, v1

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    return-void
.end method
