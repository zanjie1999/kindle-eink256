.class public Lcom/amazon/client/metrics/common/clickstream/ASINDataConverter;
.super Ljava/lang/Object;
.source "ASINDataConverter.java"


# direct methods
.method public static convertCommonToThirdParty(Lcom/amazon/client/metrics/common/clickstream/ASINData;)Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/clickstream/ASINData;->getDelegateASINData()Lcom/amazon/client/metrics/common/clickstream/internal/IASINData;

    move-result-object p0

    .line 117
    instance-of v1, p0, Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidASINData;

    if-eqz v1, :cond_1

    .line 118
    check-cast p0, Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidASINData;

    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidASINData;->getDelegateASINData()Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method
