.class public Lcom/amazon/client/metrics/common/internal/android/AndroidClickStreamMetricsEvent;
.super Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidGenericClickStreamMetricEvent;
.source "AndroidClickStreamMetricsEvent.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/ClickStreamMetricsEvent;


# instance fields
.field private final mDelegateThirdPartyClickStreamsMetricEvent:Lcom/amazon/client/metrics/thirdparty/ClickStreamMetricsEvent;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/ClickStreamMetricsEvent;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidGenericClickStreamMetricEvent;-><init>(Lcom/amazon/client/metrics/thirdparty/clickstream/GenericClickStreamMetricEvent;)V

    .line 36
    iput-object p1, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidClickStreamMetricsEvent;->mDelegateThirdPartyClickStreamsMetricEvent:Lcom/amazon/client/metrics/thirdparty/ClickStreamMetricsEvent;

    return-void
.end method


# virtual methods
.method public getDelegateMetricEvent()Lcom/amazon/client/metrics/thirdparty/ClickStreamMetricsEvent;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidClickStreamMetricsEvent;->mDelegateThirdPartyClickStreamsMetricEvent:Lcom/amazon/client/metrics/thirdparty/ClickStreamMetricsEvent;

    return-object v0
.end method

.method public bridge synthetic getDelegateMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/internal/android/AndroidClickStreamMetricsEvent;->getDelegateMetricEvent()Lcom/amazon/client/metrics/thirdparty/ClickStreamMetricsEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDelegateMetricEvent()Lcom/amazon/client/metrics/thirdparty/clickstream/GenericClickStreamMetricEvent;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/internal/android/AndroidClickStreamMetricsEvent;->getDelegateMetricEvent()Lcom/amazon/client/metrics/thirdparty/ClickStreamMetricsEvent;

    move-result-object v0

    return-object v0
.end method

.method public setUsageInfo(Lcom/amazon/client/metrics/common/clickstream/UsageInfo;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidClickStreamMetricsEvent;->mDelegateThirdPartyClickStreamsMetricEvent:Lcom/amazon/client/metrics/thirdparty/ClickStreamMetricsEvent;

    .line 42
    invoke-static {p1}, Lcom/amazon/client/metrics/common/clickstream/ClickStreamDataConverter;->convertUsageInfo_fromCommonToThirdParty(Lcom/amazon/client/metrics/common/clickstream/UsageInfo;)Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;

    move-result-object p1

    .line 41
    invoke-interface {v0, p1}, Lcom/amazon/client/metrics/thirdparty/ClickStreamMetricsEvent;->setUsageInfo(Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;)V

    return-void
.end method
