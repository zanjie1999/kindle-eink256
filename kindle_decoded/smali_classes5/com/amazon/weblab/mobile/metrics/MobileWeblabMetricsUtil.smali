.class public Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;
.super Ljava/lang/Object;
.source "MobileWeblabMetricsUtil.java"


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "MobileWeblabAndroidClient"

.field private static final PERIODIC_METRIC_REPORTER_INTERVAL_SECONDS:I = 0x5

.field private static mApplicationContext:Landroid/content/Context;

.field private static mPeriodicMetricReporter:Lcom/amazon/client/metrics/common/PeriodicMetricReporter;

.field private static periodicMetricEvents:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/metrics/IMobileWeblabMetric;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;->periodicMetricEvents:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static createMobileWeblabMetric(Ljava/lang/String;)Lcom/amazon/weblab/mobile/metrics/IMobileWeblabMetric;
    .locals 3

    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;->getMetricsFactory()Lcom/amazon/client/metrics/common/MetricsFactory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;->mApplicationContext:Landroid/content/Context;

    .line 66
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MobileWeblabAndroidClient"

    .line 65
    invoke-interface {v0, v1, p0}, Lcom/amazon/client/metrics/common/MetricsFactory;->createMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/common/MetricEvent;

    move-result-object p0

    .line 67
    new-instance v0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetric;

    invoke-direct {v0, p0}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetric;-><init>(Lcom/amazon/client/metrics/common/MetricEvent;)V

    return-object v0

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "weblabClientIdentifier cannot be null or empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getMetricsFactory()Lcom/amazon/client/metrics/common/MetricsFactory;
    .locals 1

    .line 97
    sget-object v0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;->mApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lcom/amazon/weblab/mobile/metrics/ApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;->mApplicationContext:Landroid/content/Context;

    .line 100
    :cond_0
    sget-object v0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;->getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/common/MetricsFactory;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getPeriodicMetricReporter(Ljava/lang/String;)Lcom/amazon/client/metrics/common/PeriodicMetricReporter;
    .locals 6

    const-class v0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;

    monitor-enter v0

    .line 104
    :try_start_0
    sget-object v1, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;->mApplicationContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 105
    invoke-static {}, Lcom/amazon/weblab/mobile/metrics/ApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;->mApplicationContext:Landroid/content/Context;

    .line 107
    :cond_0
    sget-object v1, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/common/PeriodicMetricReporter;

    if-nez v1, :cond_1

    .line 108
    new-instance v1, Lcom/amazon/client/metrics/common/PeriodicMetricReporterImpl;

    invoke-static {}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;->getMetricsFactory()Lcom/amazon/client/metrics/common/MetricsFactory;

    move-result-object v2

    const-string v3, "MobileWeblabAndroidClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;->mApplicationContext:Landroid/content/Context;

    .line 109
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, v3, p0}, Lcom/amazon/client/metrics/common/PeriodicMetricReporterImpl;-><init>(Lcom/amazon/client/metrics/common/MetricsFactory;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/common/PeriodicMetricReporter;

    const-wide/16 v2, 0x5

    .line 110
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, p0}, Lcom/amazon/client/metrics/common/PeriodicMetricReporter;->startRecordingPeriodically(JLjava/util/concurrent/TimeUnit;)V

    .line 112
    :cond_1
    sget-object p0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/common/PeriodicMetricReporter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getPeriodicMobileWeblabMetric(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/weblab/mobile/metrics/IMobileWeblabMetric;
    .locals 5

    if-eqz p0, :cond_2

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    sget-object v0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;->periodicMetricEvents:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetric;

    .line 47
    invoke-static {p0}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;->getPeriodicMetricReporter(Ljava/lang/String;)Lcom/amazon/client/metrics/common/PeriodicMetricReporter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;->mApplicationContext:Landroid/content/Context;

    .line 48
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MobileWeblabAndroidClient"

    .line 47
    invoke-interface {v1, v4, v3}, Lcom/amazon/client/metrics/common/PeriodicMetricReporter;->createTrackedMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/common/MetricEvent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetric;-><init>(Lcom/amazon/client/metrics/common/MetricEvent;)V

    .line 49
    sget-object v1, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;->periodicMetricEvents:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    sget-object v0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;->periodicMetricEvents:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/weblab/mobile/metrics/IMobileWeblabMetric;

    return-object p0

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "metricName cannot be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "weblabClientIdentifier cannot be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static recordMobileWeblabMetric(Lcom/amazon/weblab/mobile/metrics/IMobileWeblabMetric;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 80
    invoke-static {}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;->getMetricsFactory()Lcom/amazon/client/metrics/common/MetricsFactory;

    move-result-object v0

    invoke-interface {p0}, Lcom/amazon/weblab/mobile/metrics/IMobileWeblabMetric;->getMetric()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/client/metrics/common/MetricEvent;

    invoke-interface {v0, p0}, Lcom/amazon/client/metrics/common/MetricsFactory;->record(Lcom/amazon/client/metrics/common/MetricEvent;)V

    return-void

    .line 78
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "mobileWeblabMetric cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
