.class public Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;
.super Ljava/lang/Object;
.source "BasicMetricEvent.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/MetricEvent;


# static fields
.field private static final ALLOW_RUNNING_TIMERS_KEY:Ljava/lang/String; = "AllowRunning"

.field public static final ATTRIBUTE_DELIMITER:Ljava/lang/String; = " ; "

.field private static final DATAPOINTS_MAP_KEY:Ljava/lang/String; = "Datapoints"

.field private static final DATAPOINT_DELIMITER:Ljava/lang/String; = "\t"

.field public static final LIST_DELIMITER:Ljava/lang/String; = ","

.field private static final METRIC_EVENT_TYPE_KEY:Ljava/lang/String; = "Type"

.field private static final PROGRAM_MAP_KEY:Ljava/lang/String; = "Program"

.field private static final SOURCE_MAP_KEY:Ljava/lang/String; = "Source"


# instance fields
.field private mAllowRunningTimers:Z

.field protected mCounters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mMetricEventType:Lcom/amazon/whispersync/client/metrics/MetricEventType;

.field private mProgram:Ljava/lang/String;

.field private mSource:Ljava/lang/String;

.field protected mStringClickstreamValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mStringDiscreteValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mTimers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/client/metrics/AggregatingTimer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 63
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/MetricEventType;->getDefault()Lcom/amazon/whispersync/client/metrics/MetricEventType;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mCounters:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mTimers:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mStringDiscreteValues:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mStringClickstreamValues:Ljava/util/Map;

    .line 72
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->validateString(Ljava/lang/String;)V

    .line 73
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->validateString(Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mProgram:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mSource:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mMetricEventType:Lcom/amazon/whispersync/client/metrics/MetricEventType;

    .line 77
    iput-boolean p4, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mAllowRunningTimers:Z

    return-void
.end method

.method private addClickStreamData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 348
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->validateString(Ljava/lang/String;)V

    .line 349
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->validateStringValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mStringClickstreamValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private getOrCreateTimer(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/AggregatingTimer;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mTimers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;

    if-nez p1, :cond_0

    .line 359
    new-instance p1, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;

    iget-boolean v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mAllowRunningTimers:Z

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;-><init>(Z)V

    :cond_0
    return-object p1
.end method

.method private listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 275
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 280
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 281
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const-string v2, ","

    .line 282
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private validateString(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 372
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 373
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid string. Cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateStringValue(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, " ; "

    .line 384
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public addCounter(Ljava/lang/String;D)V
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->incrementCounter(Ljava/lang/String;D)V

    return-void
.end method

.method public addDataPoint(Lcom/amazon/whispersync/client/metrics/DataPoint;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/client/metrics/MetricsException;
        }
    .end annotation

    .line 290
    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/DataPoint;->getType()Lcom/amazon/whispersync/client/metrics/DataPointType;

    move-result-object v0

    .line 292
    :try_start_0
    sget-object v1, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent$1;->$SwitchMap$com$amazon$client$metrics$DataPointType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 318
    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/DataPoint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/DataPoint;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->addClickStreamData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid DataPointType"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 315
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/DataPoint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/DataPoint;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/DataPoint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/DataPoint;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/DataPoint;->getSamples()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->addTimer(Ljava/lang/String;DI)V

    goto :goto_0

    .line 295
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/DataPoint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/DataPoint;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->addCounter(Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .line 324
    new-instance v2, Lcom/amazon/whispersync/client/metrics/MetricsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid DataPoint. DataPointType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", DataPoint value: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/DataPoint;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lcom/amazon/whispersync/client/metrics/MetricsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public addDataPoints(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/client/metrics/MetricsException;
        }
    .end annotation

    .line 333
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/client/metrics/DataPoint;

    .line 335
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->addDataPoint(Lcom/amazon/whispersync/client/metrics/DataPoint;)V
    :try_end_0
    .catch Lcom/amazon/whispersync/client/metrics/MetricsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 342
    :cond_1
    new-instance p1, Lcom/amazon/whispersync/client/metrics/MetricsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " MetricsExceptions were thrown"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " while adding datapoints"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lcom/amazon/whispersync/client/metrics/MetricsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public addString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->appendString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addTimer(Ljava/lang/String;D)V
    .locals 1

    const/4 v0, 0x1

    .line 118
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->addTimer(Ljava/lang/String;DI)V

    return-void
.end method

.method public addTimer(Ljava/lang/String;DI)V
    .locals 1

    .line 123
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->validateString(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->getOrCreateTimer(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/AggregatingTimer;

    move-result-object v0

    .line 125
    invoke-virtual {v0, p2, p3, p4}, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->addTime(DI)V

    .line 126
    iget-object p2, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mTimers:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public appendString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 159
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->validateString(Ljava/lang/String;)V

    .line 160
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->validateStringValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mStringDiscreteValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object p2, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mStringDiscreteValues:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mCounters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 181
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mTimers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 182
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mStringDiscreteValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected convertDataPointToString(Lcom/amazon/whispersync/client/metrics/DataPoint;)Ljava/lang/String;
    .locals 3

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/DataPoint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/DataPoint;->getType()Lcom/amazon/whispersync/client/metrics/DataPointType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/DataPoint;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/DataPoint;->getSamples()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected convertStringToDataPoint(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/DataPoint;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, " ; "

    .line 470
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 471
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 474
    new-instance p1, Lcom/amazon/whispersync/client/metrics/DataPoint;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0}, Lcom/amazon/whispersync/client/metrics/DataPointType;->valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/DataPointType;

    move-result-object v0

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/amazon/whispersync/client/metrics/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/whispersync/client/metrics/DataPointType;)V

    return-object p1

    .line 472
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough parts to the datapoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsDataPoints()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mCounters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 208
    new-instance v4, Lcom/amazon/whispersync/client/metrics/DataPoint;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/amazon/whispersync/client/metrics/DataPointType;->CT:Lcom/amazon/whispersync/client/metrics/DataPointType;

    invoke-direct {v4, v5, v2, v3, v6}, Lcom/amazon/whispersync/client/metrics/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/whispersync/client/metrics/DataPointType;)V

    .line 210
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mTimers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 217
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;

    invoke-virtual {v4}, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->getSamples()I

    move-result v4

    if-nez v4, :cond_2

    .line 218
    iget-boolean v4, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mAllowRunningTimers:Z

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;

    invoke-virtual {v4}, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->numRunningTimers()I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_1

    .line 223
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discarding timer as sample count is 0. Timer name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 229
    :cond_2
    iget-object v4, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mMetricEventType:Lcom/amazon/whispersync/client/metrics/MetricEventType;

    sget-object v5, Lcom/amazon/whispersync/client/metrics/MetricEventType;->AGGREGATING:Lcom/amazon/whispersync/client/metrics/MetricEventType;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 231
    new-instance v4, Lcom/amazon/whispersync/client/metrics/DataPoint;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;

    invoke-virtual {v6}, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->getElapsedTime()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;

    invoke-virtual {v2}, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->getSamples()I

    move-result v2

    sget-object v7, Lcom/amazon/whispersync/client/metrics/DataPointType;->TI:Lcom/amazon/whispersync/client/metrics/DataPointType;

    invoke-direct {v4, v5, v6, v2, v7}, Lcom/amazon/whispersync/client/metrics/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/whispersync/client/metrics/DataPointType;)V

    goto :goto_2

    .line 235
    :cond_3
    iget-object v4, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mMetricEventType:Lcom/amazon/whispersync/client/metrics/MetricEventType;

    sget-object v5, Lcom/amazon/whispersync/client/metrics/MetricEventType;->AVERAGING:Lcom/amazon/whispersync/client/metrics/MetricEventType;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 238
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;

    invoke-virtual {v4}, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->getElapsedTime()D

    move-result-wide v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;

    invoke-virtual {v6}, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->getSamples()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    .line 240
    new-instance v6, Lcom/amazon/whispersync/client/metrics/DataPoint;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/amazon/whispersync/client/metrics/DataPointType;->TI:Lcom/amazon/whispersync/client/metrics/DataPointType;

    invoke-direct {v6, v2, v4, v3, v5}, Lcom/amazon/whispersync/client/metrics/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/whispersync/client/metrics/DataPointType;)V

    move-object v4, v6

    .line 247
    :goto_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 243
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown Metric event type. Metric event type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mMetricEventType:Lcom/amazon/whispersync/client/metrics/MetricEventType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    goto/16 :goto_1

    .line 257
    :cond_5
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mStringDiscreteValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 258
    new-instance v4, Lcom/amazon/whispersync/client/metrics/DataPoint;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/amazon/whispersync/client/metrics/DataPointType;->DV:Lcom/amazon/whispersync/client/metrics/DataPointType;

    invoke-direct {v4, v5, v2, v3, v6}, Lcom/amazon/whispersync/client/metrics/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/whispersync/client/metrics/DataPointType;)V

    .line 260
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 264
    :cond_6
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mStringClickstreamValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 265
    new-instance v4, Lcom/amazon/whispersync/client/metrics/DataPoint;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v6, Lcom/amazon/whispersync/client/metrics/DataPointType;->CK:Lcom/amazon/whispersync/client/metrics/DataPointType;

    invoke-direct {v4, v5, v2, v3, v6}, Lcom/amazon/whispersync/client/metrics/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/whispersync/client/metrics/DataPointType;)V

    .line 267
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    return-object v0
.end method

