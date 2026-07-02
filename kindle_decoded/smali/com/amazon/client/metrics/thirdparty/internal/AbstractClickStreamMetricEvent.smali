.class public abstract Lcom/amazon/client/metrics/thirdparty/internal/AbstractClickStreamMetricEvent;
.super Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;
.source "AbstractClickStreamMetricEvent.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/clickstream/GenericClickStreamMetricEvent;


# instance fields
.field private final mInfoStructures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/client/metrics/thirdparty/clickstream/ClickStreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;Z)V

    .line 28
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/internal/AbstractClickStreamMetricEvent;->mInfoStructures:Ljava/util/Map;

    .line 41
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamHelper;->generateRequestId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/internal/AbstractClickStreamMetricEvent;->mRequestId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addClickStreamInfo(Lcom/amazon/client/metrics/thirdparty/clickstream/ClickStreamInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/AbstractClickStreamMetricEvent;->mInfoStructures:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getAsDataPoints()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/DataPoint;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-super {p0}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;->getAsDataPoints()Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/internal/AbstractClickStreamMetricEvent;->getClickStreamInfo()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/client/metrics/thirdparty/clickstream/ClickStreamInfo;

    .line 95
    invoke-static {v0, v2}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamHelper;->addDatapointsToList(Ljava/util/List;Lcom/amazon/client/metrics/thirdparty/clickstream/ClickStreamInfo;)V

    goto :goto_0

    .line 98
    :cond_0
    new-instance v1, Lcom/amazon/client/metrics/thirdparty/DataPoint;

    sget-object v2, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->REQUEST_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    invoke-virtual {v2}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/internal/AbstractClickStreamMetricEvent;->mRequestId:Ljava/lang/String;

    sget-object v4, Lcom/amazon/client/metrics/thirdparty/DataPointType;->DV:Lcom/amazon/client/metrics/thirdparty/DataPointType;

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/amazon/client/metrics/thirdparty/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/client/metrics/thirdparty/DataPointType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getClickStreamInfo()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/client/metrics/thirdparty/clickstream/ClickStreamInfo;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/AbstractClickStreamMetricEvent;->mInfoStructures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public removeClickStreamInfo(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/client/metrics/thirdparty/clickstream/ClickStreamInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/AbstractClickStreamMetricEvent;->mInfoStructures:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
