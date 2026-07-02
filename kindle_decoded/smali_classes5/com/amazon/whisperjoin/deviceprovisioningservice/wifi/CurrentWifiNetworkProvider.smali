.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;
.super Ljava/lang/Object;
.source "CurrentWifiNetworkProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CurrentWifiNetworkProvider"

.field private static final UNKNOWN_SSID:Ljava/lang/String; = "<unknown ssid>"


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private getKeyMgmt(Landroid/net/wifi/WifiConfiguration;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;
    .locals 3

    .line 78
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->WPA_PSK:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    goto :goto_1

    .line 80
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    .line 81
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 85
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->WEP:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    goto :goto_1

    .line 87
    :cond_2
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->NONE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    goto :goto_1

    .line 82
    :cond_3
    :goto_0
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->OTHER:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    :goto_1
    return-object p1
.end method


# virtual methods
.method public getCurrentWifiNetwork()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;
    .locals 5

    .line 34
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 35
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<unknown ssid>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 42
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;->TAG:Ljava/lang/String;

    const-string v2, "No system configured networks provided"

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 46
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 47
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 48
    iget v4, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v0, v4, :cond_2

    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 53
    invoke-direct {p0, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;->getKeyMgmt(Landroid/net/wifi/WifiConfiguration;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object v2

    .line 55
    :try_start_0
    new-instance v3, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;

    invoke-direct {v3, v0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;-><init>(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;)V

    .line 56
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getKeyManagement()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " as phone\'s current network"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    .line 61
    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;->TAG:Ljava/lang/String;

    const-string v3, "IllegalArgumentException occurred while getting the current wifi network"

    invoke-static {v2, v3, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    .line 66
    :cond_3
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t find current network"

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 36
    :cond_4
    :goto_1
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;->TAG:Ljava/lang/String;

    const-string v2, "No current connection info provided"

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
