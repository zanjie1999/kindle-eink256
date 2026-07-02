.class Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDeferredDiscoveryHandler;
.super Ljava/lang/Object;
.source "DaggerZeroTouchControllerComponent.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDeferredDiscoveryHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V
    .locals 0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDeferredDiscoveryHandler;->provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    return-void
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDeferredDiscoveryHandler;->provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    .line 292
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;->providesDeferredDiscoveryHandler()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 291
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 279
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDeferredDiscoveryHandler;->get()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;

    move-result-object v0

    return-object v0
.end method
