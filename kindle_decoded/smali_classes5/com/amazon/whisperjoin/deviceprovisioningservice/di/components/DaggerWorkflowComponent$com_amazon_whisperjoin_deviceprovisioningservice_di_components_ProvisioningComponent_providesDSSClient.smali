.class Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDSSClient;
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
    name = "com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDSSClient"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V
    .locals 0

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDSSClient;->provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    return-void
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDSSClient;->provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    .line 452
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;->providesDSSClient()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 451
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 439
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDSSClient;->get()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    move-result-object v0

    return-object v0
.end method
