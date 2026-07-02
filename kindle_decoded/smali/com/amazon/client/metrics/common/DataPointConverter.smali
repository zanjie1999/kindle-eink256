.class public Lcom/amazon/client/metrics/common/DataPointConverter;
.super Ljava/lang/Object;
.source "DataPointConverter.java"


# direct methods
.method public static convertCommonToFirstParty(Lcom/amazon/client/metrics/common/DataPoint;)Lcom/amazon/client/metrics/DataPoint;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/DataPoint;->getDelegateDataPoint()Lcom/amazon/client/metrics/common/internal/IDataPoint;

    move-result-object p0

    .line 242
    instance-of v1, p0, Lcom/amazon/client/metrics/common/internal/fireos/FireOSDataPoint;

    if-eqz v1, :cond_1

    .line 243
    check-cast p0, Lcom/amazon/client/metrics/common/internal/fireos/FireOSDataPoint;

    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/internal/fireos/FireOSDataPoint;->getDelegateDataPoint()Lcom/amazon/client/metrics/DataPoint;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static convertCommonToThirdParty(Lcom/amazon/client/metrics/common/DataPoint;)Lcom/amazon/client/metrics/thirdparty/DataPoint;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/DataPoint;->getDelegateDataPoint()Lcom/amazon/client/metrics/common/internal/IDataPoint;

    move-result-object p0

    .line 296
    instance-of v1, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidDataPoint;

    if-eqz v1, :cond_1

    .line 297
    check-cast p0, Lcom/amazon/client/metrics/common/internal/android/AndroidDataPoint;

    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/internal/android/AndroidDataPoint;->getDelegateDataPoint()Lcom/amazon/client/metrics/thirdparty/DataPoint;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method
