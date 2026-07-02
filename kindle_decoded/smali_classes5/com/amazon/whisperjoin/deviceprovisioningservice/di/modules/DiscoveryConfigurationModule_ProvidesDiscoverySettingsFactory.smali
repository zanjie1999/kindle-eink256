.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesDiscoverySettingsFactory;
.super Ljava/lang/Object;
.source "DiscoveryConfigurationModule_ProvidesDiscoverySettingsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;",
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

.field private final scanningModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;",
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
.method public static proxyProvidesDiscoverySettings(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;
    .locals 0

    .line 57
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;->providesDiscoverySettings(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesDiscoverySettingsFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesDiscoverySettingsFactory;->workflowConfigurationProvider:Ljavax/inject/Provider;

    .line 37
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesDiscoverySettingsFactory;->scanningModeProvider:Ljavax/inject/Provider;

    .line 38
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesDiscoverySettingsFactory;->provisioningMethodProvider:Ljavax/inject/Provider;

    .line 39
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    .line 36
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;->providesDiscoverySettings(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 35
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesDiscoverySettingsFactory;->get()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

    move-result-object v0

    return-object v0
.end method
