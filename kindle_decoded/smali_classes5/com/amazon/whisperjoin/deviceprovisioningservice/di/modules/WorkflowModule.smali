.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;
.super Ljava/lang/Object;
.source "WorkflowModule.java"


# instance fields
.field private final mFFSArcusSettingsSingle:Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Single;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;->mFFSArcusSettingsSingle:Lio/reactivex/Single;

    return-void
.end method


# virtual methods
.method providesActionCreator()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;
    .locals 1

    .line 140
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;-><init>()V

    return-object v0
.end method

.method providesBasicBleFactory(Landroid/content/Context;Lcom/amazon/whisperbridge/ble/BleManager;)Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/connection/BasicBleDeviceFactory;
    .locals 1

    .line 108
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/connection/BasicBleDeviceFactory;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/connection/BasicBleDeviceFactory;-><init>(Landroid/content/Context;Lcom/amazon/whisperbridge/ble/BleManager;)V

    return-object v0
.end method

.method providesBleManager(Landroid/content/Context;)Lcom/amazon/whisperbridge/ble/BleManager;
    .locals 2

    .line 113
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleManager;

    invoke-direct {v0}, Lcom/amazon/whisperbridge/ble/BleManager;-><init>()V

    const/4 v1, 0x0

    .line 115
    :try_start_0
    invoke-virtual {v0, p1, v1}, Lcom/amazon/whisperbridge/ble/BleManager;->initializeBluetoothLE(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method providesControlledSetupWorkflow(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;
    .locals 8

    .line 82
    new-instance v7, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)V

    return-object v7
.end method

.method providesDeviceActionsExecutor(Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;Lio/reactivex/Single;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;",
            "Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
            ">;)",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor;"
        }
    .end annotation

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v12, p11

    .line 192
    new-instance v11, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;

    invoke-direct {v11}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;-><init>()V

    new-instance v10, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;

    move-object v0, v10

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move-object/from16 v7, p14

    move-object/from16 v8, p10

    move-object/from16 v9, p9

    move-object v14, v10

    move-object/from16 v10, p13

    move-object v15, v11

    move-object/from16 v11, p6

    move-object/from16 v12, p19

    invoke-direct/range {v0 .. v12}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lio/reactivex/Single;)V

    .line 193
    invoke-virtual {v15, v14}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->setStartDiscoveryOperation(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StopDiscoveryOperation;

    invoke-direct {v0, v13}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StopDiscoveryOperation;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;)V

    .line 194
    invoke-virtual {v15, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->setStopDiscoveryOperation(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;

    new-instance v6, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;

    move-object v0, v6

    move-object/from16 v1, p4

    move-object/from16 v2, p7

    move-object/from16 v3, p14

    move-object/from16 v4, p2

    move-object/from16 v5, p18

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;)V

    .line 195
    invoke-virtual {v15, v6}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->setBlessDiscoveredDeviceOperation(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation;

    move-object/from16 v1, p11

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation;-><init>(Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;)V

    .line 196
    invoke-virtual {v15, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->setConnectToDeviceDeviceOperation(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DisconnectFromDeviceOperation;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DisconnectFromDeviceOperation;-><init>()V

    .line 197
    invoke-virtual {v15, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->setDisconnectFromDeviceOperation(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation;

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p15

    move-object v5, v15

    invoke-direct {v0, v2, v4, v1, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;)V

    .line 198
    invoke-virtual {v5, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->setGetProvisioningDetailsOperation(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    invoke-direct {v0, v4, v3, v6, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;)V

    .line 199
    invoke-virtual {v5, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->setProvisionDeviceOperation(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;

    new-instance v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/provisioningverification/ProvisioningVerificationUsingDeviceEvents;

    move-object/from16 v4, p17

    invoke-direct {v3, v2, v1, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/provisioningverification/ProvisioningVerificationUsingDeviceEvents;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;)V

    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/provisioningverification/ProvisioningVerificationUsingRegistrationService;

    invoke-direct {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/provisioningverification/ProvisioningVerificationUsingRegistrationService;-><init>()V

    move-object/from16 v4, p16

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/provisioningverification/ProvisioningVerificationMethod;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/provisioningverification/ProvisioningVerificationMethod;Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;)V

    .line 200
    invoke-virtual {v5, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->setVerifyProvisioningOperation(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/TerminateSetupOperation;

    invoke-direct {v0, v13}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/TerminateSetupOperation;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;)V

    .line 201
    invoke-virtual {v5, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->setTerminateSetupDeviceOperation(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;

    .line 202
    invoke-virtual {v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->createDeviceActionsExecutor()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor;

    move-result-object v0

    return-object v0
.end method

.method providesFFSArcusSettings()Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;->mFFSArcusSettingsSingle:Lio/reactivex/Single;

    return-object v0
.end method

.method providesGetAvailableWifiNetworksFromDSS(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;
    .locals 1

    .line 220
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/GetAvailableWifiNetworksFromDSS;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)V

    return-object v0
.end method

.method providesPhilipsZigbeeBleWorkflow(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/connection/BasicBleDeviceFactory;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/WorkflowIdProvider;Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPI;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;Lio/reactivex/Single;Lcom/google/gson/Gson;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            "Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;",
            "Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/connection/BasicBleDeviceFactory;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/WorkflowIdProvider;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPI;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
            ">;",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;"
        }
    .end annotation

    .line 103
    new-instance v9, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/connection/BasicBleDeviceFactory;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/WorkflowIdProvider;Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPI;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;Lio/reactivex/Single;Lcom/google/gson/Gson;)V

    return-object v9
.end method

.method providesSaveWifiNetworkToDSS(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;
    .locals 1

    .line 225
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)V

    return-object v0
.end method

.method providesSmartHomeProvisioningEventReporter(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            ")",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;"
        }
    .end annotation

    .line 230
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;-><init>(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;)V

    return-object v0
.end method

.method providesWifiSimpleSetupWorkflow(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/WorkflowIdProvider;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;
    .locals 1

    .line 91
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/WorkflowIdProvider;)V

    return-object v0
.end method

.method providesWorkflowEventReporter(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            "Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;"
        }
    .end annotation

    .line 209
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporterImpl;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)V

    .line 210
    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;

    invoke-direct {p1, v0, p3, p4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;)V

    return-object p1
.end method

.method providesWorkflowIdProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/WorkflowIdProvider;
    .locals 1

    .line 130
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/WorkflowIdProvider;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/WorkflowIdProvider;-><init>()V

    return-object v0
.end method

.method providesWorkflowResultLogger(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowResultLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowResultLogger;"
        }
    .end annotation

    .line 215
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowResultLogger;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowResultLogger;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;)V

    return-object v0
.end method

.method providesWorkflowStateStream(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowResultLogger;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;
    .locals 7

    .line 154
    new-instance v6, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->getDeviceActionStream()Lio/reactivex/subjects/ReplaySubject;

    move-result-object v1

    move-object v0, v6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;-><init>(Lio/reactivex/Observable;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowResultLogger;)V

    return-object v6
.end method

.method providesWorkflowUpdateProducer(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;"
        }
    .end annotation

    .line 164
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;)V

    return-object v0
.end method
