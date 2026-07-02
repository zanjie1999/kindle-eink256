.class public Lcom/amazon/kindle/krx/metrics/TP90Aggregator;
.super Ljava/lang/Object;
.source "TP90Aggregator.java"

# interfaces
.implements Lcom/amazon/kindle/krx/metrics/IMetricsAggregator;


# static fields
.field public static final TP90:D = 0.9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aggregate(Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;",
            ">;)J"
        }
    .end annotation

    .line 21
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 23
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;

    .line 24
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->getDifference()J

    move-result-wide v0

    return-wide v0
.end method
