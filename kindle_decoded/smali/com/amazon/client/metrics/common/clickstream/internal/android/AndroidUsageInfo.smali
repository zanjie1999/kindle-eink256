.class public Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidUsageInfo;
.super Ljava/lang/Object;
.source "AndroidUsageInfo.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/clickstream/internal/IUsageInfo;


# instance fields
.field private final mDelegateThirdPartyUsageInfo:Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidUsageInfo;->mDelegateThirdPartyUsageInfo:Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;

    return-void
.end method


# virtual methods
.method public getDelegateUsageInfo()Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidUsageInfo;->mDelegateThirdPartyUsageInfo:Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;

    return-object v0
.end method

.method public setASINData(Lcom/amazon/client/metrics/common/clickstream/ASINData;)Lcom/amazon/client/metrics/common/clickstream/UsageInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    invoke-static {p1}, Lcom/amazon/client/metrics/common/clickstream/ASINDataConverter;->convertCommonToThirdParty(Lcom/amazon/client/metrics/common/clickstream/ASINData;)Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidUsageInfo;->mDelegateThirdPartyUsageInfo:Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;

    invoke-virtual {v0, p1}, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->setASINData(Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;)Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setSubPageType(Ljava/lang/String;)Lcom/amazon/client/metrics/common/clickstream/UsageInfo;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidUsageInfo;->mDelegateThirdPartyUsageInfo:Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;

    invoke-virtual {v0, p1}, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->setSubPageType(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;

    const/4 p1, 0x0

    return-object p1
.end method
