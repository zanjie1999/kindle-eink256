.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;
.super Ljava/lang/Object;
.source "CreateAPForWifiProvisioneeRequest.java"


# instance fields
.field private mActiveConnectionsCount:I

.field private mDiscoveredWifiProvisionee:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;

.field private mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->mDiscoveredWifiProvisionee:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;

    .line 20
    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 21
    iput p3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->mActiveConnectionsCount:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 62
    const-class v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 65
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;

    .line 66
    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->mDiscoveredWifiProvisionee:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->getDiscoveredWifiProvisionee()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 67
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->mActiveConnectionsCount:I

    .line 68
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->getActiveConnectionsCount()I

    move-result p1

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getActiveConnectionsCount()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->mActiveConnectionsCount:I

    return v0
.end method

.method public getDiscoveredWifiProvisionee()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->mDiscoveredWifiProvisionee:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;

    return-object v0
.end method

.method public getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->mDiscoveredWifiProvisionee:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->mActiveConnectionsCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setActiveConnectionsCount(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->mActiveConnectionsCount:I

    return-void
.end method

.method public setDiscoveredWifiProvisionee(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->mDiscoveredWifiProvisionee:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;

    return-void
.end method

.method public setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 50
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->mDiscoveredWifiProvisionee:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;

    const-string v2, "discoveredWifiPrvovisionee"

    .line 51
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    const-string/jumbo v2, "provisionerInfo"

    .line 52
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->mActiveConnectionsCount:I

    const-string v2, "activeConnectionsCount"

    .line 53
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 54
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
