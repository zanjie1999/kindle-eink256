.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;
.super Ljava/lang/Object;
.source "FFSWhiteListPolicyRequest.java"


# instance fields
.field private application:Ljava/lang/String;

.field private applicationVersion:Ljava/lang/String;

.field private customerId:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private firmwareVersion:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private marketplace:Ljava/lang/String;

.field private platform:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->deviceModel:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->manufacturer:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->platform:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->firmwareVersion:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->application:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->applicationVersion:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->marketplace:Ljava/lang/String;

    .line 32
    iput-object p8, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->customerId:Ljava/lang/String;

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

    .line 118
    const-class v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 121
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;

    .line 122
    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->deviceModel:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->deviceModel:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->manufacturer:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->manufacturer:Ljava/lang/String;

    .line 123
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->firmwareVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->firmwareVersion:Ljava/lang/String;

    .line 124
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->platform:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->platform:Ljava/lang/String;

    .line 125
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->application:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->application:Ljava/lang/String;

    .line 126
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->applicationVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->applicationVersion:Ljava/lang/String;

    .line 127
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->marketplace:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->marketplace:Ljava/lang/String;

    .line 128
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->customerId:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->customerId:Ljava/lang/String;

    .line 129
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getApplication()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->application:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->applicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerId()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->customerId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->firmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketplace()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->marketplace:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->deviceModel:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->manufacturer:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->firmwareVersion:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->platform:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->application:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->applicationVersion:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->marketplace:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->customerId:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setApplication(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->application:Ljava/lang/String;

    return-void
.end method

.method public setApplicationVersion(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->applicationVersion:Ljava/lang/String;

    return-void
.end method

.method public setCustomerId(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->customerId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method public setFirmwareVersion(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->firmwareVersion:Ljava/lang/String;

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public setMarketplace(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->marketplace:Ljava/lang/String;

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->platform:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 101
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->deviceModel:Ljava/lang/String;

    const-string v2, "deviceModel"

    .line 102
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->manufacturer:Ljava/lang/String;

    const-string v2, "manufacturer"

    .line 103
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->firmwareVersion:Ljava/lang/String;

    const-string v2, "firmwareVersion"

    .line 104
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->platform:Ljava/lang/String;

    const-string/jumbo v2, "platform"

    .line 105
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->application:Ljava/lang/String;

    const-string v2, "application"

    .line 106
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->applicationVersion:Ljava/lang/String;

    const-string v2, "applicationVersion"

    .line 107
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->marketplace:Ljava/lang/String;

    const-string v2, "marketplace"

    .line 108
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->customerId:Ljava/lang/String;

    const-string v2, "customerId"

    .line 109
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 110
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
