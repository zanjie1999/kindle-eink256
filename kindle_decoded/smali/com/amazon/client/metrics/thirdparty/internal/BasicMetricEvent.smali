.class public Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;
.super Ljava/lang/Object;
.source "BasicMetricEvent.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/MetricEvent;


# static fields
.field private static final ALLOW_RUNNING_TIMERS_KEY:Ljava/lang/String; = "AllowRunning"

.field private static final DATAPOINTS_MAP_KEY:Ljava/lang/String; = "Datapoints"

.field private static final DATAPOINT_DELIMITER:Ljava/lang/String; = "\t"

.field private static final METRIC_EVENT_TYPE_KEY:Ljava/lang/String; = "Type"

.field private static final PROGRAM_MAP_KEY:Ljava/lang/String; = "Program"

.field private static final SOURCE_MAP_KEY:Ljava/lang/String; = "Source"


# instance fields
.field private mAllowRunningTimers:Z

.field private mAnonymous:Z

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

.field private mMetricEventType:Lcom/amazon/client/metrics/thirdparty/MetricEventType;

.field private mNonAnonymousCustomerId:Ljava/lang/String;

.field private mNonAnonymousSessionId:Ljava/lang/String;

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
            "Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;Z)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mCounters:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mTimers:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mStringDiscreteValues:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mStringClickstreamValues:Ljava/util/Map;

    .line 77
    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->validateString(Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p2}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->validateString(Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mProgram:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mSource:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mMetricEventType:Lcom/amazon/client/metrics/thirdparty/MetricEventType;

    .line 82
    iput-boolean p4, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mAllowRunningTimers:Z

    return-void
.end method

.method private addClickStreamData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 392
    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->validateString(Ljava/lang/String;)V

    .line 393
    invoke-direct {p0, p2}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->validateStringValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mStringClickstreamValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private getOrCreateTimer(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mTimers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;

    if-nez p1, :cond_0

    .line 403
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;

    iget-boolean v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mAllowRunningTimers:Z

    invoke-direct {p1, v0}, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;-><init>(Z)V

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

    .line 319
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 324
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 325
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const-string v2, ","

    .line 326
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private validateString(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 416
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 417
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

    .line 428
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

    .line 132
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->incrementCounter(Ljava/lang/String;D)V

    return-void
.end method

.method public addDataPoint(Lcom/amazon/client/metrics/thirdparty/DataPoint;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/MetricsException;
        }
    .end annotation

    .line 334
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->getType()Lcom/amazon/client/metrics/thirdparty/DataPointType;

    move-result-object v0

    .line 336
    :try_start_0
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$DataPointType:[I

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

    .line 362
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->addClickStreamData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid DataPointType"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 359
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 344
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->getSamples()I

    move-result v4

    .line 343
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->addTimer(Ljava/lang/String;DI)V

    goto :goto_0

    .line 339
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->addCounter(Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .line 368
    new-instance v2, Lcom/amazon/client/metrics/thirdparty/MetricsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid DataPoint. DataPointType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", DataPoint value: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lcom/amazon/client/metrics/thirdparty/MetricsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public addString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->appendString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addTimer(Ljava/lang/String;D)V
    .locals 1

    const/4 v0, 0x1

    .line 153
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->addTimer(Ljava/lang/String;DI)V

    return-void
.end method

.method public addTimer(Ljava/lang/String;DI)V
    .locals 1

    .line 158
    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->validateString(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->getOrCreateTimer(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;

    move-result-object v0

    .line 160
    invoke-virtual {v0, p2, p3, p4}, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->addTime(DI)V

    .line 161
    iget-object p2, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mTimers:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public appendString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 194
    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->validateString(Ljava/lang/String;)V

    .line 195
    invoke-direct {p0, p2}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->validateStringValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mStringDiscreteValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object p2, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mStringDiscreteValues:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mCounters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 216
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mTimers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 217
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mStringDiscreteValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getAnonymous()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mAnonymous:Z

    return v0
.end method

.method public getAsDataPoints()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/DataPoint;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mCounters:Ljava/util/Map;

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

    .line 243
    new-instance v4, Lcom/amazon/client/metrics/thirdparty/DataPoint;

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

    sget-object v6, Lcom/amazon/client/metrics/thirdparty/DataPointType;->CT:Lcom/amazon/client/metrics/thirdparty/DataPointType;

    invoke-direct {v4, v5, v2, v3, v6}, Lcom/amazon/client/metrics/thirdparty/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/client/metrics/thirdparty/DataPointType;)V

    .line 245
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mTimers:Ljava/util/Map;

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

    .line 252
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;

    invoke-virtual {v4}, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->getSamples()I

    move-result v4

    if-nez v4, :cond_2

    .line 253
    iget-boolean v4, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mAllowRunningTimers:Z

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;

    invoke-virtual {v4}, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->numRunningTimers()I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_1

    .line 258
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discarding timer as sample count is 0. Timer name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 264
    :cond_2
    iget-object v4, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mMetricEventType:Lcom/amazon/client/metrics/thirdparty/MetricEventType;

    sget-object v5, Lcom/amazon/client/metrics/thirdparty/MetricEventType;->AGGREGATING:Lcom/amazon/client/metrics/thirdparty/MetricEventType;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 266
    new-instance v4, Lcom/amazon/client/metrics/thirdparty/DataPoint;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 267
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;

    invoke-virtual {v6}, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->getElapsedTime()D

    move-result-wide v6

    .line 266
    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    .line 267
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;

    .line 268
    invoke-virtual {v2}, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->getSamples()I

    move-result v2

    sget-object v7, Lcom/amazon/client/metrics/thirdparty/DataPointType;->TI:Lcom/amazon/client/metrics/thirdparty/DataPointType;

    invoke-direct {v4, v5, v6, v2, v7}, Lcom/amazon/client/metrics/thirdparty/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/client/metrics/thirdparty/DataPointType;)V

    goto :goto_2

    .line 270
    :cond_3
    iget-object v4, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mMetricEventType:Lcom/amazon/client/metrics/thirdparty/MetricEventType;

    sget-object v5, Lcom/amazon/client/metrics/thirdparty/MetricEventType;->AVERAGING:Lcom/amazon/client/metrics/thirdparty/MetricEventType;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 273
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;

    invoke-virtual {v4}, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->getElapsedTime()D

    move-result-wide v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;

    invoke-virtual {v6}, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->getSamples()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    .line 275
    new-instance v6, Lcom/amazon/client/metrics/thirdparty/DataPoint;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 276
    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/amazon/client/metrics/thirdparty/DataPointType;->TI:Lcom/amazon/client/metrics/thirdparty/DataPointType;

    invoke-direct {v6, v2, v4, v3, v5}, Lcom/amazon/client/metrics/thirdparty/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/client/metrics/thirdparty/DataPointType;)V

    move-object v4, v6

    .line 282
    :goto_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 278
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown Metric event type. Metric event type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mMetricEventType:Lcom/amazon/client/metrics/thirdparty/MetricEventType;

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

    .line 292
    :cond_5
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mStringDiscreteValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 294
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->values()[Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4
    if-ge v6, v5, :cond_8

    aget-object v8, v4, v6

    .line 296
    invoke-virtual {v8}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v8}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->isOverrideAllowed(Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;)Z

    move-result v8

    if-nez v8, :cond_7

    const/4 v7, 0x1

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    if-nez v7, :cond_6

    .line 301
    new-instance v4, Lcom/amazon/client/metrics/thirdparty/DataPoint;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/amazon/client/metrics/thirdparty/DataPointType;->DV:Lcom/amazon/client/metrics/thirdparty/DataPointType;

    invoke-direct {v4, v5, v2, v3, v6}, Lcom/amazon/client/metrics/thirdparty/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/client/metrics/thirdparty/DataPointType;)V

    .line 303
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 308
    :cond_9
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mStringClickstreamValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 309
    new-instance v4, Lcom/amazon/client/metrics/thirdparty/DataPoint;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v6, Lcom/amazon/client/metrics/thirdparty/DataPointType;->CK:Lcom/amazon/client/metrics/thirdparty/DataPointType;

    invoke-direct {v4, v5, v2, v3, v6}, Lcom/amazon/client/metrics/thirdparty/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/client/metrics/thirdparty/DataPointType;)V

    .line 311
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    return-object v0
.end method

.method public getNonAnonymousCustomerId()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mNonAnonymousCustomerId:Ljava/lang/String;

    return-object v0
.end method

.method public getNonAnonymousSessionId()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mNonAnonymousSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getProgram()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mProgram:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public incrementCounter(Ljava/lang/String;D)V
    .locals 3

    .line 137
    invoke-static {p2, p3}, Lcom/amazon/client/metrics/thirdparty/internal/DoubleValidator;->validateDouble(D)V

    .line 138
    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->validateString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mCounters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mCounters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 143
    :goto_0
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mCounters:Ljava/util/Map;

    add-double/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAnonymous(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mAnonymous:Z

    return-void
.end method

.method public setNonAnonymousCustomerId(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mNonAnonymousCustomerId:Ljava/lang/String;

    return-void
.end method

.method public setNonAnonymousSessionId(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mNonAnonymousSessionId:Ljava/lang/String;

    return-void
.end method

.method public startTimer(Ljava/lang/String;)V
    .locals 2

    .line 166
    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->validateString(Ljava/lang/String;)V

    .line 167
    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->getOrCreateTimer(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->startTimer()V

    .line 169
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mTimers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public stopTimer(Ljava/lang/String;)V
    .locals 1

    .line 174
    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->validateString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mTimers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;

    if-nez p1, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->stopTimer()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mProgram:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->getAsDataPoints()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 442
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 443
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/client/metrics/thirdparty/DataPoint;

    invoke-virtual {v3}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "\n"

    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
