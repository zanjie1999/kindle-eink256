.class Lcom/amazon/identity/auth/device/mj$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/mj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final uV:Lcom/amazon/client/metrics/PeriodicMetricReporter;

.field final uW:Lcom/amazon/client/metrics/MetricEvent;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/amazon/client/metrics/AndroidMetricsFactoryImpl;->getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/MetricsFactory;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/amazon/client/metrics/PeriodicMetricReporterImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "MAPAndroidPeriodicMetric"

    invoke-direct {v1, v0, p1, v2}, Lcom/amazon/client/metrics/PeriodicMetricReporterImpl;-><init>(Lcom/amazon/client/metrics/MetricsFactory;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazon/identity/auth/device/mj$a;->uV:Lcom/amazon/client/metrics/PeriodicMetricReporter;

    .line 51
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-interface {v1, v2, v3, p1}, Lcom/amazon/client/metrics/PeriodicMetricReporter;->startRecordingPeriodically(JLjava/util/concurrent/TimeUnit;)V

    .line 52
    iget-object p1, p0, Lcom/amazon/identity/auth/device/mj$a;->uV:Lcom/amazon/client/metrics/PeriodicMetricReporter;

    invoke-interface {p1}, Lcom/amazon/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/MetricEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/mj$a;->uW:Lcom/amazon/client/metrics/MetricEvent;

    return-void
.end method
