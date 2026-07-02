.class public Lcom/amazon/identity/auth/device/mk;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/mr;


# instance fields
.field private final uW:Lcom/amazon/client/metrics/MetricEvent;

.field private final uX:Lcom/amazon/client/metrics/MetricsFactory;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/amazon/client/metrics/AndroidMetricsFactoryImpl;->getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/MetricsFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/mk;->uX:Lcom/amazon/client/metrics/MetricsFactory;

    .line 33
    invoke-interface {p1, p2, p3}, Lcom/amazon/client/metrics/MetricsFactory;->createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/MetricEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/mk;->uW:Lcom/amazon/client/metrics/MetricEvent;

    const-string p2, "MAPAPP_DCMFireOS_SUPPORTED"

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 34
    invoke-interface {p1, p2, v0, v1}, Lcom/amazon/client/metrics/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 35
    iget-object p1, p0, Lcom/amazon/identity/auth/device/mk;->uX:Lcom/amazon/client/metrics/MetricsFactory;

    iget-object p2, p0, Lcom/amazon/identity/auth/device/mk;->uW:Lcom/amazon/client/metrics/MetricEvent;

    invoke-interface {p1, p2}, Lcom/amazon/client/metrics/MetricsFactory;->record(Lcom/amazon/client/metrics/MetricEvent;)V

    .line 36
    iget-object p1, p0, Lcom/amazon/identity/auth/device/mk;->uW:Lcom/amazon/client/metrics/MetricEvent;

    invoke-interface {p1}, Lcom/amazon/client/metrics/MetricEvent;->clear()V

    return-void
.end method

.method private ay(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/MetricEvent;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mk;->uX:Lcom/amazon/client/metrics/MetricsFactory;

    invoke-interface {v0, p1, p2}, Lcom/amazon/client/metrics/MetricsFactory;->createMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/MetricEvent;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/mk;->ay(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/MetricEvent;

    move-result-object p1

    long-to-double p3, p3

    .line 78
    invoke-interface {p1, p2, p3, p4}, Lcom/amazon/client/metrics/MetricEvent;->addTimer(Ljava/lang/String;D)V

    .line 80
    iget-object p2, p0, Lcom/amazon/identity/auth/device/mk;->uX:Lcom/amazon/client/metrics/MetricsFactory;

    invoke-interface {p2, p1}, Lcom/amazon/client/metrics/MetricsFactory;->record(Lcom/amazon/client/metrics/MetricEvent;)V

    return-void
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/mk;->ay(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/MetricEvent;

    move-result-object p1

    .line 52
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p3, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 54
    invoke-interface {p1, v1, v2, v3}, Lcom/amazon/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    iget-object p2, p0, Lcom/amazon/identity/auth/device/mk;->uX:Lcom/amazon/client/metrics/MetricsFactory;

    invoke-interface {p2, p1}, Lcom/amazon/client/metrics/MetricsFactory;->record(Lcom/amazon/client/metrics/MetricEvent;)V

    return-void
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    .line 94
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mk;->uW:Lcom/amazon/client/metrics/MetricEvent;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/client/metrics/MetricEvent;->addCounter(Ljava/lang/String;D)V

    if-eqz p2, :cond_0

    .line 98
    array-length v0, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p2, v3

    .line 100
    iget-object v5, p0, Lcom/amazon/identity/auth/device/mk;->uW:Lcom/amazon/client/metrics/MetricEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4, v1, v2}, Lcom/amazon/client/metrics/MetricEvent;->addCounter(Ljava/lang/String;D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bA(Ljava/lang/String;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mk;->uW:Lcom/amazon/client/metrics/MetricEvent;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    return-void
.end method

.method public eM(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;
    .locals 2

    .line 122
    new-instance v0, Lcom/amazon/identity/auth/device/ml;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/mk;->uW:Lcom/amazon/client/metrics/MetricEvent;

    invoke-direct {v0, v1, p1}, Lcom/amazon/identity/auth/device/ml;-><init>(Lcom/amazon/client/metrics/MetricEvent;Ljava/lang/String;)V

    return-object v0
.end method

.method public iL()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mk;->uX:Lcom/amazon/client/metrics/MetricsFactory;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/mk;->uW:Lcom/amazon/client/metrics/MetricEvent;

    invoke-interface {v0, v1}, Lcom/amazon/client/metrics/MetricsFactory;->record(Lcom/amazon/client/metrics/MetricEvent;)V

    .line 129
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mk;->uW:Lcom/amazon/client/metrics/MetricEvent;

    invoke-interface {v0}, Lcom/amazon/client/metrics/MetricEvent;->clear()V

    return-void
.end method

.method public incrementCounter(Ljava/lang/String;D)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mk;->uW:Lcom/amazon/client/metrics/MetricEvent;

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    mul-double p2, p2, v1

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-double p2, p2

    div-double/2addr p2, v1

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    return-void
.end method
