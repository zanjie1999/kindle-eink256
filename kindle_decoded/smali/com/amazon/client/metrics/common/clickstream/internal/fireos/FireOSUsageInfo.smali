.class public Lcom/amazon/client/metrics/common/clickstream/internal/fireos/FireOSUsageInfo;
.super Ljava/lang/Object;
.source "FireOSUsageInfo.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/clickstream/internal/IUsageInfo;


# instance fields
.field private final mDelegateFirstPartyUsageInfo:Lcom/amazon/client/metrics/clickstream/UsageInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/amazon/client/metrics/clickstream/UsageInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/client/metrics/clickstream/UsageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/common/clickstream/internal/fireos/FireOSUsageInfo;->mDelegateFirstPartyUsageInfo:Lcom/amazon/client/metrics/clickstream/UsageInfo;

    return-void
.end method


# virtual methods
.method public getDelegateUsageInfo()Lcom/amazon/client/metrics/clickstream/UsageInfo;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/amazon/client/metrics/common/clickstream/internal/fireos/FireOSUsageInfo;->mDelegateFirstPartyUsageInfo:Lcom/amazon/client/metrics/clickstream/UsageInfo;

    return-object v0
.end method

.method public setASINData(Lcom/amazon/client/metrics/common/clickstream/ASINData;)Lcom/amazon/client/metrics/common/clickstream/UsageInfo;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setSubPageType(Ljava/lang/String;)Lcom/amazon/client/metrics/common/clickstream/UsageInfo;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/client/metrics/common/clickstream/internal/fireos/FireOSUsageInfo;->mDelegateFirstPartyUsageInfo:Lcom/amazon/client/metrics/clickstream/UsageInfo;

    invoke-virtual {v0, p1}, Lcom/amazon/client/metrics/clickstream/UsageInfo;->setSubPageType(Ljava/lang/String;)Lcom/amazon/client/metrics/clickstream/UsageInfo;

    const/4 p1, 0x0

    return-object p1
.end method
