.class public Lcom/amazon/whispersync/client/metrics/BasicClickStreamMetricEvent;
.super Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;
.source "BasicClickStreamMetricEvent.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/ClickStreamMetricsEvent;


# instance fields
.field private mECommerceInfo:Lcom/amazon/whispersync/client/metrics/clickstream/ECommerceInfo;

.field private mImpressionTrackingData:Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;

.field private final mRequestId:Ljava/lang/String;

.field private mUsageInfo:Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/MetricEventType;->getDefault()Lcom/amazon/whispersync/client/metrics/MetricEventType;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/whispersync/client/metrics/BasicClickStreamMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/whispersync/client/metrics/BasicClickStreamMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)V

    .line 37
    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/BasicClickStreamMetricEvent;->generateRequestId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/BasicClickStreamMetricEvent;->mRequestId:Ljava/lang/String;

    return-void
.end method

.method private addDatapointsToList(Ljava/util/List;Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;",
            "Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamInfo;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-interface {p2}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamInfo;->getDataPoints()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/client/metrics/DataPoint;

    .line 98
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private generateRequestId()Ljava/lang/String;
    .locals 4

    .line 74
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 76
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Random;->setSeed(J)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x14

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x14

    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAsDataPoints()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-super {p0}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;->getAsDataPoints()Ljava/util/List;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/BasicClickStreamMetricEvent;->mUsageInfo:Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/client/metrics/BasicClickStreamMetricEvent;->addDatapointsToList(Ljava/util/List;Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamInfo;)V

    .line 86
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/BasicClickStreamMetricEvent;->mImpressionTrackingData:Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/client/metrics/BasicClickStreamMetricEvent;->addDatapointsToList(Ljava/util/List;Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamInfo;)V

    .line 87
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/BasicClickStreamMetricEvent;->mECommerceInfo:Lcom/amazon/whispersync/client/metrics/clickstream/ECommerceInfo;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/client/metrics/BasicClickStreamMetricEvent;->addDatapointsToList(Ljava/util/List;Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamInfo;)V

    .line 89
    new-instance v1, Lcom/amazon/whispersync/client/metrics/DataPoint;

    sget-object v2, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->REQUEST_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-virtual {v2}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/whispersync/client/metrics/BasicClickStreamMetricEvent;->mRequestId:Ljava/lang/String;

    sget-object v4, Lcom/amazon/whispersync/client/metrics/DataPointType;->DV:Lcom/amazon/whispersync/client/metrics/DataPointType;

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/amazon/whispersync/client/metrics/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/whispersync/client/metrics/DataPointType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicClickStreamMetricEvent;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public setECommerceInfo(Lcom/amazon/whispersync/client/metrics/clickstream/ECommerceInfo;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/BasicClickStreamMetricEvent;->mECommerceInfo:Lcom/amazon/whispersync/client/metrics/clickstream/ECommerceInfo;

    return-void
.end method

.method public setImpressionTrackingData(Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/BasicClickStreamMetricEvent;->mImpressionTrackingData:Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;

    return-void
.end method

.method public setUsageInfo(Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/BasicClickStreamMetricEvent;->mUsageInfo:Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;

    return-void
.end method

.method public validateMetricEvent()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicClickStreamMetricEvent;->mUsageInfo:Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicClickStreamMetricEvent;->mImpressionTrackingData:Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BasicClickStreamMetricEvent;->mECommerceInfo:Lcom/amazon/whispersync/client/metrics/clickstream/ECommerceInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
