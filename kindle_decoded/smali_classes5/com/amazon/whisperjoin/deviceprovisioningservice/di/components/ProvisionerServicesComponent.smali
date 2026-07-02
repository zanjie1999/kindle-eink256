.class public interface abstract Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;
.super Ljava/lang/Object;
.source "ProvisionerServicesComponent.java"


# virtual methods
.method public abstract getBluetoothSupportProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;
.end method

.method public abstract getClock()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCurrentWifiNetworkProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;
.end method

.method public abstract getDevicePowerMonitor()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;
.end method

.method public abstract getFFSArcusSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;
.end method

.method public abstract getGson()Lcom/google/gson/Gson;
.end method

.method public abstract getLocationPermissionsHelper()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;
.end method

.method public abstract getMapAuthProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;
.end method

.method public abstract getSharedPreferencesProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;
.end method

.method public abstract provideCustomerProvisioneesSetupStatusSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/CustomerProvisioneesSetupStatusSyncCoordinator;
.end method

.method public abstract providesAssociatedDeviceCredentialsSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;
.end method

.method public abstract providesAutoDiscoveryMetricsRecorder()Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;
.end method

.method public abstract providesCredentialSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;
.end method

.method public abstract providesCredentialSyncMetricsRecorder()Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;
.end method

.method public abstract providesDSSClient()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;
.end method

.method public abstract providesFFSProvisioningServiceMetricsRecorder()Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;
.end method

.method public abstract providesFFSWhiteListPolicyCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;
.end method

.method public abstract providesIsDebugEnabled()Ljava/lang/Boolean;
.end method

.method public abstract providesMetricsRecorderProvider()Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;
.end method

.method public abstract providesProvisionerClientData()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;
.end method

.method public abstract providesProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;
.end method

.method public abstract providesProvisioningMethod()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;
.end method

.method public abstract providesProvisioningServiceConfiguration()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;
.end method

.method public abstract providesTrustState()Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;
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

.method public abstract providesWhiteListPolicyUpdateListener()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;
.end method

.method public abstract providesWorkflowConfiguration()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;
.end method

.method public abstract providesZigbeeCredentialSyncIntent()Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPI;
.end method
