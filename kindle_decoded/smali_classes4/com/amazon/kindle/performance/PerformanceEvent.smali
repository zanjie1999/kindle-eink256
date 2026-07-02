.class public Lcom/amazon/kindle/performance/PerformanceEvent;
.super Ljava/lang/Object;
.source "PerformanceEvent.java"


# instance fields
.field private final isStart:Z

.field private final metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final metric:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

.field private final timeStamp:J


# direct methods
.method constructor <init>(Lcom/amazon/kindle/performance/KindlePerformanceConstants;JZLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/performance/KindlePerformanceConstants;",
            "JZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/kindle/performance/PerformanceEvent;->metric:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    .line 21
    iput-wide p2, p0, Lcom/amazon/kindle/performance/PerformanceEvent;->timeStamp:J

    .line 22
    iput-boolean p4, p0, Lcom/amazon/kindle/performance/PerformanceEvent;->isStart:Z

    .line 23
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/amazon/kindle/performance/PerformanceEvent;->metadata:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getMetadata()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amazon/kindle/performance/PerformanceEvent;->metadata:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getMetric()Lcom/amazon/kindle/performance/KindlePerformanceConstants;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/performance/PerformanceEvent;->metric:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/amazon/kindle/performance/PerformanceEvent;->timeStamp:J

    return-wide v0
.end method

.method public isStart()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/amazon/kindle/performance/PerformanceEvent;->isStart:Z

    return v0
.end method
