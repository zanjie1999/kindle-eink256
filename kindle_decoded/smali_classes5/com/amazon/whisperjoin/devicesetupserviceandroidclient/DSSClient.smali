.class public interface abstract Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;
.super Ljava/lang/Object;
.source "DSSClient.java"


# virtual methods
.method public abstract computeConfigurationData(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataRequest;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createAPForWifiProvisionee(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract discoveredDistressedProvisionee(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract discoveredLocalNotificationProvisionee(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeRequest;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract discoveredProvisionableDevice(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract discoveredSmartHomeProvisionee(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract finalizeEcdheAuthenticationSession(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionRequest;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCustomerDevicesCredentials(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCustomerDevicesCredentialsV2(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsV2Output;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCustomerProvisioneesSetupStatus(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFFSWhiteListPolicy(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRegistrationStatus(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWiFiSyncAuthToken(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenRequest;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWifiNetworks(Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;",
            ">;"
        }
    .end annotation
.end method

.method public abstract recordDevicePossessionIntentInnerBarcode(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RecordDevicePossessionIntentInnerBarcodeRequest;)Lio/reactivex/Completable;
.end method

.method public abstract reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;)Lio/reactivex/Completable;
.end method

.method public abstract reportSmartHomeEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;)Lio/reactivex/Completable;
.end method

.method public abstract saveWifiNetwork(Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkOutput;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setDssApi(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;)V
.end method

.method public abstract startEcdheAuthenticationSession(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract validateWiFiSyncAuthToken(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenResponse;",
            ">;"
        }
    .end annotation
.end method
