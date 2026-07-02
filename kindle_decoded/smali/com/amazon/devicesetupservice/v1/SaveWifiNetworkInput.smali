.class public Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;
.super Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;
.source "SaveWifiNetworkInput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private authMaterialIndex:Ljava/lang/String;

.field private keyExchangeMethod:Ljava/lang/String;

.field private productIndex:Ljava/lang/String;

.field private provisioningMethod:Ljava/lang/String;

.field private sessionToken:Ljava/lang/String;

.field private trustMethod:Ljava/lang/String;

.field private wifiConfig:Lcom/amazon/devicesetupservice/v1/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.SaveWifiNetworkInput"

    aput-object v2, v0, v1

    .line 72
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 96
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 100
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;

    .line 103
    invoke-super {p0, p1}, Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->authMaterialIndex:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->authMaterialIndex:Ljava/lang/String;

    .line 104
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->keyExchangeMethod:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->keyExchangeMethod:Ljava/lang/String;

    .line 105
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->productIndex:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->productIndex:Ljava/lang/String;

    .line 106
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->provisioningMethod:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->provisioningMethod:Ljava/lang/String;

    .line 107
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->sessionToken:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->sessionToken:Ljava/lang/String;

    .line 108
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->trustMethod:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->trustMethod:Ljava/lang/String;

    .line 109
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->wifiConfig:Lcom/amazon/devicesetupservice/v1/WifiConfiguration;

    iget-object v0, v0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->wifiConfig:Lcom/amazon/devicesetupservice/v1/WifiConfiguration;

    .line 110
    invoke-static {p1, v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAuthMaterialIndex()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->authMaterialIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyExchangeMethod()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->keyExchangeMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getProductIndex()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->productIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisioningMethod()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->provisioningMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustMethod()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->trustMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiConfig()Lcom/amazon/devicesetupservice/v1/WifiConfiguration;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->wifiConfig:Lcom/amazon/devicesetupservice/v1/WifiConfiguration;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 80
    invoke-super {p0}, Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->classNameHashCode:I

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->authMaterialIndex:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->keyExchangeMethod:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->productIndex:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->provisioningMethod:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->sessionToken:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->trustMethod:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->wifiConfig:Lcom/amazon/devicesetupservice/v1/WifiConfiguration;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 79
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAuthMaterialIndex(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->authMaterialIndex:Ljava/lang/String;

    return-void
.end method

.method public setKeyExchangeMethod(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->keyExchangeMethod:Ljava/lang/String;

    return-void
.end method

.method public setProductIndex(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->productIndex:Ljava/lang/String;

    return-void
.end method

.method public setProvisioningMethod(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->provisioningMethod:Ljava/lang/String;

    return-void
.end method

.method public setSessionToken(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->sessionToken:Ljava/lang/String;

    return-void
.end method

.method public setTrustMethod(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->trustMethod:Ljava/lang/String;

    return-void
.end method

.method public setWifiConfig(Lcom/amazon/devicesetupservice/v1/WifiConfiguration;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->wifiConfig:Lcom/amazon/devicesetupservice/v1/WifiConfiguration;

    return-void
.end method
