.class public Lcom/amazon/sitb/android/metrics/MetricEvent;
.super Ljava/lang/Object;
.source "MetricEvent.java"


# instance fields
.field private clockService:Lcom/amazon/sitb/android/services/ClockService;

.field private counters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private customAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startedTimers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/sitb/android/Metric;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private stoppedTimers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/services/ClockService;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/sitb/android/metrics/MetricEvent;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    .line 25
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/sitb/android/metrics/MetricEvent;->counters:Ljava/util/Map;

    .line 26
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/sitb/android/metrics/MetricEvent;->customAttributes:Ljava/util/Map;

    .line 27
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/sitb/android/metrics/MetricEvent;->startedTimers:Ljava/util/Map;

    .line 28
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/sitb/android/metrics/MetricEvent;->stoppedTimers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addCounter(Lcom/amazon/sitb/android/Metric;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/amazon/sitb/android/metrics/MetricEvent;->counters:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/Metric;->getMetricName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/amazon/sitb/android/metrics/MetricEvent;->counters:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/Metric;->getMetricName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addString(Lcom/amazon/sitb/android/Metric;Ljava/lang/String;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/sitb/android/metrics/MetricEvent;->customAttributes:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/Metric;->getMetricName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCounters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/amazon/sitb/android/metrics/MetricEvent;->counters:Ljava/util/Map;

    return-object v0
.end method

.method public getCustomAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/amazon/sitb/android/metrics/MetricEvent;->customAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public getTimers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/amazon/sitb/android/metrics/MetricEvent;->stoppedTimers:Ljava/util/Map;

    return-object v0
.end method

.method public startTimer(Lcom/amazon/sitb/android/Metric;)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/amazon/sitb/android/metrics/MetricEvent;->startedTimers:Ljava/util/Map;

    iget-object v1, p0, Lcom/amazon/sitb/android/metrics/MetricEvent;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    invoke-virtual {v1}, Lcom/amazon/sitb/android/services/ClockService;->now()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public stopTimer(Lcom/amazon/sitb/android/Metric;)V
    .locals 6

    .line 38
    iget-object v0, p0, Lcom/amazon/sitb/android/metrics/MetricEvent;->startedTimers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 41
    iget-object v1, p0, Lcom/amazon/sitb/android/metrics/MetricEvent;->stoppedTimers:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/Metric;->getMetricName()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/sitb/android/metrics/MetricEvent;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    invoke-virtual {v2}, Lcom/amazon/sitb/android/services/ClockService;->now()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
