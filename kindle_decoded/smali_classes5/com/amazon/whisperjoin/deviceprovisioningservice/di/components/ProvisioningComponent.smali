.class public interface abstract Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;
.super Ljava/lang/Object;
.source "ProvisioningComponent.java"


# virtual methods
.method public abstract getBluetoothSupportProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;
.end method

.method public abstract getClock()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCurrentWifiNetworkProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;
.end method

.method public abstract getGson()Lcom/google/gson/Gson;
.end method

.method public abstract getLocationPermissionsHelper()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;
.end method

.method public abstract getMapAuthProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;
.end method

.method public abstract provideCustomerProvisioneesSetupStatusSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/CustomerProvisioneesSetupStatusSyncCoordinator;
.end method

.method public abstract providesAutoDiscoveryMetricsRecorder()Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;
.end method

.method public abstract providesDSHSSetCredentialsAPI()Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPI;
.end method

.method public abstract providesDSSClient()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;
.end method

.method public abstract providesDeferredDiscoveryHandler()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;
.end method

.method public abstract providesDeviceDiscoveryStream()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;
.end method

.method public abstract providesDeviceEventStream()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;
.end method

.method public abstract providesDiscoverySettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;
.end method

.method public abstract providesFFSArcusSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;
.end method

.method public abstract providesFFSProvisioningServiceMetricsRecorder()Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;
.end method

.method public abstract providesIsDebugEnabled()Ljava/lang/Boolean;
.end method

.method public abstract providesMetricsRecorderProvider()Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;
.end method

.method public abstract providesProvisionerClientData()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;
.end method

.method public abstract providesProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;
.end method

.method public abstract providesProvisioningManagerDisposable()Lio/reactivex/disposables/Disposable;
.end method

.method public abstract providesProvisioningManagerProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;
.end method

.method public abstract providesProvisioningMethod()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;
.end method

.method public abstract providesProvisioningServiceConfiguration()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;
.end method

.method public abstract providesTrustState()Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;
.end method

.method public abstract providesWJDeviceSetupModeSupportedPredicate()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;
.end method

.method public abstract providesWJErrorMapper()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract providesWorkflowConfiguration()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;
.end method
