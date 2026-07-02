.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;
.super Ljava/lang/Object;
.source "DiscoveredSmartHomeProvisioneeResponse.java"


# instance fields
.field private final mCanProceed:Z

.field private final mProvisionerReportUrl:Ljava/lang/String;

.field private final mWaitTimeMs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ZJ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;->mProvisionerReportUrl:Ljava/lang/String;

    .line 13
    iput-boolean p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;->mCanProceed:Z

    .line 14
    iput-wide p3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;->mWaitTimeMs:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 34
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 37
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;

    .line 38
    iget-boolean v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;->mCanProceed:Z

    iget-boolean v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;->mCanProceed:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;->mProvisionerReportUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;->mProvisionerReportUrl:Ljava/lang/String;

    .line 39
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;->mWaitTimeMs:J

    .line 40
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;->mWaitTimeMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getProvisionerReportUrl()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;->mProvisionerReportUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWaitTimeMs()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;->mWaitTimeMs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;->mProvisionerReportUrl:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;->mCanProceed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;->mWaitTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCanProceed()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;->mCanProceed:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 50
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;->mProvisionerReportUrl:Ljava/lang/String;

    const-string v2, "mProvisionerReportUrl"

    .line 51
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;->mCanProceed:Z

    const-string v2, "mCanProceed"

    .line 52
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;->mWaitTimeMs:J

    const-string v3, "mWaitTimeMs"

    .line 53
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    .line 54
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
