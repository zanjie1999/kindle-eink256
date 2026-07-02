.class public Lcom/amazon/whisperjoin/metrics/MetricTimerWrapper;
.super Ljava/lang/Object;
.source "MetricTimerWrapper.java"


# instance fields
.field private final mProfilerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/whisperjoin/metrics/MetricTimer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/metrics/MetricTimerWrapper;->mProfilerMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getMetricTimer()Lcom/amazon/whisperjoin/metrics/MetricTimer;
    .locals 1

    .line 24
    new-instance v0, Lcom/amazon/whisperjoin/metrics/MetricTimer;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/metrics/MetricTimer;-><init>()V

    return-object v0
.end method

.method public getMetricTimerFromProfilerMap(Ljava/lang/String;)Lcom/amazon/whisperjoin/metrics/MetricTimer;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/whisperjoin/metrics/MetricTimerWrapper;->mProfilerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/metrics/MetricTimer;

    return-object p1
.end method

.method public storeMetricTimerInProfilerMap(Ljava/lang/String;Lcom/amazon/whisperjoin/metrics/MetricTimer;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/whisperjoin/metrics/MetricTimerWrapper;->mProfilerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
