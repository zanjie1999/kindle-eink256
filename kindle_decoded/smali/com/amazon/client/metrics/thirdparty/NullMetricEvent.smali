.class public Lcom/amazon/client/metrics/thirdparty/NullMetricEvent;
.super Ljava/lang/Object;
.source "NullMetricEvent.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/MetricEvent;


# instance fields
.field private final mMetricEventType:Lcom/amazon/client/metrics/thirdparty/MetricEventType;

.field private final mProgram:Ljava/lang/String;

.field private final mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/NullMetricEvent;->mProgram:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/NullMetricEvent;->mSource:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/amazon/client/metrics/thirdparty/NullMetricEvent;->mMetricEventType:Lcom/amazon/client/metrics/thirdparty/MetricEventType;

    return-void
.end method


# virtual methods
.method public addCounter(Ljava/lang/String;D)V
    .locals 0

    return-void
.end method

.method public addDataPoint(Lcom/amazon/client/metrics/thirdparty/DataPoint;)V
    .locals 0

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

.method public appendString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public getAnonymous()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAsDataPoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/DataPoint;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public getNonAnonymousCustomerId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNonAnonymousSessionId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgram()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/NullMetricEvent;->mProgram:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/NullMetricEvent;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public incrementCounter(Ljava/lang/String;D)V
    .locals 0

    return-void
.end method

.method public setAnonymous(Z)V
    .locals 0

    return-void
.end method

.method public setNonAnonymousCustomerId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setNonAnonymousSessionId(Ljava/lang/String;)V
    .locals 0

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
