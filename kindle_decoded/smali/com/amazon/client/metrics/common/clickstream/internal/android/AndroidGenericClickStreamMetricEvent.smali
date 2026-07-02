.class public Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidGenericClickStreamMetricEvent;
.super Lcom/amazon/client/metrics/common/internal/android/AndroidMetricEvent;
.source "AndroidGenericClickStreamMetricEvent.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/clickstream/GenericClickStreamMetricEvent;


# instance fields
.field private final mDelegateThirdPartyGenericClickStreamMetricEvent:Lcom/amazon/client/metrics/thirdparty/clickstream/GenericClickStreamMetricEvent;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/clickstream/GenericClickStreamMetricEvent;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricEvent;-><init>(Lcom/amazon/client/metrics/thirdparty/MetricEvent;)V

    .line 37
    iput-object p1, p0, Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidGenericClickStreamMetricEvent;->mDelegateThirdPartyGenericClickStreamMetricEvent:Lcom/amazon/client/metrics/thirdparty/clickstream/GenericClickStreamMetricEvent;

    return-void
.end method


# virtual methods
.method public bridge synthetic getDelegateMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidGenericClickStreamMetricEvent;->getDelegateMetricEvent()Lcom/amazon/client/metrics/thirdparty/clickstream/GenericClickStreamMetricEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateMetricEvent()Lcom/amazon/client/metrics/thirdparty/clickstream/GenericClickStreamMetricEvent;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidGenericClickStreamMetricEvent;->mDelegateThirdPartyGenericClickStreamMetricEvent:Lcom/amazon/client/metrics/thirdparty/clickstream/GenericClickStreamMetricEvent;

    return-object v0
.end method
