.class Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getCurrentWifiNetworkProvider;
.super Ljava/lang/Object;
.source "DaggerWorkflowComponent.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getCurrentWifiNetworkProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V
    .locals 0

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getCurrentWifiNetworkProvider;->provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    return-void
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;
    .locals 2

    .line 649
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getCurrentWifiNetworkProvider;->provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    .line 650
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;->getCurrentWifiNetworkProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 649
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getCurrentWifiNetworkProvider;->get()Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;

    move-result-object v0

    return-object v0
.end method
