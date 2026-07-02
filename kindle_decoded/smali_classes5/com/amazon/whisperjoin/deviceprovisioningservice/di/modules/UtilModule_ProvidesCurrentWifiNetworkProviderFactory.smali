.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesCurrentWifiNetworkProviderFactory;
.super Ljava/lang/Object;
.source "UtilModule_ProvidesCurrentWifiNetworkProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;

.field private final wifiManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/net/wifi/WifiManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static proxyProvidesCurrentWifiNetworkProvider(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;Landroid/net/wifi/WifiManager;)Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;->providesCurrentWifiNetworkProvider(Landroid/net/wifi/WifiManager;)Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesCurrentWifiNetworkProviderFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesCurrentWifiNetworkProviderFactory;->wifiManagerProvider:Ljavax/inject/Provider;

    .line 25
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;->providesCurrentWifiNetworkProvider(Landroid/net/wifi/WifiManager;)Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 24
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesCurrentWifiNetworkProviderFactory;->get()Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;

    move-result-object v0

    return-object v0
.end method
