.class public Lcom/amazon/client/metrics/common/MetricEventConverter;
.super Ljava/lang/Object;
.source "MetricEventConverter.java"


# direct methods
.method public static convertClickStreamMetricsEvent_fromFirstPartyToCommon(Lcom/amazon/client/metrics/ClickStreamMetricsEvent;)Lcom/amazon/client/metrics/common/ClickStreamMetricsEvent;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_0
    new-instance v0, Lcom/amazon/client/metrics/common/internal/fireos/FireOSClickStreamMetricsEvent;

    invoke-direct {v0, p0}, Lcom/amazon/client/metrics/common/internal/fireos/FireOSClickStreamMetricsEvent;-><init>(Lcom/amazon/client/metrics/ClickStreamMetricsEvent;)V

    return-object v0
.end method

.method public static convertClickStreamMetricsEvent_fromThirdPartyToCommon(Lcom/amazon/client/metrics/thirdparty/ClickStreamMetricsEvent;)Lcom/amazon/client/metrics/common/ClickStreamMetricsEvent;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 241
    :cond_0
    new-instance v0, Lcom/amazon/client/metrics/common/internal/android/AndroidClickStreamMetricsEvent;

    invoke-direct {v0, p0}, Lcom/amazon/client/metrics/common/internal/android/AndroidClickStreamMetricsEvent;-><init>(Lcom/amazon/client/metrics/thirdparty/ClickStreamMetricsEvent;)V

    return-object v0
.end method

.method public static convertMetricEvent_fromCommonToFirstParty(Lcom/amazon/client/metrics/common/MetricEvent;)Lcom/amazon/client/metrics/MetricEvent;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 216
    :cond_0
    instance-of v1, p0, Lcom/amazon/client/metrics/common/internal/fireos/FireOSMetricEvent;

    if-eqz v1, :cond_1

    .line 217
    check-cast p0, Lcom/amazon/client/metrics/common/internal/fireos/FireOSMetricEvent;

    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/internal/fireos/FireOSMetricEvent;->getDelegateMetricEvent()Lcom/amazon/client/metrics/MetricEvent;

    move-result-object p0

    return-object p0

    .line 220
    :cond_1
    instance-of v1, p0, Lcom/amazon/client/metrics/common/NullMetricEvent;

    if-eqz v1, :cond_2

    .line 221
    check-cast p0, Lcom/amazon/client/metrics/common/NullMetricEvent;

    invoke-static {p0}, Lcom/amazon/client/metrics/common/MetricEventConverter;->convertNullMetricEvent_fromCommonToFirstParty(Lcom/amazon/client/metrics/common/NullMetricEvent;)Lcom/amazon/client/metrics/NullMetricEvent;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static convertMetricEvent_fromCommonToThirdParty(Lcom/amazon/client/metrics/common/MetricEvent;)Lcom/amazon/client/metrics/thirdparty/MetricEvent;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 419
    :cond_0
    instance-of v1, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricEvent;

    if-eqz v1, :cond_1

    .line 420
    check-cast p0, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricEvent;

    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricEvent;->getDelegateMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object p0

    return-object p0

    .line 423
    :cond_1
    instance-of v1, p0, Lcom/amazon/client/metrics/common/NullMetricEvent;

    if-eqz v1, :cond_2

    .line 424
    check-cast p0, Lcom/amazon/client/metrics/common/NullMetricEvent;

    invoke-static {p0}, Lcom/amazon/client/metrics/common/MetricEventConverter;->convertNullMetricEvent_fromCommonToThirdParty(Lcom/amazon/client/metrics/common/NullMetricEvent;)Lcom/amazon/client/metrics/thirdparty/NullMetricEvent;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static convertMetricEvent_fromFirstPartyToCommon(Lcom/amazon/client/metrics/MetricEvent;)Lcom/amazon/client/metrics/common/MetricEvent;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 107
    :cond_0
    new-instance v0, Lcom/amazon/client/metrics/common/internal/fireos/FireOSMetricEvent;

    invoke-direct {v0, p0}, Lcom/amazon/client/metrics/common/internal/fireos/FireOSMetricEvent;-><init>(Lcom/amazon/client/metrics/MetricEvent;)V

    return-object v0
.end method

.method public static convertMetricEvent_fromThirdPartyToCommon(Lcom/amazon/client/metrics/thirdparty/MetricEvent;)Lcom/amazon/client/metrics/common/MetricEvent;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 310
    :cond_0
    new-instance v0, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricEvent;

    invoke-direct {v0, p0}, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricEvent;-><init>(Lcom/amazon/client/metrics/thirdparty/MetricEvent;)V

    return-object v0
.end method

.method public static convertNullMetricEvent_fromCommonToFirstParty(Lcom/amazon/client/metrics/common/NullMetricEvent;)Lcom/amazon/client/metrics/NullMetricEvent;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/NullMetricEvent;->getDelegateMetricEvent()Lcom/amazon/client/metrics/common/MetricEvent;

    move-result-object p0

    .line 171
    instance-of v1, p0, Lcom/amazon/client/metrics/common/internal/fireos/FireOSNullMetricEvent;

    if-eqz v1, :cond_1

    .line 172
    check-cast p0, Lcom/amazon/client/metrics/common/internal/fireos/FireOSNullMetricEvent;

    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/internal/fireos/FireOSNullMetricEvent;->getDelegateMetricEvent()Lcom/amazon/client/metrics/NullMetricEvent;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static convertNullMetricEvent_fromCommonToThirdParty(Lcom/amazon/client/metrics/common/NullMetricEvent;)Lcom/amazon/client/metrics/thirdparty/NullMetricEvent;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/NullMetricEvent;->getDelegateMetricEvent()Lcom/amazon/client/metrics/common/MetricEvent;

    move-result-object p0

    .line 374
    instance-of v1, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidNullMetricEvent;

    if-eqz v1, :cond_1

    .line 375
    check-cast p0, Lcom/amazon/client/metrics/common/internal/android/AndroidNullMetricEvent;

    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/internal/android/AndroidNullMetricEvent;->getDelegateMetricEvent()Lcom/amazon/client/metrics/thirdparty/NullMetricEvent;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method
