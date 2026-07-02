.class public Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;
.super Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory;
.source "MetricsServiceIntentFactory.java"


# static fields
.field private static final METRICS_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.MetricsService"

.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.MetricsServiceIntentFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory;-><init>(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static findMetricsService(Landroid/content/Context;)Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;
    .locals 2

    .line 43
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory;->SERVICE_FINDER:Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory$ComponentFinder;

    const-string v1, "com.amazon.whispersync.dcp.metrics.MetricsService"

    invoke-static {p0, v1, v0}, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory;->findDCPComponent(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory$ComponentFinder;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;-><init>(Landroid/content/ComponentName;)V

    return-object v0
.end method


# virtual methods
.method public buildIncrementMetricWithExtraCountersIntent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    const-string v0, "com.amazon.whispersync.dcp.metrics.action.INCREMENT_COUNTER"

    .line 95
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory;->buildIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.amazon.whispersync.dcp.metrics.METRIC_IDENTIFIER"

    .line 96
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.amazon.whispersync.dcp.metrics.METRIC_COUNTERS"

    .line 97
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public buildIncrementMetricWithExtraCountersIntent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 56
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "skip invalid counter value"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 74
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;->buildIncrementMetricWithExtraCountersIntent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public varargs buildIncrementMetricWithExtraCountersIntent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    .line 81
    array-length v0, p2

    if-lez v0, :cond_0

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    const/4 v4, 0x1

    .line 86
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 90
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;->buildIncrementMetricWithExtraCountersIntent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public buildRecordStartTimerIntent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;J)Landroid/content/Intent;
    .locals 2

    const-string v0, "com.amazon.whispersync.dcp.metrics.action.START_TIMER"

    .line 113
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory;->buildIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.amazon.whispersync.dcp.metrics.METRIC_IDENTIFIER"

    .line 114
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.amaozn.dcp.metrics.TIMER_NAME"

    .line 115
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.amazon.whispersync.dcp.metrics.START_TIME"

    .line 116
    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method

.method public buildRecordStopTimerIntent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;J)Landroid/content/Intent;
    .locals 2

    const-string v0, "com.amazon.whispersync.dcp.metrics.action.STOP_TIMER"

    .line 122
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory;->buildIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.amazon.whispersync.dcp.metrics.METRIC_IDENTIFIER"

    .line 123
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.amaozn.dcp.metrics.TIMER_NAME"

    .line 124
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.amazon.whispersync.dcp.metrics.STOP_TIME"

    .line 125
    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method

.method public buildRecordStopTimerWithExtraIntent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;[Ljava/lang/String;J)Landroid/content/Intent;
    .locals 0

    .line 134
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;->buildRecordStopTimerIntent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "com.amazon.whispersync.dcp.metrics.NAMES"

    .line 135
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method

.method public buildRecordTimingIntent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;J)Landroid/content/Intent;
    .locals 2

    const-string v0, "com.amazon.whispersync.dcp.metrics.action.RECORD_TIMING"

    .line 104
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory;->buildIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.amazon.whispersync.dcp.metrics.METRIC_IDENTIFIER"

    .line 105
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.amaozn.dcp.metrics.TIMER_NAME"

    .line 106
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.amazon.whispersync.dcp.metrics.ELAPSED_TIME_MS"

    .line 107
    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method
