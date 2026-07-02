.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/NetworkPriorityComparator;
.super Ljava/lang/Object;
.source "NetworkPriorityComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final SECURITY_RANKING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->values()[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 17
    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->NONE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->WEP:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->WPA_PSK:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/NetworkPriorityComparator;->SECURITY_RANKING:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;)I
    .locals 3

    .line 27
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/NetworkPriorityComparator;->SECURITY_RANKING:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getKeyManagement()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/NetworkPriorityComparator;->SECURITY_RANKING:Ljava/util/Map;

    .line 28
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getKeyManagement()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;->getSignalStrength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 37
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;->getSignalStrength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 44
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object p2

    .line 46
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-interface {v0, p2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;

    check-cast p2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/NetworkPriorityComparator;->compare(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;)I

    move-result p1

    return p1
.end method
