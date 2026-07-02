.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;
.super Ljava/lang/Object;
.source "AvailableWifiNetworksBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AvailableWifiNetworksBuilder"


# instance fields
.field private currentNetwork:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;

.field private mConfiguredNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mUnrecognizedNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private visibleNetworksCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private wifiLocker:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->currentNetwork:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;

    return-void
.end method

.method private areEqual(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;)Z
    .locals 2

    .line 101
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getKeyManagement()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getKeyManagement()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private findConfigurationMatchingScanResult(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;Ljava/util/List;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;",
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;",
            ">;)",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;"
        }
    .end annotation

    .line 78
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    .line 79
    invoke-direct {p0, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->areEqual(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCurrentNetworkConfigFromLocker(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->mConfiguredNetworks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    .line 109
    invoke-direct {p0, v2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->areEqual(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method private getPreferredNetwork(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;
    .locals 1

    .line 90
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->getCurrentNetworkConfigFromLocker(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    move-result-object p1

    if-nez p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->mConfiguredNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 93
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->mConfiguredNetworks:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    :cond_0
    return-object p1
.end method

.method private processAvailableNetworks(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;",
            ">;)V"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/NetworkPriorityComparator;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/NetworkPriorityComparator;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 62
    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->mConfiguredNetworks:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->mUnrecognizedNetworks:Ljava/util/List;

    .line 67
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;

    .line 68
    invoke-direct {p0, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->findConfigurationMatchingScanResult(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;Ljava/util/List;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->mConfiguredNetworks:Ljava/util/List;

    new-instance v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    invoke-direct {v3, v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->mUnrecognizedNetworks:Ljava/util/List;

    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    invoke-direct {v2, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public createAvailableWifiNetworks()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->wifiLocker:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->visibleNetworksCollection:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->visibleNetworksCollection:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->wifiLocker:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->processAvailableNetworks(Ljava/util/List;Ljava/util/List;)V

    .line 55
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->currentNetwork:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->getPreferredNetwork(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->mConfiguredNetworks:Ljava/util/List;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->mUnrecognizedNetworks:Ljava/util/List;

    invoke-direct {v1, v2, v3, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;-><init>(Ljava/util/List;Ljava/util/List;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;)V

    return-object v1

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VisibleNetworks can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WifiLocker can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCurrentNetwork(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;)Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->currentNetwork:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;

    return-object p0
.end method

.method public setVisibleNetworksCollection(Ljava/util/Collection;)Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;",
            ">;)",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->visibleNetworksCollection:Ljava/util/Collection;

    return-object p0
.end method

.method public setWifiLocker(Ljava/util/List;)Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;",
            ">;)",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/AvailableWifiNetworksBuilder;->wifiLocker:Ljava/util/List;

    return-object p0
.end method
