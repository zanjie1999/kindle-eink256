.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;
.super Ljava/lang/Object;
.source "DaggerWorkflowComponent.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/WorkflowComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getGson;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDSHSSetCredentialsAPI;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getContext;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesWJErrorMapper;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesProvisionerInfo;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDeferredDiscoveryHandler;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesTrustState;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getCurrentWifiNetworkProvider;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesProvisioningMethod;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesWJDeviceSetupModeSupportedPredicate;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getClock;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesMetricsRecorderProvider;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getLocationPermissionsHelper;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getBluetoothSupportProvider;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDiscoverySettings;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesProvisionerClientData;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesWorkflowConfiguration;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesProvisioningServiceConfiguration;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDSSClient;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDeviceEventStream;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesProvisioningManagerProvider;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getMapAuthProvider;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;
    }
.end annotation


# instance fields
.field private getBluetoothSupportProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;",
            ">;"
        }
    .end annotation
.end field

.field private getClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private getContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private getCurrentWifiNetworkProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;",
            ">;"
        }
    .end annotation
.end field

.field private getGsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private getLocationPermissionsHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;",
            ">;"
        }
    .end annotation
.end field

.field private getMapAuthProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesActionCreatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;",
            ">;"
        }
    .end annotation
.end field

.field private providesBasicBleFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/connection/BasicBleDeviceFactory;",
            ">;"
        }
    .end annotation
.end field

.field private providesBleManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperbridge/ble/BleManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesControlledSetupWorkflowProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;",
            ">;"
        }
    .end annotation
.end field

.field private providesDSHSSetCredentialsAPIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPI;",
            ">;"
        }
    .end annotation
.end field

.field private providesDSSClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            ">;"
        }
    .end annotation
.end field

.field private providesDeferredDiscoveryHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private providesDeviceActionsExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private providesDeviceEventStreamProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;",
            ">;"
        }
    .end annotation
.end field

.field private providesDiscoverySettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;",
            ">;"
        }
    .end annotation
.end field

.field private providesFFSArcusSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
            ">;>;"
        }
    .end annotation
.end field

.field private providesGetAvailableWifiNetworksFromDSSProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;",
            ">;"
        }
    .end annotation
.end field

.field private providesMetricsRecorderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesPhilipsZigbeeBleWorkflowProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;",
            ">;"
        }
    .end annotation
.end field

.field private providesProvisionerClientDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;",
            ">;"
        }
    .end annotation
.end field

.field private providesProvisionerInfoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private providesProvisioningManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesProvisioningMethodProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;",
            ">;"
        }
    .end annotation
.end field

.field private providesProvisioningServiceConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private providesSaveWifiNetworkToDSSProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;",
            ">;"
        }
    .end annotation
.end field

.field private providesSmartHomeProvisioningEventReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;",
            ">;"
        }
    .end annotation
.end field

.field private providesTrustStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;",
            ">;"
        }
    .end annotation
.end field

.field private providesWJDeviceSetupModeSupportedPredicateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;",
            ">;"
        }
    .end annotation
.end field

.field private providesWJErrorMapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private providesWifiSimpleSetupWorkflowProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;",
            ">;"
        }
    .end annotation
.end field

.field private providesWorkflowConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private providesWorkflowEventReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;",
            ">;"
        }
    .end annotation
.end field

.field private providesWorkflowIdProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/WorkflowIdProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesWorkflowResultLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowResultLogger;",
            ">;"
        }
    .end annotation
.end field

.field private providesWorkflowStateStreamProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;",
            ">;"
        }
    .end annotation
.end field

.field private providesWorkflowUpdateProducerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->initialize(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$1;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)V

    return-void
.end method

