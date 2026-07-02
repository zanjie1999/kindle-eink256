.class public final Lcom/amazon/whispersync/dcp/framework/MetricsCollectorHolder;
.super Ljava/lang/Object;
.source "MetricsCollectorHolder.java"


# static fields
.field private static final LOCKER:[Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.MetricsCollectorHolder"

.field private static sMetricsCollector:Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    sput-object v0, Lcom/amazon/whispersync/dcp/framework/MetricsCollectorHolder;->LOCKER:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 23
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/MetricsCollectorHolder;->LOCKER:[Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/MetricsCollectorHolder;->sMetricsCollector:Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    if-eqz v1, :cond_0

    .line 27
    sget-object p0, Lcom/amazon/whispersync/dcp/framework/MetricsCollectorHolder;->sMetricsCollector:Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    monitor-exit v0

    return-object p0

    .line 30
    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/UnitTestUtils;->isRunningInUnitTest()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    sget-object p0, Lcom/amazon/whispersync/dcp/framework/MetricsCollectorHolder;->TAG:Ljava/lang/String;

    const-string v1, "Running in unit test, creating logging metrics collector"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance p0, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;

    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;-><init>()V

    sput-object p0, Lcom/amazon/whispersync/dcp/framework/MetricsCollectorHolder;->sMetricsCollector:Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    goto :goto_0

    .line 37
    :cond_1
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/MetricsCollectorHolder;->TAG:Ljava/lang/String;

    const-string v2, "Running normally, creating new metrics collector"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v1, Lcom/amazon/whispersync/dcp/framework/ClassConfigurationParser;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/dcp/framework/ClassConfigurationParser;-><init>(Landroid/content/Context;)V

    const-string p0, "MetricCollector"

    .line 40
    const-class v2, Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    const-class v3, Lcom/amazon/whispersync/dcp/framework/ICEEMetricsCollector;

    invoke-virtual {v1, p0, v2, v3}, Lcom/amazon/whispersync/dcp/framework/ClassConfigurationParser;->getClassFromConfigurationFile(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    sput-object p0, Lcom/amazon/whispersync/dcp/framework/MetricsCollectorHolder;->sMetricsCollector:Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    .line 46
    :goto_0
    sget-object p0, Lcom/amazon/whispersync/dcp/framework/MetricsCollectorHolder;->sMetricsCollector:Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setInstance(Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/MetricsCollectorHolder;->LOCKER:[Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    sput-object p0, Lcom/amazon/whispersync/dcp/framework/MetricsCollectorHolder;->sMetricsCollector:Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    .line 57
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
