.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;
.super Ljava/lang/Object;
.source "ProvisionerClientData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mClientAppName:Ljava/lang/String;

.field private mClientAppVersion:Ljava/lang/String;

.field private mCustomerEcid:Ljava/lang/String;

.field private mDeviceFirmwareVersion:Ljava/lang/String;

.field private mDeviceManufacturer:Ljava/lang/String;

.field private mDeviceModel:Ljava/lang/String;

.field private mDeviceSerialNumber:Ljava/lang/String;

.field private mMarketplace:Ljava/lang/String;

.field private mMetricsDeviceGroup:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createProvisionerClientData()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;
    .locals 11

    .line 201
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mClientAppName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 204
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mClientAppVersion:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 207
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mDeviceManufacturer:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 210
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mDeviceModel:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 213
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mDeviceSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mDeviceFirmwareVersion:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mMarketplace:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mMetricsDeviceGroup:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mClientAppName:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mClientAppVersion:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mDeviceManufacturer:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mDeviceModel:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mDeviceSerialNumber:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mDeviceFirmwareVersion:Ljava/lang/String;

    iget-object v8, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mMarketplace:Ljava/lang/String;

    iget-object v9, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mMetricsDeviceGroup:Ljava/lang/String;

    iget-object v10, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mCustomerEcid:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mMetricsDeviceGroup can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mMarketplace can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mDeviceFirmwareVersion can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mDeviceSerialNumber can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mDeviceModel can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mDeviceManufacturer can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mClientAppVersion can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mClientAppName can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClientAppName(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mClientAppName:Ljava/lang/String;

    return-object p0
.end method

.method public setClientAppVersion(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mClientAppVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setCustomerEcid(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mCustomerEcid:Ljava/lang/String;

    return-object p0
.end method

.method public setDeviceFirmwareVersion(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mDeviceFirmwareVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setDeviceManufacturer(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mDeviceManufacturer:Ljava/lang/String;

    return-object p0
.end method

.method public setDeviceModel(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mDeviceModel:Ljava/lang/String;

    return-object p0
.end method

.method public setDeviceSerialNumber(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mDeviceSerialNumber:Ljava/lang/String;

    return-object p0
.end method

.method public setMarketplace(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mMarketplace:Ljava/lang/String;

    return-object p0
.end method

.method public setMetricsDeviceGroup(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->mMetricsDeviceGroup:Ljava/lang/String;

    return-object p0
.end method
