.class public Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;
.super Ljava/lang/Object;
.source "GetWiFiNetworksInput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private accessToken:Ljava/lang/String;

.field private authMaterialIndex:Ljava/lang/String;

.field private currentWifiNetwork:Lcom/amazon/devicesetup/common/v1/WifiScanData;

.field private keyExchangeMethod:Ljava/lang/String;

.field private productIndex:Ljava/lang/String;

.field private provisioneeLastConnectedNetwork:Lcom/amazon/devicesetup/common/v1/WifiScanData;

.field private provisioningMethod:Ljava/lang/String;

.field private sessionToken:Ljava/lang/String;

.field private trustMethod:Ljava/lang/String;

.field private wifiScanDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/devicesetup/common/v1/WifiScanData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.GetWiFiNetworksInput"

    aput-object v2, v0, v1

    .line 102
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 128
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 132
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;

    .line 134
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->accessToken:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->accessToken:Ljava/lang/String;

    .line 135
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->authMaterialIndex:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->authMaterialIndex:Ljava/lang/String;

    .line 136
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->currentWifiNetwork:Lcom/amazon/devicesetup/common/v1/WifiScanData;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->currentWifiNetwork:Lcom/amazon/devicesetup/common/v1/WifiScanData;

    .line 137
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->keyExchangeMethod:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->keyExchangeMethod:Ljava/lang/String;

    .line 138
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->productIndex:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->productIndex:Ljava/lang/String;

    .line 139
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->provisioneeLastConnectedNetwork:Lcom/amazon/devicesetup/common/v1/WifiScanData;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->provisioneeLastConnectedNetwork:Lcom/amazon/devicesetup/common/v1/WifiScanData;

    .line 140
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->provisioningMethod:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->provisioningMethod:Ljava/lang/String;

    .line 141
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->sessionToken:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->sessionToken:Ljava/lang/String;

    .line 142
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->trustMethod:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->trustMethod:Ljava/lang/String;

    .line 143
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->wifiScanDataList:Ljava/util/List;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->wifiScanDataList:Ljava/util/List;

    .line 144
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthMaterialIndex()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->authMaterialIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentWifiNetwork()Lcom/amazon/devicesetup/common/v1/WifiScanData;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->currentWifiNetwork:Lcom/amazon/devicesetup/common/v1/WifiScanData;

    return-object v0
.end method

.method public getKeyExchangeMethod()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->keyExchangeMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getProductIndex()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->productIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisioneeLastConnectedNetwork()Lcom/amazon/devicesetup/common/v1/WifiScanData;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->provisioneeLastConnectedNetwork:Lcom/amazon/devicesetup/common/v1/WifiScanData;

    return-object v0
.end method

.method public getProvisioningMethod()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->provisioningMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustMethod()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->trustMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiScanDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetup/common/v1/WifiScanData;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->wifiScanDataList:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    .line 109
    sget v1, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->classNameHashCode:I

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->accessToken:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->authMaterialIndex:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->currentWifiNetwork:Lcom/amazon/devicesetup/common/v1/WifiScanData;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->keyExchangeMethod:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->productIndex:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->provisioneeLastConnectedNetwork:Lcom/amazon/devicesetup/common/v1/WifiScanData;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->provisioningMethod:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->sessionToken:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->trustMethod:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->wifiScanDataList:Ljava/util/List;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 109
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setAuthMaterialIndex(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->authMaterialIndex:Ljava/lang/String;

    return-void
.end method

.method public setCurrentWifiNetwork(Lcom/amazon/devicesetup/common/v1/WifiScanData;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->currentWifiNetwork:Lcom/amazon/devicesetup/common/v1/WifiScanData;

    return-void
.end method

.method public setKeyExchangeMethod(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->keyExchangeMethod:Ljava/lang/String;

    return-void
.end method

.method public setProductIndex(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->productIndex:Ljava/lang/String;

    return-void
.end method

.method public setProvisioneeLastConnectedNetwork(Lcom/amazon/devicesetup/common/v1/WifiScanData;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->provisioneeLastConnectedNetwork:Lcom/amazon/devicesetup/common/v1/WifiScanData;

    return-void
.end method

.method public setProvisioningMethod(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->provisioningMethod:Ljava/lang/String;

    return-void
.end method

.method public setSessionToken(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->sessionToken:Ljava/lang/String;

    return-void
.end method

.method public setTrustMethod(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->trustMethod:Ljava/lang/String;

    return-void
.end method

.method public setWifiScanDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetup/common/v1/WifiScanData;",
            ">;)V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->wifiScanDataList:Ljava/util/List;

    return-void
.end method
