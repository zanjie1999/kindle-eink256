.class public Lcom/amazon/client/metrics/common/clickstream/UsageInfo;
.super Ljava/lang/Object;
.source "UsageInfo.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/clickstream/internal/IUsageInfo;


# instance fields
.field private final mDelegateUsageInfo:Lcom/amazon/client/metrics/common/clickstream/internal/IUsageInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->getInstance()Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->isDevicePlatformFireOS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lcom/amazon/client/metrics/common/clickstream/internal/fireos/FireOSUsageInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/client/metrics/common/clickstream/internal/fireos/FireOSUsageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/common/clickstream/UsageInfo;->mDelegateUsageInfo:Lcom/amazon/client/metrics/common/clickstream/internal/IUsageInfo;

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidUsageInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidUsageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/common/clickstream/UsageInfo;->mDelegateUsageInfo:Lcom/amazon/client/metrics/common/clickstream/internal/IUsageInfo;

    :goto_0
    return-void
.end method


# virtual methods
.method getDelegateUsageInfo()Lcom/amazon/client/metrics/common/clickstream/internal/IUsageInfo;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/amazon/client/metrics/common/clickstream/UsageInfo;->mDelegateUsageInfo:Lcom/amazon/client/metrics/common/clickstream/internal/IUsageInfo;

    return-object v0
.end method

.method public setASINData(Lcom/amazon/client/metrics/common/clickstream/ASINData;)Lcom/amazon/client/metrics/common/clickstream/UsageInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/amazon/client/metrics/common/clickstream/UsageInfo;->mDelegateUsageInfo:Lcom/amazon/client/metrics/common/clickstream/internal/IUsageInfo;

    invoke-interface {v0, p1}, Lcom/amazon/client/metrics/common/clickstream/internal/IUsageInfo;->setASINData(Lcom/amazon/client/metrics/common/clickstream/ASINData;)Lcom/amazon/client/metrics/common/clickstream/UsageInfo;

    return-object p0
.end method

.method public setSubPageType(Ljava/lang/String;)Lcom/amazon/client/metrics/common/clickstream/UsageInfo;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/client/metrics/common/clickstream/UsageInfo;->mDelegateUsageInfo:Lcom/amazon/client/metrics/common/clickstream/internal/IUsageInfo;

    invoke-interface {v0, p1}, Lcom/amazon/client/metrics/common/clickstream/internal/IUsageInfo;->setSubPageType(Ljava/lang/String;)Lcom/amazon/client/metrics/common/clickstream/UsageInfo;

    return-object p0
.end method
