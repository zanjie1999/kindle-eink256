.class public Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;
.super Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;
.source "AWSRequestMetricsFullSupport.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final COMMA_SEPARATOR:Ljava/lang/Object;

.field private static final KEY_VALUE_SEPARATOR:Ljava/lang/Object;

.field private static final LATENCY_LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;


# instance fields
.field private final eventsBeingProfiled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.amazon.kindle.com.amazonaws.latency"

    .line 50
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;->LATENCY_LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v0, "="

    .line 51
    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;->KEY_VALUE_SEPARATOR:Ljava/lang/Object;

    const-string v0, ", "

    .line 52
    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;->COMMA_SEPARATOR:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->startTimingFullSupport()Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;-><init>(Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;->properties:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;->eventsBeingProfiled:Ljava/util/Map;

    return-void
.end method

.method private keyValueFormat(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 197
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;->KEY_VALUE_SEPARATOR:Ljava/lang/Object;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;->COMMA_SEPARATOR:Ljava/lang/Object;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public addProperty(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    .locals 0

    .line 172
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;->properties:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V
    .locals 0

    .line 116
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;->endEvent(Ljava/lang/String;)V

    return-void
.end method

.method public endEvent(Ljava/lang/String;)V
    .locals 6

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;->eventsBeingProfiled:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;

    if-nez v0, :cond_0

    .line 103
    const-class v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to end an event which was never started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->warn(Ljava/lang/Object;)V

    return-void

    .line 106
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->endTiming()Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;

    .line 107
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;

    .line 110
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->getStartTimeNano()J

    move-result-wide v2

    .line 111
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->getEndTimeNano()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 109
    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->unmodifiableTimingInfo(JLjava/lang/Long;)Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;

    move-result-object v0

    .line 107
    invoke-virtual {v1, p1, v0}, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->addSubMeasurement(Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;)V

    return-void
.end method

.method public incrementCounter(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V
    .locals 0

    .line 136
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;->incrementCounter(Ljava/lang/String;)V

    return-void
.end method

.method public incrementCounter(Ljava/lang/String;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->incrementCounter(Ljava/lang/String;)V

    return-void
.end method

.method public log()V
    .locals 4

    .line 177
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;->LATENCY_LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 181
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v3, v2, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;->keyValueFormat(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;

    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->getAllCounters()Ljava/util/Map;

    move-result-object v1

    .line 185
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 184
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 186
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v3, v2, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;->keyValueFormat(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;

    .line 189
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->getSubMeasurementsByName()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 188
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 190
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v3, v2, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;->keyValueFormat(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 192
    :cond_2
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;->LATENCY_LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public setCounter(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;J)V
    .locals 0

    .line 146
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;->setCounter(Ljava/lang/String;J)V

    return-void
.end method

.method public setCounter(Ljava/lang/String;J)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->setCounter(Ljava/lang/String;J)V

    return-void
.end method

.method public startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V
    .locals 0

    .line 88
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;->startEvent(Ljava/lang/String;)V

    return-void
.end method

.method public startEvent(Ljava/lang/String;)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;->eventsBeingProfiled:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->startTimingFullSupport(J)Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
