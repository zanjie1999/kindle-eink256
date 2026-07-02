.class public Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;
.super Ljava/lang/Object;
.source "IntentBasedMetricsCollector.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentFactory:Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->mIntentFactory:Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;

    return-void
.end method

.method private incrementExtraCounters(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->mIntentFactory:Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;

    if-nez v0, :cond_0

    .line 152
    sget-object p1, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->TAG:Ljava/lang/String;

    const-string p2, "Could not find metrics service, metric not recorded"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 156
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;->buildIncrementMetricWithExtraCountersIntent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object p1

    .line 167
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.amazon.whispersync.dcp.metrics.PACKAGE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->incrementExtraCounters(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V

    return-void
.end method

.method public varargs incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;[Ljava/lang/String;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->mIntentFactory:Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;

    if-nez v0, :cond_0

    .line 46
    sget-object p1, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->TAG:Ljava/lang/String;

    const-string p2, "Could not find metrics service, metric not recorded"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 50
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;->buildIncrementMetricWithExtraCountersIntent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 51
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public incrementStateMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->incrementExtraCounters(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V

    return-void
.end method

.method public recordMetricTimerEvent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;J)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->mIntentFactory:Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;

    if-nez v0, :cond_0

    .line 83
    sget-object p1, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->TAG:Ljava/lang/String;

    const-string p2, "Could not find metrics service, metric not recorded"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 87
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;->buildRecordTimingIntent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    .line 88
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public startDurableTimer(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->mIntentFactory:Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;

    if-nez v0, :cond_0

    .line 100
    sget-object p1, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->TAG:Ljava/lang/String;

    const-string p2, "Could not find metrics service, metric not recorded"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 104
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;->buildRecordStartTimerIntent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    .line 105
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public stopDurableTimer(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)J
    .locals 5

    .line 115
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->mIntentFactory:Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 117
    sget-object p1, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->TAG:Ljava/lang/String;

    const-string p2, "Could not find metrics service, metric not recorded"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    .line 121
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;->buildRecordStopTimerIntent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    .line 122
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-wide v1
.end method

.method public varargs stopDurableTimer(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 8

    .line 133
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->mIntentFactory:Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;

    const-wide/16 v6, 0x0

    if-nez v0, :cond_0

    .line 135
    sget-object p1, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->TAG:Ljava/lang/String;

    const-string p2, "Could not find metrics service, metric not recorded"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v6

    .line 139
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;->buildRecordStopTimerWithExtraIntent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;[Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    .line 144
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-wide v6
.end method
