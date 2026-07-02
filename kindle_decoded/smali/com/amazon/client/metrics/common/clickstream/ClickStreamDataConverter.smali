.class public Lcom/amazon/client/metrics/common/clickstream/ClickStreamDataConverter;
.super Ljava/lang/Object;
.source "ClickStreamDataConverter.java"


# static fields
.field private static final CLICKSTREAM_INGO_SIMPLE_CLASS_NAME:Ljava/lang/String; = "ClickStreamInfo"

.field private static final ECOMMERCE_INFO_SIMPLE_CLASS_NAME:Ljava/lang/String; = "ECommerceInfo"

.field private static final EVENT_BASED_USAGE_SIMPLE_CLASS_NAME:Ljava/lang/String; = "EventBasedUsageInfo"

.field private static final IMPRESSION_TRACKING_DATA_SIMPLE_CLASS_NAME:Ljava/lang/String; = "ImpressionTrackingData"

.field private static final USAGE_INGO_SIMPLE_CLASS_NAME:Ljava/lang/String; = "UsageInfo"

.field private static final WEBLAB_INGO_SIMPLE_CLASS_NAME:Ljava/lang/String; = "WeblabInfo"


# direct methods
.method public static convertUsageInfo_fromCommonToFirstParty(Lcom/amazon/client/metrics/common/clickstream/UsageInfo;)Lcom/amazon/client/metrics/clickstream/UsageInfo;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "convertUsageInfo"

    if-nez p0, :cond_0

    const-string p0, "Returning null for null Common UsageInfo input"

    .line 91
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/clickstream/UsageInfo;->getDelegateUsageInfo()Lcom/amazon/client/metrics/common/clickstream/internal/IUsageInfo;

    move-result-object p0

    .line 96
    instance-of v2, p0, Lcom/amazon/client/metrics/common/clickstream/internal/fireos/FireOSUsageInfo;

    if-eqz v2, :cond_1

    .line 97
    check-cast p0, Lcom/amazon/client/metrics/common/clickstream/internal/fireos/FireOSUsageInfo;

    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/clickstream/internal/fireos/FireOSUsageInfo;->getDelegateUsageInfo()Lcom/amazon/client/metrics/clickstream/UsageInfo;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Returning null for UsageInfo that does not delegate tasks to FirstParty UsageInfo"

    .line 100
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static convertUsageInfo_fromCommonToThirdParty(Lcom/amazon/client/metrics/common/clickstream/UsageInfo;)Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "convertUsageInfo"

    if-nez p0, :cond_0

    const-string p0, "Returning null for null Common UsageInfo input"

    .line 134
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/clickstream/UsageInfo;->getDelegateUsageInfo()Lcom/amazon/client/metrics/common/clickstream/internal/IUsageInfo;

    move-result-object p0

    .line 139
    instance-of v2, p0, Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidUsageInfo;

    if-eqz v2, :cond_1

    .line 140
    check-cast p0, Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidUsageInfo;

    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidUsageInfo;->getDelegateUsageInfo()Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Returning null for UsageInfo that does not delegate tasks to ThirdParty UsageInfo"

    .line 143
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
