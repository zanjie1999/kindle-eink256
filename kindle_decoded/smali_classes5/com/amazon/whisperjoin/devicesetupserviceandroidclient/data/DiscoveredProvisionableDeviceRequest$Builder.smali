.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;
.super Ljava/lang/Object;
.source "DiscoveredProvisionableDeviceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAdvertisedSdkVersionIndex:I

.field private mAuthMaterialIndex:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mNonce:Ljava/lang/String;

.field private mProductIndex:Ljava/lang/String;

.field private mProvisionerApplicationName:Ljava/lang/String;

.field private mProvisionerApplicationVersion:Ljava/lang/String;

.field private mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

.field private mProvisioningMethod:Ljava/lang/String;

.field private mRssi:I

.field private mSoftwareVersionIndex:Ljava/lang/String;

.field private mTrustMethod:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private validate()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mProvisionerApplicationName:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RequestInputValidator;->validateProvisionerApplicationName(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mProvisionerApplicationVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RequestInputValidator;->validateProvisionerApplicationVersion(Ljava/lang/String;)V

    .line 247
    iget v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mRssi:I

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RequestInputValidator;->validateRSSI(I)V

    .line 248
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mProductIndex:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RequestInputValidator;->validateProductIndex(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mSoftwareVersionIndex:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RequestInputValidator;->validateSoftwareVersionIndex(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mAuthMaterialIndex:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RequestInputValidator;->validateAuthMaterialIndex(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mNonce:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RequestInputValidator;->validateAdvertisementNonce(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mDeviceName:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RequestInputValidator;->validateDeviceName(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mProvisioningMethod:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RequestInputValidator;->validateProvisioningMethod(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mTrustMethod:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RequestInputValidator;->validateTrustMethod(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RequestInputValidator;->validateProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)V

    .line 256
    iget v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mAdvertisedSdkVersionIndex:I

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RequestInputValidator;->validateAdvertisedSdkVersionIndex(I)V

    return-void
.end method


# virtual methods
.method public createRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;
    .locals 15

    .line 237
    invoke-direct {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->validate()V

    .line 238
    new-instance v14, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mProvisionerApplicationName:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mProvisionerApplicationVersion:Ljava/lang/String;

    iget v3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mRssi:I

    iget-object v4, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mProductIndex:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mSoftwareVersionIndex:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mAuthMaterialIndex:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mNonce:Ljava/lang/String;

    iget-object v8, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mDeviceName:Ljava/lang/String;

    iget-object v9, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mProvisioningMethod:Ljava/lang/String;

    iget-object v10, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mTrustMethod:Ljava/lang/String;

    iget-object v11, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    iget v12, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mAdvertisedSdkVersionIndex:I

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;ILcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$1;)V

    return-object v14
.end method

.method public setAdvertisedSdkVersionIndex(I)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;
    .locals 0

    .line 231
    iput p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mAdvertisedSdkVersionIndex:I

    return-object p0
.end method

.method public setAuthMaterialIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mAuthMaterialIndex:Ljava/lang/String;

    return-object p0
.end method

.method public setDeviceName(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public setNonce(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mNonce:Ljava/lang/String;

    return-object p0
.end method

.method public setProductIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mProductIndex:Ljava/lang/String;

    return-object p0
.end method

.method public setProvisionerApplicationName(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mProvisionerApplicationName:Ljava/lang/String;

    return-object p0
.end method

.method public setProvisionerApplicationVersion(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mProvisionerApplicationVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-object p0
.end method

.method public setProvisioningMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mProvisioningMethod:Ljava/lang/String;

    return-object p0
.end method

.method public setRssi(I)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;
    .locals 0

    .line 186
    iput p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mRssi:I

    return-object p0
.end method

.method public setSoftwareVersionIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mSoftwareVersionIndex:Ljava/lang/String;

    return-object p0
.end method

.method public setTrustMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->mTrustMethod:Ljava/lang/String;

    return-object p0
.end method
