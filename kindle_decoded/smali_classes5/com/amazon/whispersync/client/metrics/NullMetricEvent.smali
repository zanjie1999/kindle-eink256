.class public Lcom/amazon/whispersync/client/metrics/NullMetricEvent;
.super Ljava/lang/Object;
.source "NullMetricEvent.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/MetricEvent;


# instance fields
.field private final mMetricEventType:Lcom/amazon/whispersync/client/metrics/MetricEventType;

.field private final mProgram:Ljava/lang/String;

.field private final mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/MetricEventType;->getDefault()Lcom/amazon/whispersync/client/metrics/MetricEventType;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;->mProgram:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;->mSource:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;->mMetricEventType:Lcom/amazon/whispersync/client/metrics/MetricEventType;

    return-void
.end method


# virtual methods
.method public addCounter(Ljava/lang/String;D)V
    .locals 0

    return-void
.end method

.method public addDataPoint(Lcom/amazon/whispersync/client/metrics/DataPoint;)V
    .locals 0

    return-void
.end method

.method public addDataPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addTimer(Ljava/lang/String;D)V
    .locals 0

    return-void
.end method

.method public addTimer(Ljava/lang/String;DI)V
    .locals 0

    return-void
.end method

.method public appendString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public getAsDataPoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public getMetricEventType()Lcom/amazon/whispersync/client/metrics/MetricEventType;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;->mMetricEventType:Lcom/amazon/whispersync/client/metrics/MetricEventType;

    return-object v0
.end method

.method public getProgram()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;->mProgram:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public hasDataPoints()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public incrementCounter(Ljava/lang/String;D)V
    .locals 0

    return-void
.end method

.method public removeCounter(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeString(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeTimer(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public restoreFromMap(Ljava/util/Map;)V
    .locals 0
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

    return-void
.end method

.method public saveToMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public startTimer(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public stopTimer(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
