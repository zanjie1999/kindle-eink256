.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;
.super Ljava/lang/Object;
.source "GetAvailableWifiNetworksFromDSS.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetAvailableWifiNetworksFromDSS"


# instance fields
.field private mCurrentWifiNetworkProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;

.field private mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

.field private mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

.field private mTrustState:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    .line 49
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;->mCurrentWifiNetworkProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;

    .line 50
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    .line 51
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;->mTrustState:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;->createAvailableWifiNetworksFromDSSOutput(Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;

    move-result-object p0

    return-object p0
.end method

.method private createAvailableWifiNetwork(Lcom/amazon/devicesetup/common/v1/WifiScanData;Lcom/amazon/devicesetup/common/v1/WifiCredentials;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;
    .locals 5

    .line 76
    invoke-virtual {p1}, Lcom/amazon/devicesetup/common/v1/WifiScanData;->getSsid()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lcom/amazon/devicesetup/common/v1/WifiScanData;->getSecurityProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPEN"

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->NONE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object v1

    .line 87
    :goto_0
    new-instance v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;

    invoke-virtual {p1}, Lcom/amazon/devicesetup/common/v1/WifiScanData;->getFrequency()I

    move-result v3

    invoke-virtual {p1}, Lcom/amazon/devicesetup/common/v1/WifiScanData;->getRssi()I

    move-result p1

    invoke-direct {v2, v0, v1, v3, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;-><init>(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;II)V

    if-nez p2, :cond_1

    .line 89
    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    invoke-direct {p1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;)V

    return-object p1

    .line 93
    :cond_1
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS$2;->$SwitchMap$com$amazon$whisperjoin$common$sharedtypes$provisioning$data$wifi$WifiKeyManagement:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p1, p1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v3, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    move-object p1, v4

    goto :goto_1

    .line 101
    :cond_2
    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->createOpenWifiConfiguration(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object p1

    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->createWepWifiConfiguration(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object p1

    goto :goto_1

    .line 95
    :cond_4
    invoke-virtual {p2}, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->createWpaWifiConfiguration(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_5

    .line 110
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create wifi configuration for credentials for SSID "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " keyMgmt "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 114
    :cond_5
    new-instance p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    invoke-direct {p2, v2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)V

    return-object p2
.end method

.method private createAvailableWifiNetworksFromDSSOutput(Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;
    .locals 7

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->getWifiConfigList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->getWifiConfigList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;

    .line 120
    invoke-virtual {v2}, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;->getScanData()Lcom/amazon/devicesetup/common/v1/WifiScanData;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;->getCredential()Lcom/amazon/devicesetup/common/v1/WifiCredentials;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;->createAvailableWifiNetwork(Lcom/amazon/devicesetup/common/v1/WifiScanData;Lcom/amazon/devicesetup/common/v1/WifiCredentials;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    move-result-object v3

    if-nez v3, :cond_0

    .line 122
    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create available wifi network for details: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->getUnknownWifiNetworkList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->getUnknownWifiNetworkList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/devicesetup/common/v1/WifiScanData;

    .line 130
    invoke-direct {p0, v3, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;->createAvailableWifiNetwork(Lcom/amazon/devicesetup/common/v1/WifiScanData;Lcom/amazon/devicesetup/common/v1/WifiCredentials;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    move-result-object v4

    if-nez v4, :cond_2

    .line 132
    sget-object v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create available wifi network for scan data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 135
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 139
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;->getPreferredWifiConfig()Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 141
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;->getScanData()Lcom/amazon/devicesetup/common/v1/WifiScanData;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/WifiNetworkDetail;->getCredential()Lcom/amazon/devicesetup/common/v1/WifiCredentials;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;->createAvailableWifiNetwork(Lcom/amazon/devicesetup/common/v1/WifiScanData;Lcom/amazon/devicesetup/common/v1/WifiCredentials;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    move-result-object v4

    .line 146
    :cond_4
    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;

    invoke-direct {p1, v0, v1, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;-><init>(Ljava/util/List;Ljava/util/List;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;)V

    return-object p1
.end method

.method private createGetWiFiNetworksInput(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;Ljava/lang/String;)Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;
    .locals 1

    .line 154
    new-instance v0, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;

    invoke-direct {v0}, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;-><init>()V

    .line 156
    invoke-virtual {v0, p2}, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->setAuthMaterialIndex(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0, p3}, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->setProductIndex(Ljava/lang/String;)V

    .line 159
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;->mTrustState:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    invoke-static {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/dss/DSSTypesHelper;->getTrustMethodFromTrustState(Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->setTrustMethod(Ljava/lang/String;)V

    .line 160
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;->mTrustState:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    invoke-static {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/dss/DSSTypesHelper;->getKeyExchangeMethodFromTrustState(Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->setKeyExchangeMethod(Ljava/lang/String;)V

    .line 161
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->setProvisioningMethod(Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;->mCurrentWifiNetworkProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;->getCurrentWifiNetwork()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/dss/DSSTypesHelper;->createWifiScanDataFromWifiNetwork(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;)Lcom/amazon/devicesetup/common/v1/WifiScanData;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->setCurrentWifiNetwork(Lcom/amazon/devicesetup/common/v1/WifiScanData;)V

    .line 164
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/dss/DSSTypesHelper;->createWifiScanDataListFromWifiScanResults(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->setWifiScanDataList(Ljava/util/List;)V

    .line 165
    invoke-static {p4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/dss/DSSTypesHelper;->createWifiScanDataFromWifiConnectionDetails(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;)Lcom/amazon/devicesetup/common/v1/WifiScanData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->setProvisioneeLastConnectedNetwork(Lcom/amazon/devicesetup/common/v1/WifiScanData;)V

    .line 166
    invoke-virtual {v0, p5}, Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;->setSessionToken(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAvailableWifiNetworks(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getProductIndex()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {p3}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->getLastConnectionWifiDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    move-result-object v4

    move-object v0, p0

    move-object v1, p2

    move-object v5, p4

    .line 59
    invoke-direct/range {v0 .. v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;->createGetWiFiNetworksInput(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;Ljava/lang/String;)Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;

    move-result-object p1

    .line 62
    sget-object p3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;->TAG:Ljava/lang/String;

    const-string p4, "Getting WifiNetworks from DSS"

    invoke-static {p3, p4}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    invoke-interface {p3, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;->getWifiNetworks(Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS$1;

    invoke-direct {p3, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p3, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;

    invoke-direct {p3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;-><init>()V

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->setWifiLocker(Ljava/util/List;)Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;

    .line 70
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/GenericTreeSetCollection;->getSetCollection()Ljava/util/Collection;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->setVisibleNetworksCollection(Ljava/util/Collection;)Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;

    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;->mCurrentWifiNetworkProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;

    .line 71
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;->getCurrentWifiNetwork()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->setCurrentNetwork(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;)Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;

    .line 72
    invoke-virtual {p3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->createAvailableWifiNetworks()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;

    move-result-object p2

    .line 68
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->onErrorReturnItem(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
