.class public Lcom/amazon/whispersync/dcp/framework/ICEEMetricsCollector;
.super Ljava/lang/Object;
.source "ICEEMetricsCollector.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;


# static fields
.field private static final COUNTER_NAME:Ljava/lang/String; = "counter"

.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.ICEEMetricsCollector"


# instance fields
.field private final mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

.field private final mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/amazon/whispersync/client/metrics/AndroidMetricsFactoryImpl;->getInstance(Landroid/content/Context;)Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ICEEMetricsCollector;->mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    const-string v0, "icee_durable_timers"

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ICEEMetricsCollector;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method private convertMetricIdentifierToEvent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;)Lcom/amazon/whispersync/client/metrics/MetricEvent;
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ICEEMetricsCollector;->mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;->getComponent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/client/metrics/MetricsFactory;->createMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    return-object p1
.end method

.method private generateTimerKey(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;->getComponent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V
    .locals 4
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

    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/ICEEMetricsCollector;->convertMetricIdentifierToEvent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;)Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    const-string v0, "counter"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 49
    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 51
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v2, v0

    invoke-interface {p1, v1, v2, v3}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/ICEEMetricsCollector;->mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    invoke-interface {p2, p1}, Lcom/amazon/whispersync/client/metrics/MetricsFactory;->record(Lcom/amazon/whispersync/client/metrics/MetricEvent;)V

    return-void
.end method

.method public varargs incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;[Ljava/lang/String;)V
    .locals 5

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/ICEEMetricsCollector;->convertMetricIdentifierToEvent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;)Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string v2, "counter"

    .line 35
    invoke-interface {p1, v2, v0, v1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 37
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p2, v3

    .line 39
    invoke-interface {p1, v4, v0, v1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    :cond_0
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/ICEEMetricsCollector;->mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    invoke-interface {p2, p1}, Lcom/amazon/whispersync/client/metrics/MetricsFactory;->record(Lcom/amazon/whispersync/client/metrics/MetricEvent;)V

    return-void
.end method

.method public incrementStateMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V
    .locals 3
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

    .line 62
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/ICEEMetricsCollector;->convertMetricIdentifierToEvent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;)Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    const-string v0, "counter"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 63
    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 65
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 67
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/ICEEMetricsCollector;->mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    invoke-interface {p2, p1}, Lcom/amazon/whispersync/client/metrics/MetricsFactory;->record(Lcom/amazon/whispersync/client/metrics/MetricEvent;)V

    return-void
.end method

.method public recordMetricTimerEvent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;J)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/ICEEMetricsCollector;->convertMetricIdentifierToEvent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;)Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    long-to-double p3, p3

    .line 77
    invoke-interface {p1, p2, p3, p4}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addTimer(Ljava/lang/String;D)V

    .line 79
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/ICEEMetricsCollector;->mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    invoke-interface {p2, p1}, Lcom/amazon/whispersync/client/metrics/MetricsFactory;->record(Lcom/amazon/whispersync/client/metrics/MetricEvent;)V

    return-void
.end method

.method public startDurableTimer(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ICEEMetricsCollector;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/ICEEMetricsCollector;->generateTimerKey(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public stopDurableTimer(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)J
    .locals 7

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/ICEEMetricsCollector;->generateTimerKey(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/ICEEMetricsCollector;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 98
    sget-object p1, Lcom/amazon/whispersync/dcp/framework/ICEEMetricsCollector;->TAG:Ljava/lang/String;

    const-string p2, "Error stopping timer that doesn\'t exist, ignoring"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :cond_0
    sub-long/2addr v0, v2

    .line 103
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/amazon/whispersync/dcp/framework/ICEEMetricsCollector;->recordMetricTimerEvent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;J)V

    return-wide v0
.end method

.method public varargs stopDurableTimer(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 4

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/ICEEMetricsCollector;->stopDurableTimer(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)J

    move-result-wide v0

    .line 113
    array-length p2, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    aget-object v3, p3, v2

    .line 115
    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/amazon/whispersync/dcp/framework/ICEEMetricsCollector;->recordMetricTimerEvent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method
