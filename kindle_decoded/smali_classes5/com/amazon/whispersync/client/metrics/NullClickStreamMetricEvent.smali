.class public Lcom/amazon/whispersync/client/metrics/NullClickStreamMetricEvent;
.super Lcom/amazon/whispersync/client/metrics/NullMetricEvent;
.source "NullClickStreamMetricEvent.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/ClickStreamMetricsEvent;


# instance fields
.field private mCustomerId:Ljava/lang/String;

.field private mRequestId:Ljava/lang/String;

.field private mSessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/MetricEventType;->getDefault()Lcom/amazon/whispersync/client/metrics/MetricEventType;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/whispersync/client/metrics/NullClickStreamMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)V

    const-string p1, " "

    .line 15
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/NullClickStreamMetricEvent;->mRequestId:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/NullClickStreamMetricEvent;->mSessionId:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/NullClickStreamMetricEvent;->mCustomerId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)V

    return-void
.end method


# virtual methods
.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/NullClickStreamMetricEvent;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public setECommerceInfo(Lcom/amazon/whispersync/client/metrics/clickstream/ECommerceInfo;)V
    .locals 0

    return-void
.end method

.method public setImpressionTrackingData(Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;)V
    .locals 0

    return-void
.end method

.method public setUsageInfo(Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;)V
    .locals 0

    return-void
.end method

.method public validateMetricEvent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
