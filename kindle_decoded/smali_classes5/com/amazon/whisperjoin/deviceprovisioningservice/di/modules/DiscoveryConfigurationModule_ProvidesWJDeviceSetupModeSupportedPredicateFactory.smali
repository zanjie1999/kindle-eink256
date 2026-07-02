.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesWJDeviceSetupModeSupportedPredicateFactory;
.super Ljava/lang/Object;
.source "DiscoveryConfigurationModule_ProvidesWJDeviceSetupModeSupportedPredicateFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;

.field private final provisioningMethodProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final workflowConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static proxyProvidesWJDeviceSetupModeSupportedPredicate(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;->providesWJDeviceSetupModeSupportedPredicate(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesWJDeviceSetupModeSupportedPredicateFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesWJDeviceSetupModeSupportedPredicateFactory;->provisioningMethodProvider:Ljavax/inject/Provider;

    .line 32
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesWJDeviceSetupModeSupportedPredicateFactory;->workflowConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;->providesWJDeviceSetupModeSupportedPredicate(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesWJDeviceSetupModeSupportedPredicateFactory;->get()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;

    move-result-object v0

    return-object v0
.end method
