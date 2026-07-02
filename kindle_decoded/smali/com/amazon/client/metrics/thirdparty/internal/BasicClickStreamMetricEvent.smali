.class public Lcom/amazon/client/metrics/thirdparty/internal/BasicClickStreamMetricEvent;
.super Lcom/amazon/client/metrics/thirdparty/internal/AbstractClickStreamMetricEvent;
.source "BasicClickStreamMetricEvent.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/ClickStreamMetricsEvent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/client/metrics/thirdparty/internal/AbstractClickStreamMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;Z)V

    return-void
.end method


# virtual methods
.method public setUsageInfo(Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;)V
    .locals 0

    if-nez p1, :cond_0

    .line 32
    const-class p1, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/internal/AbstractClickStreamMetricEvent;->removeClickStreamInfo(Ljava/lang/Class;)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/internal/AbstractClickStreamMetricEvent;->addClickStreamInfo(Lcom/amazon/client/metrics/thirdparty/clickstream/ClickStreamInfo;)V

    :goto_0
    return-void
.end method
