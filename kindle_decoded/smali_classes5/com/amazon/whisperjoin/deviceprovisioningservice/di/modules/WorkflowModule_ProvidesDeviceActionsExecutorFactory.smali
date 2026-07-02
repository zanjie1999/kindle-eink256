.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;
.super Ljava/lang/Object;
.source "WorkflowModule_ProvidesDeviceActionsExecutorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor;",
        ">;"
    }
.end annotation


# instance fields
.field private final bluetoothSupportProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final currentWifiNetworkProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final deferredDiscoveryHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final discoverySettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;",
            ">;"
        }
    .end annotation
.end field

.field private final dssClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            ">;"
        }
    .end annotation
.end field

.field private final eventStreamProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;",
            ">;"
        }
    .end annotation
.end field

.field private final ffsArcusSettingsSingleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
            ">;>;"
        }
    .end annotation
.end field

.field private final getAvailableWifiNetworksFromDSSProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;",
            ">;"
        }
    .end annotation
.end field

.field private final locationPermissionsHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mapAuthenticationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final metricsRecorderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

.field private final provisionerClientDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;",
            ">;"
        }
    .end annotation
.end field

.field private final provisioningManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final provisioningMethodProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final provisioningServiceConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final saveWifiNetworkThroughDSSProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;",
            ">;"
        }
    .end annotation
.end field

.field private final wjDeviceSetupModeSupportedPredicateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;",
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
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
            ">;>;)V"
        }
    .end annotation

    move-object v0, p0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 93
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    move-object v1, p2

    .line 94
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->mapAuthenticationProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 95
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->provisioningManagerProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 96
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->eventStreamProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 97
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->dssClientProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 98
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->provisioningServiceConfigurationProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 99
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->workflowConfigurationProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 100
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->provisionerClientDataProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 101
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->discoverySettingsProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 102
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->bluetoothSupportProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 103
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->locationPermissionsHelperProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 104
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->metricsRecorderProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 105
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->clockProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 106
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->wjDeviceSetupModeSupportedPredicateProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 107
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->provisioningMethodProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 108
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->getAvailableWifiNetworksFromDSSProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 109
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->saveWifiNetworkThroughDSSProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 110
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->currentWifiNetworkProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 111
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->deferredDiscoveryHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 112
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->ffsArcusSettingsSingleProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
            ">;>;)",
            "Ldagger/internal/Factory<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    .line 162
    new-instance v21, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;

    move-object/from16 v0, v21

    invoke-direct/range {v0 .. v20}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v21
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor;
    .locals 22

    move-object/from16 v0, p0

    .line 117
    iget-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    iget-object v2, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->mapAuthenticationProvider:Ljavax/inject/Provider;

    .line 119
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;

    iget-object v3, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->provisioningManagerProvider:Ljavax/inject/Provider;

    .line 120
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;

    iget-object v4, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->eventStreamProvider:Ljavax/inject/Provider;

    .line 121
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;

    iget-object v5, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->dssClientProvider:Ljavax/inject/Provider;

    .line 122
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    iget-object v6, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->provisioningServiceConfigurationProvider:Ljavax/inject/Provider;

    .line 123
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    iget-object v7, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->workflowConfigurationProvider:Ljavax/inject/Provider;

    .line 124
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    iget-object v8, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->provisionerClientDataProvider:Ljavax/inject/Provider;

    .line 125
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    iget-object v9, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->discoverySettingsProvider:Ljavax/inject/Provider;

    .line 126
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

    iget-object v10, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->bluetoothSupportProvider:Ljavax/inject/Provider;

    .line 127
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;

    iget-object v11, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->locationPermissionsHelperProvider:Ljavax/inject/Provider;

    .line 128
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;

    iget-object v12, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->metricsRecorderProvider:Ljavax/inject/Provider;

    .line 129
    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    iget-object v13, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->clockProvider:Ljavax/inject/Provider;

    .line 130
    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    iget-object v14, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->wjDeviceSetupModeSupportedPredicateProvider:Ljavax/inject/Provider;

    .line 131
    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;

    iget-object v15, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->provisioningMethodProvider:Ljavax/inject/Provider;

    .line 132
    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->getAvailableWifiNetworksFromDSSProvider:Ljavax/inject/Provider;

    .line 133
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;

    iget-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->saveWifiNetworkThroughDSSProvider:Ljavax/inject/Provider;

    .line 134
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;

    iget-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->currentWifiNetworkProvider:Ljavax/inject/Provider;

    .line 135
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;

    iget-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->deferredDiscoveryHandlerProvider:Ljavax/inject/Provider;

    .line 136
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;

    iget-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->ffsArcusSettingsSingleProvider:Ljavax/inject/Provider;

    .line 137
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lio/reactivex/Single;

    move-object/from16 v1, v21

    .line 118
    invoke-virtual/range {v1 .. v20}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;->providesDeviceActionsExecutor(Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;Lio/reactivex/Single;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 117
    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor;

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->get()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor;

    move-result-object v0

    return-object v0
.end method
