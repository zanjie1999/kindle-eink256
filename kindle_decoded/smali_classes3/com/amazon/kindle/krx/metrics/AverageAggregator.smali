.class public Lcom/amazon/kindle/krx/metrics/AverageAggregator;
.super Ljava/lang/Object;
.source "AverageAggregator.java"

# interfaces
.implements Lcom/amazon/kindle/krx/metrics/IMetricsAggregator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aggregate(Ljava/util/List;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;",
            ">;)J"
        }
    .end annotation

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;

    int-to-long v3, v1

    .line 18
    invoke-virtual {v2}, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->getDifference()J

    move-result-wide v1

    add-long/2addr v3, v1

    long-to-int v1, v3

    goto :goto_0

    .line 21
    :cond_0
    div-int/2addr v1, v0

    int-to-long v0, v1

    return-wide v0
.end method
