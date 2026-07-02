.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;
.super Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;
.source "DiscoveredProvisionableDeviceRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;
    }
.end annotation


# instance fields
.field private final mAdvertisedSdkVersionIndex:I

.field private final mAuthMaterialIndex:Ljava/lang/String;

.field private final mDeviceName:Ljava/lang/String;

.field private final mNonce:Ljava/lang/String;

.field private final mProductIndex:Ljava/lang/String;

.field private final mProvisionerApplicationName:Ljava/lang/String;

.field private final mProvisionerApplicationVersion:Ljava/lang/String;

.field private final mProvisioningMethod:Ljava/lang/String;

.field private final mRadio:Ljava/lang/String;

.field private final mRssi:I

.field private final mSoftwareVersionIndex:Ljava/lang/String;

.field private final mTrustMethod:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;-><init>()V

    const-string v0, "BluetoothLowEnergy"

    .line 15
    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mRadio:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProvisionerApplicationName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProvisionerApplicationVersion:Ljava/lang/String;

    .line 48
    iput p3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mRssi:I

    .line 49
    iput-object p4, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProductIndex:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mSoftwareVersionIndex:Ljava/lang/String;

    .line 51
    iput-object p6, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mAuthMaterialIndex:Ljava/lang/String;

    .line 52
    iput-object p7, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mNonce:Ljava/lang/String;

    .line 53
    iput-object p8, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mDeviceName:Ljava/lang/String;

    .line 54
    iput-object p9, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProvisioningMethod:Ljava/lang/String;

    .line 55
    iput-object p10, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mTrustMethod:Ljava/lang/String;

    .line 56
    iput-object p11, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 57
    iput p12, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mAdvertisedSdkVersionIndex:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;ILcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$1;)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p12}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;I)V

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

    .line 132
    const-class v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 135
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;

    .line 136
    iget v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mRssi:I

    iget v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mRssi:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProvisionerApplicationName:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProvisionerApplicationName:Ljava/lang/String;

    .line 137
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProvisionerApplicationVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProvisionerApplicationVersion:Ljava/lang/String;

    .line 138
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "BluetoothLowEnergy"

    .line 139
    invoke-static {v2, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProductIndex:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProductIndex:Ljava/lang/String;

    .line 140
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mSoftwareVersionIndex:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mSoftwareVersionIndex:Ljava/lang/String;

    .line 141
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mAuthMaterialIndex:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mAuthMaterialIndex:Ljava/lang/String;

    .line 142
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mNonce:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mNonce:Ljava/lang/String;

    .line 143
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mDeviceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mDeviceName:Ljava/lang/String;

    .line 144
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProvisioningMethod:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProvisioningMethod:Ljava/lang/String;

    .line 145
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mTrustMethod:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mTrustMethod:Ljava/lang/String;

    .line 146
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 147
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mAdvertisedSdkVersionIndex:I

    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mAdvertisedSdkVersionIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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

.method public getAdvertisedSdkVersionIndex()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mAdvertisedSdkVersionIndex:I

    return v0
.end method

.method public getAuthMaterialIndex()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mAuthMaterialIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getProductIndex()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProductIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisionerApplicationName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProvisionerApplicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisionerApplicationVersion()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProvisionerApplicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisioningMethod()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProvisioningMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getRadio()Ljava/lang/String;
    .locals 1

    const-string v0, "BluetoothLowEnergy"

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mRssi:I

    return v0
.end method

.method public getSoftwareVersionIndex()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mSoftwareVersionIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustMethod()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mTrustMethod:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    .line 153
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProvisionerApplicationName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProvisionerApplicationVersion:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "BluetoothLowEnergy"

    aput-object v2, v0, v1

    iget v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProductIndex:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mSoftwareVersionIndex:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mAuthMaterialIndex:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mNonce:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mDeviceName:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProvisioningMethod:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mTrustMethod:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mAdvertisedSdkVersionIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 110
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProvisionerApplicationName:Ljava/lang/String;

    const-string v2, "mProvisionerApplicationName"

    .line 111
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProvisionerApplicationVersion:Ljava/lang/String;

    const-string v2, "mProvisionerApplicationVersion"

    .line 112
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "mRadio"

    const-string v2, "BluetoothLowEnergy"

    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mRssi:I

    const-string v2, "mRssi"

    .line 114
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProductIndex:Ljava/lang/String;

    const-string v2, "mProductIndex"

    .line 115
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mSoftwareVersionIndex:Ljava/lang/String;

    const-string v2, "mSoftwareVersionIndex"

    .line 116
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mAuthMaterialIndex:Ljava/lang/String;

    const-string v2, "mAuthMaterialIndex"

    .line 117
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mNonce:Ljava/lang/String;

    const-string v2, "mNonce"

    .line 118
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mDeviceName:Ljava/lang/String;

    const-string v2, "mDeviceName"

    .line 119
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mProvisioningMethod:Ljava/lang/String;

    const-string v2, "mProvisioningMethod"

    .line 120
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mTrustMethod:Ljava/lang/String;

    const-string v2, "mTrustMethod"

    .line 121
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    const-string v2, "mProvisionerInfo"

    .line 122
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->mAdvertisedSdkVersionIndex:I

    const-string v2, "mAdvertisedSdkVersionIndex"

    .line 123
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 124
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