.method public static builder()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;
    .locals 2

    .line 149
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)V
    .locals 22

    move-object/from16 v0, p0

    .line 156
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesActionCreatorFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;)Ldagger/internal/Factory;

    move-result-object v1

    .line 155
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesActionCreatorProvider:Ljavax/inject/Provider;

    .line 157
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getMapAuthProvider;

    .line 159
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getMapAuthProvider;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->getMapAuthProvider:Ljavax/inject/Provider;

    .line 160
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesProvisioningManagerProvider;

    .line 162
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesProvisioningManagerProvider;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesProvisioningManagerProvider:Ljavax/inject/Provider;

    .line 163
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDeviceEventStream;

    .line 165
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDeviceEventStream;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesDeviceEventStreamProvider:Ljavax/inject/Provider;

    .line 166
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDSSClient;

    .line 168
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDSSClient;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesDSSClientProvider:Ljavax/inject/Provider;

    .line 169
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesProvisioningServiceConfiguration;

    .line 171
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesProvisioningServiceConfiguration;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesProvisioningServiceConfigurationProvider:Ljavax/inject/Provider;

    .line 172
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesWorkflowConfiguration;

    .line 174
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesWorkflowConfiguration;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWorkflowConfigurationProvider:Ljavax/inject/Provider;

    .line 175
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesProvisionerClientData;

    .line 177
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesProvisionerClientData;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesProvisionerClientDataProvider:Ljavax/inject/Provider;

    .line 178
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDiscoverySettings;

    .line 180
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDiscoverySettings;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesDiscoverySettingsProvider:Ljavax/inject/Provider;

    .line 181
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getBluetoothSupportProvider;

    .line 183
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getBluetoothSupportProvider;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->getBluetoothSupportProvider:Ljavax/inject/Provider;

    .line 184
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getLocationPermissionsHelper;

    .line 186
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getLocationPermissionsHelper;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->getLocationPermissionsHelperProvider:Ljavax/inject/Provider;

    .line 187
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesMetricsRecorderProvider;

    .line 189
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesMetricsRecorderProvider;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesMetricsRecorderProvider:Ljavax/inject/Provider;

    .line 190
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getClock;

    .line 192
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getClock;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->getClockProvider:Ljavax/inject/Provider;

    .line 193
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesWJDeviceSetupModeSupportedPredicate;

    .line 195
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesWJDeviceSetupModeSupportedPredicate;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWJDeviceSetupModeSupportedPredicateProvider:Ljavax/inject/Provider;

    .line 196
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesProvisioningMethod;

    .line 198
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesProvisioningMethod;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesProvisioningMethodProvider:Ljavax/inject/Provider;

    .line 199
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getCurrentWifiNetworkProvider;

    .line 201
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getCurrentWifiNetworkProvider;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->getCurrentWifiNetworkProvider:Ljavax/inject/Provider;

    .line 202
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesTrustState;

    .line 204
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesTrustState;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesTrustStateProvider:Ljavax/inject/Provider;

    .line 207
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    move-result-object v1

    iget-object v2, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesDSSClientProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->getCurrentWifiNetworkProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesProvisioningMethodProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesTrustStateProvider:Ljavax/inject/Provider;

    .line 206
    invoke-static {v1, v2, v3, v4, v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesGetAvailableWifiNetworksFromDSSFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesGetAvailableWifiNetworksFromDSSProvider:Ljavax/inject/Provider;

    .line 214
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    move-result-object v1

    iget-object v2, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesDSSClientProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesProvisioningMethodProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesTrustStateProvider:Ljavax/inject/Provider;

    .line 213
    invoke-static {v1, v2, v3, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesSaveWifiNetworkToDSSFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesSaveWifiNetworkToDSSProvider:Ljavax/inject/Provider;

    .line 218
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDeferredDiscoveryHandler;

    .line 220
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDeferredDiscoveryHandler;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesDeferredDiscoveryHandlerProvider:Ljavax/inject/Provider;

    .line 223
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesFFSArcusSettingsFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;)Ldagger/internal/Factory;

    move-result-object v1

    .line 222
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesFFSArcusSettingsProvider:Ljavax/inject/Provider;

    .line 227
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    move-result-object v2

    iget-object v3, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->getMapAuthProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesProvisioningManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesDeviceEventStreamProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesDSSClientProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesProvisioningServiceConfigurationProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWorkflowConfigurationProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesProvisionerClientDataProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesDiscoverySettingsProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->getBluetoothSupportProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->getLocationPermissionsHelperProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesMetricsRecorderProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->getClockProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWJDeviceSetupModeSupportedPredicateProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesProvisioningMethodProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesGetAvailableWifiNetworksFromDSSProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesSaveWifiNetworkToDSSProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->getCurrentWifiNetworkProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesDeferredDiscoveryHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesFFSArcusSettingsProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    .line 226
    invoke-static/range {v2 .. v21}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesDeviceActionsExecutorFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    .line 225
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesDeviceActionsExecutorProvider:Ljavax/inject/Provider;

    .line 247
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesProvisionerInfo;

    .line 249
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesProvisionerInfo;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesProvisionerInfoProvider:Ljavax/inject/Provider;

    .line 250
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesWJErrorMapper;

    .line 252
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesWJErrorMapper;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWJErrorMapperProvider:Ljavax/inject/Provider;

    .line 256
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    move-result-object v1

    iget-object v2, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesDSSClientProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesProvisionerInfoProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesProvisioningMethodProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWJErrorMapperProvider:Ljavax/inject/Provider;

    .line 255
    invoke-static {v1, v2, v3, v4, v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesWorkflowEventReporterFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    .line 254
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWorkflowEventReporterProvider:Ljavax/inject/Provider;

    .line 264
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    move-result-object v1

    iget-object v2, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesProvisioningMethodProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWJErrorMapperProvider:Ljavax/inject/Provider;

    .line 263
    invoke-static {v1, v2, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesWorkflowResultLoggerFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    .line 262
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWorkflowResultLoggerProvider:Ljavax/inject/Provider;

    .line 270
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    move-result-object v2

    iget-object v3, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesActionCreatorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesDeviceActionsExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesDeviceEventStreamProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWorkflowEventReporterProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWorkflowResultLoggerProvider:Ljavax/inject/Provider;

    .line 269
    invoke-static/range {v2 .. v7}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesWorkflowStateStreamFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    .line 268
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWorkflowStateStreamProvider:Ljavax/inject/Provider;

    .line 279
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    move-result-object v1

    iget-object v2, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesActionCreatorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWJErrorMapperProvider:Ljavax/inject/Provider;

    .line 278
    invoke-static {v1, v2, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesWorkflowUpdateProducerFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    .line 277
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWorkflowUpdateProducerProvider:Ljavax/inject/Provider;

    .line 285
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    move-result-object v2

    iget-object v3, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWorkflowStateStreamProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesActionCreatorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWorkflowUpdateProducerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWorkflowConfigurationProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesDSSClientProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesTrustStateProvider:Ljavax/inject/Provider;

    .line 284
    invoke-static/range {v2 .. v8}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesControlledSetupWorkflowFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    .line 283
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesControlledSetupWorkflowProvider:Ljavax/inject/Provider;

    .line 294
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesWorkflowIdProviderFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;)Ldagger/internal/Factory;

    move-result-object v1

    .line 293
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWorkflowIdProvider:Ljavax/inject/Provider;

    .line 298
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    move-result-object v1

    iget-object v2, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWorkflowStateStreamProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesActionCreatorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesTrustStateProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWorkflowIdProvider:Ljavax/inject/Provider;

    .line 297
    invoke-static {v1, v2, v3, v4, v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesWifiSimpleSetupWorkflowFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    .line 296
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWifiSimpleSetupWorkflowProvider:Ljavax/inject/Provider;

    .line 303
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getContext;

    .line 305
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getContext;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->getContextProvider:Ljavax/inject/Provider;

    .line 309
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    move-result-object v1

    iget-object v2, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->getContextProvider:Ljavax/inject/Provider;

    .line 308
    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesBleManagerFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    .line 307
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesBleManagerProvider:Ljavax/inject/Provider;

    .line 313
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    move-result-object v1

    iget-object v2, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->getContextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesBleManagerProvider:Ljavax/inject/Provider;

    .line 312
    invoke-static {v1, v2, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesBasicBleFactoryFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    .line 311
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesBasicBleFactoryProvider:Ljavax/inject/Provider;

    .line 314
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDSHSSetCredentialsAPI;

    .line 316
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDSHSSetCredentialsAPI;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesDSHSSetCredentialsAPIProvider:Ljavax/inject/Provider;

    .line 320
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    move-result-object v1

    iget-object v2, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesProvisionerInfoProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWJErrorMapperProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesDSSClientProvider:Ljavax/inject/Provider;

    .line 319
    invoke-static {v1, v2, v3, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesSmartHomeProvisioningEventReporterFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    .line 318
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesSmartHomeProvisioningEventReporterProvider:Ljavax/inject/Provider;

    .line 324
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getGson;

    .line 326
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getGson;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->getGsonProvider:Ljavax/inject/Provider;

    .line 330
    invoke-static/range {p1 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    move-result-object v3

    iget-object v4, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesDSSClientProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesProvisionerInfoProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesBasicBleFactoryProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWorkflowIdProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesDSHSSetCredentialsAPIProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesSmartHomeProvisioningEventReporterProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesFFSArcusSettingsProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->getGsonProvider:Ljavax/inject/Provider;

    .line 329
    invoke-static/range {v3 .. v11}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesPhilipsZigbeeBleWorkflowFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    .line 328
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesPhilipsZigbeeBleWorkflowProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public getControlledSetupWorkflow()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesControlledSetupWorkflowProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;

    return-object v0
.end method

.method public getPhilipsZigbeeBleWorkflow()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesPhilipsZigbeeBleWorkflowProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;

    return-object v0
.end method

.method public getWifiSimpleSetupZeroTouchWorkflow()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->providesWifiSimpleSetupWorkflowProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;

    return-object v0
.end method