.method public getMetricEventType()Lcom/amazon/whispersync/client/metrics/MetricEventType;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mMetricEventType:Lcom/amazon/whispersync/client/metrics/MetricEventType;

    return-object v0
.end method

.method public getProgram()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mProgram:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public hasDataPoints()Z
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->getAsDataPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public incrementCounter(Ljava/lang/String;D)V
    .locals 3

    .line 102
    invoke-static {p2, p3}, Lcom/amazon/whispersync/client/metrics/DoubleValidator;->validateDouble(D)V

    .line 103
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->validateString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mCounters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mCounters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 108
    :goto_0
    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mCounters:Ljava/util/Map;

    add-double/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeCounter(Ljava/lang/String;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mCounters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeString(Ljava/lang/String;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mStringDiscreteValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeTimer(Ljava/lang/String;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mTimers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public restoreFromMap(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "Program"

    .line 423
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Source"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Type"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "AllowRunning"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Datapoints"

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 430
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mProgram:Ljava/lang/String;

    .line 431
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mSource:Ljava/lang/String;

    .line 432
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whispersync/client/metrics/MetricEventType;->valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/MetricEventType;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mMetricEventType:Lcom/amazon/whispersync/client/metrics/MetricEventType;

    .line 433
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 434
    iput-boolean v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mAllowRunningTimers:Z

    goto :goto_0

    .line 436
    :cond_0
    iput-boolean v1, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mAllowRunningTimers:Z

    .line 439
    :goto_0
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, ""

    .line 440
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\t"

    .line 441
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 442
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 444
    :try_start_0
    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->convertStringToDataPoint(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/DataPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->addDataPoint(Lcom/amazon/whispersync/client/metrics/DataPoint;)V
    :try_end_0
    .catch Lcom/amazon/whispersync/client/metrics/MetricsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 446
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to restore, invalid datapoint string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    return-void

    .line 428
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Map doesn\'t capture a MetricEvent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveToMap(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mProgram:Ljava/lang/String;

    const-string v1, "Program"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mSource:Ljava/lang/String;

    const-string v1, "Source"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mMetricEventType:Lcom/amazon/whispersync/client/metrics/MetricEventType;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Type"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-boolean v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mAllowRunningTimers:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "AllowRunning"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->getAsDataPoints()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 414
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 415
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/client/metrics/DataPoint;

    invoke-virtual {p0, v3}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->convertDataPointToString(Lcom/amazon/whispersync/client/metrics/DataPoint;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    .line 416
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 418
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Datapoints"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startTimer(Ljava/lang/String;)V
    .locals 2

    .line 131
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->validateString(Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->getOrCreateTimer(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/AggregatingTimer;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->startTimer()V

    .line 134
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mTimers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public stopTimer(Ljava/lang/String;)V
    .locals 1

    .line 139
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->validateString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mTimers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;

    if-nez p1, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->stopTimer()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mProgram:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->getAsDataPoints()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 398
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 399
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/client/metrics/DataPoint;

    invoke-virtual {v3}, Lcom/amazon/whispersync/client/metrics/DataPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "\n"

    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
