.class public Lcom/amazon/client/metrics/common/internal/fireos/FireOSClickStreamMetricsEvent;
.super Lcom/amazon/client/metrics/common/clickstream/internal/fireos/FireOSGenericClickStreamMetricEvent;
.source "FireOSClickStreamMetricsEvent.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/ClickStreamMetricsEvent;


# instance fields
.field private final mDelegateFirstPartyClickStreamsMetricEvent:Lcom/amazon/client/metrics/ClickStreamMetricsEvent;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/ClickStreamMetricsEvent;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/common/clickstream/internal/fireos/FireOSGenericClickStreamMetricEvent;-><init>(Lcom/amazon/client/metrics/clickstream/GenericClickStreamMetricEvent;)V

    .line 36
    iput-object p1, p0, Lcom/amazon/client/metrics/common/internal/fireos/FireOSClickStreamMetricsEvent;->mDelegateFirstPartyClickStreamsMetricEvent:Lcom/amazon/client/metrics/ClickStreamMetricsEvent;

    return-void
.end method


# virtual methods
.method public getDelegateMetricEvent()Lcom/amazon/client/metrics/ClickStreamMetricsEvent;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/fireos/FireOSClickStreamMetricsEvent;->mDelegateFirstPartyClickStreamsMetricEvent:Lcom/amazon/client/metrics/ClickStreamMetricsEvent;

    return-object v0
.end method

.method public bridge synthetic getDelegateMetricEvent()Lcom/amazon/client/metrics/MetricEvent;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/internal/fireos/FireOSClickStreamMetricsEvent;->getDelegateMetricEvent()Lcom/amazon/client/metrics/ClickStreamMetricsEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDelegateMetricEvent()Lcom/amazon/client/metrics/clickstream/GenericClickStreamMetricEvent;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/internal/fireos/FireOSClickStreamMetricsEvent;->getDelegateMetricEvent()Lcom/amazon/client/metrics/ClickStreamMetricsEvent;

    move-result-object v0

    return-object v0
.end method

.method public setUsageInfo(Lcom/amazon/client/metrics/common/clickstream/UsageInfo;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/fireos/FireOSClickStreamMetricsEvent;->mDelegateFirstPartyClickStreamsMetricEvent:Lcom/amazon/client/metrics/ClickStreamMetricsEvent;

    .line 42
    invoke-static {p1}, Lcom/amazon/client/metrics/common/clickstream/ClickStreamDataConverter;->convertUsageInfo_fromCommonToFirstParty(Lcom/amazon/client/metrics/common/clickstream/UsageInfo;)Lcom/amazon/client/metrics/clickstream/UsageInfo;

    move-result-object p1

    .line 41
    invoke-interface {v0, p1}, Lcom/amazon/client/metrics/ClickStreamMetricsEvent;->setUsageInfo(Lcom/amazon/client/metrics/clickstream/UsageInfo;)V

    return-void
.end method
