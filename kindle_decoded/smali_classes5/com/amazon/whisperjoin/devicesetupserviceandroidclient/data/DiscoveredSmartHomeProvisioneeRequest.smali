.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;
.super Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;
.source "DiscoveredSmartHomeProvisioneeRequest.java"


# instance fields
.field private final mMacAddress:Ljava/lang/String;

.field private final mProtocolType:Ljava/lang/String;

.field private final mRssi:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/devicesetupservice/v1/ProvisionerInfo;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;->mProtocolType:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;->mMacAddress:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;->mRssi:I

    .line 20
    iput-object p4, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 40
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 43
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;

    .line 44
    iget v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;->mRssi:I

    iget v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;->mRssi:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;->mProtocolType:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;->mProtocolType:Ljava/lang/String;

    .line 45
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;->mMacAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;->mMacAddress:Ljava/lang/String;

    .line 46
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    iget-object p1, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 47
    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolType()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;->mProtocolType:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;->mRssi:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 52
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;->mProtocolType:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;->mMacAddress:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;->mRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 57
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;->mProtocolType:Ljava/lang/String;

    const-string v2, "mProtocolType"

    .line 58
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;->mMacAddress:Ljava/lang/String;

    const-string v2, "mMacAddress"

    .line 59
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    iget v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;->mRssi:I

    const-string v2, "mRssi"

    .line 60
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    const-string v2, "mProvisionerInfo"

    .line 61
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 62
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
