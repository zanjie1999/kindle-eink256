.class public Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;
.super Ljava/lang/Object;
.source "GetWiFiNetworksOutput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private endpointToUse:Ljava/lang/String;

.field private preferredWifiConfig:Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;

.field private unknownWifiNetworkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/devicesetup/common/v1/WifiScanData;",
            ">;"
        }
    .end annotation
.end field

.field private wifiConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;",
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

    const-string v2, "com.amazon.devicesetupservice.v1.GetWiFiNetworksOutput"

    aput-object v2, v0, v1

    .line 48
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->classNameHashCode:I

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

    .line 68
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 72
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;

    .line 74
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->endpointToUse:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->endpointToUse:Ljava/lang/String;

    .line 75
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->preferredWifiConfig:Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->preferredWifiConfig:Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;

    .line 76
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->unknownWifiNetworkList:Ljava/util/List;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->unknownWifiNetworkList:Ljava/util/List;

    .line 77
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->wifiConfigList:Ljava/util/List;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->wifiConfigList:Ljava/util/List;

    .line 78
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getEndpointToUse()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->endpointToUse:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredWifiConfig()Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->preferredWifiConfig:Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;

    return-object v0
.end method

.method public getUnknownWifiNetworkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetup/common/v1/WifiScanData;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->unknownWifiNetworkList:Ljava/util/List;

    return-object v0
.end method

.method public getWifiConfigList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->wifiConfigList:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 55
    sget v1, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->classNameHashCode:I

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->endpointToUse:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->preferredWifiConfig:Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->unknownWifiNetworkList:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->wifiConfigList:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 55
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setEndpointToUse(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->endpointToUse:Ljava/lang/String;

    return-void
.end method

.method public setPreferredWifiConfig(Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->preferredWifiConfig:Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;

    return-void
.end method

.method public setUnknownWifiNetworkList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetup/common/v1/WifiScanData;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->unknownWifiNetworkList:Ljava/util/List;

    return-void
.end method

.method public setWifiConfigList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->wifiConfigList:Ljava/util/List;

    return-void
.end method
