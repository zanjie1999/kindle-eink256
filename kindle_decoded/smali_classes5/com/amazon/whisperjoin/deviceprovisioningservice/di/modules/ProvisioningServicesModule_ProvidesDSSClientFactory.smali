.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesDSSClientFactory;
.super Ljava/lang/Object;
.source "ProvisioningServicesModule_ProvidesDSSClientFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final dssServiceConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesDSSClientFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;

    .line 24
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesDSSClientFactory;->contextProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesDSSClientFactory;->dssServiceConfigurationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesDSSClientFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesDSSClientFactory;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesDSSClientFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesDSSClientFactory;->contextProvider:Ljavax/inject/Provider;

    .line 31
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesDSSClientFactory;->dssServiceConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;->providesDSSClient(Landroid/content/Context;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesDSSClientFactory;->get()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    move-result-object v0

    return-object v0
.end method
