.class public Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;
.super Ljava/lang/Object;
.source "DiscoveredProvisionableDeviceInput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private accessToken:Ljava/lang/String;

.field private advertisedSdkVersionIndex:I

.field private authMaterialIndex:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private productIndex:Ljava/lang/String;

.field private provisionableInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

.field private provisionerApplication:Ljava/lang/String;

.field private provisionerApplicationVersion:Ljava/lang/String;

.field private provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

.field private provisioningMethod:Ljava/lang/String;

.field private radio:Ljava/lang/String;

.field private rssi:I

.field private softwareVersionIndex:Ljava/lang/String;

.field private trustMethod:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.DiscoveredProvisionableDeviceInput"

    aput-object v2, v0, v1

    .line 144
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 175
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 179
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;

    .line 181
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->accessToken:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->accessToken:Ljava/lang/String;

    .line 182
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->advertisedSdkVersionIndex:I

    .line 183
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->advertisedSdkVersionIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->authMaterialIndex:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->authMaterialIndex:Ljava/lang/String;

    .line 184
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->deviceName:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->deviceName:Ljava/lang/String;

    .line 185
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->nonce:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->nonce:Ljava/lang/String;

    .line 186
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->productIndex:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->productIndex:Ljava/lang/String;

    .line 187
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisionableInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisionableInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    .line 188
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisionerApplication:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisionerApplication:Ljava/lang/String;

    .line 189
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisionerApplicationVersion:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisionerApplicationVersion:Ljava/lang/String;

    .line 190
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 191
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisioningMethod:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisioningMethod:Ljava/lang/String;

    .line 192
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->radio:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->radio:Ljava/lang/String;

    .line 193
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->rssi:I

    .line 194
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->rssi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->softwareVersionIndex:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->softwareVersionIndex:Ljava/lang/String;

    .line 195
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->trustMethod:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->trustMethod:Ljava/lang/String;

    .line 196
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAdvertisedSdkVersionIndex()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->advertisedSdkVersionIndex:I

    return v0
.end method

.method public getAuthMaterialIndex()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->authMaterialIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getProductIndex()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->productIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisionableInfo()Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisionableInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    return-object v0
.end method

.method public getProvisionerApplication()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisionerApplication:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisionerApplicationVersion()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisionerApplicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-object v0
.end method

.method public getProvisioningMethod()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisioningMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getRadio()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->radio:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->rssi:I

    return v0
.end method

.method public getSoftwareVersionIndex()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->softwareVersionIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustMethod()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->trustMethod:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    .line 151
    sget v1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->classNameHashCode:I

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->accessToken:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->advertisedSdkVersionIndex:I

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->authMaterialIndex:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->deviceName:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->nonce:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->productIndex:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisionableInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisionerApplication:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisionerApplicationVersion:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisioningMethod:Ljava/lang/String;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->radio:Ljava/lang/String;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->rssi:I

    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->softwareVersionIndex:Ljava/lang/String;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->trustMethod:Ljava/lang/String;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 151
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setAdvertisedSdkVersionIndex(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->advertisedSdkVersionIndex:I

    return-void
.end method

.method public setAuthMaterialIndex(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->authMaterialIndex:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->nonce:Ljava/lang/String;

    return-void
.end method

.method public setProductIndex(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->productIndex:Ljava/lang/String;

    return-void
.end method

.method public setProvisionableInfo(Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisionableInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    return-void
.end method

.method public setProvisionerApplication(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisionerApplication:Ljava/lang/String;

    return-void
.end method

.method public setProvisionerApplicationVersion(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisionerApplicationVersion:Ljava/lang/String;

    return-void
.end method

.method public setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-void
.end method

.method public setProvisioningMethod(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->provisioningMethod:Ljava/lang/String;

    return-void
.end method

.method public setRadio(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->radio:Ljava/lang/String;

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->rssi:I

    return-void
.end method

.method public setSoftwareVersionIndex(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->softwareVersionIndex:Ljava/lang/String;

    return-void
.end method

.method public setTrustMethod(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->trustMethod:Ljava/lang/String;

    return-void
.end method
