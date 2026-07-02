.class Lcom/amazon/identity/auth/device/mt$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/mt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final mMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

.field private final mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/AndroidMetricsFactoryImpl;->getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "MAPAndroidPeriodicMetric"

    invoke-direct {v1, v0, p1, v2}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;-><init>(Lcom/amazon/client/metrics/thirdparty/MetricsFactory;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazon/identity/auth/device/mt$a;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    .line 44
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-interface {v1, v2, v3, p1}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->startRecordingPeriodically(JLjava/util/concurrent/TimeUnit;)V

    .line 45
    iget-object p1, p0, Lcom/amazon/identity/auth/device/mt$a;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {p1}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/mt$a;->mMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    return-void
.end method
