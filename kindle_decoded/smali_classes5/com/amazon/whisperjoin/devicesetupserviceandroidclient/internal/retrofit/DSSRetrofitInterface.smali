.class public interface abstract Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;
.super Ljava/lang/Object;
.source "DSSRetrofitInterface.java"


# virtual methods
.method public abstract computeConfigurationData(Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/computeConfigurationData"
    .end annotation
.end method

.method public abstract computeConfigurationData(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p3    # Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method

.method public abstract createAPForWifiProvisionee(Ljava/lang/String;Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/createAPForWifiProvisionee"
    .end annotation
.end method

.method public abstract createAPForWifiProvisionee(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p3    # Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method

.method public abstract discoveredProvisionableDevice(Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/discoveredProvisionableDevice"
    .end annotation
.end method

.method public abstract discoveredProvisionableDevice(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p3    # Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method

.method public abstract discoveredProvisionee(Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/discoveredProvisionee"
    .end annotation
.end method

.method public abstract discoveredProvisionee(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p3    # Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method

.method public abstract finalizeEcdheAuthSession(Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/FinalizeEcdheAuthenticationSessionInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Lcom/amazon/devicesetupservice/v1/FinalizeEcdheAuthenticationSessionInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/v1/FinalizeEcdheAuthenticationSessionInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/v1/FinalizeEcdheAuthenticationSessionOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/finalizeEcdheAuthenticationSession"
    .end annotation
.end method

.method public abstract finalizeEcdheAuthSession(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/FinalizeEcdheAuthenticationSessionInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p3    # Lcom/amazon/devicesetupservice/v1/FinalizeEcdheAuthenticationSessionInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/v1/FinalizeEcdheAuthenticationSessionInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/v1/FinalizeEcdheAuthenticationSessionOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method

.method public abstract getCustomerDevicesCredentials(Ljava/lang/String;Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/getCustomerDevicesCredentials"
    .end annotation
.end method

.method public abstract getCustomerDevicesCredentials(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p3    # Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method

.method public abstract getCustomerDevicesCredentialsV2(Ljava/lang/String;Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsV2Output;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v2/getCustomerDevicesCredentials"
    .end annotation
.end method

.method public abstract getCustomerDevicesCredentialsV2(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p3    # Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsV2Output;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method

.method public abstract getCustomerProvisioneesSetupStatus(Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/GetCustomerProvisioneesSetupStatusInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Lcom/amazon/devicesetupservice/v1/GetCustomerProvisioneesSetupStatusInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/v1/GetCustomerProvisioneesSetupStatusInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/v1/GetCustomerProvisioneesSetupStatusOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/getCustomerProvisioneesSetupStatus"
    .end annotation
.end method

.method public abstract getCustomerProvisioneesSetupStatus(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/GetCustomerProvisioneesSetupStatusInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p3    # Lcom/amazon/devicesetupservice/v1/GetCustomerProvisioneesSetupStatusInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/v1/GetCustomerProvisioneesSetupStatusInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/v1/GetCustomerProvisioneesSetupStatusOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/getCustomerProvisioneesSetupStatus"
    .end annotation
.end method

.method public abstract getDeviceRegistrationStatus(Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/GetDeviceRegistrationStatusInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Lcom/amazon/devicesetupservice/v1/GetDeviceRegistrationStatusInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/v1/GetDeviceRegistrationStatusInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/v1/GetDeviceRegistrationStatusOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/getDeviceRegistrationStatus"
    .end annotation
.end method

.method public abstract getDeviceRegistrationStatus(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/GetDeviceRegistrationStatusInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p3    # Lcom/amazon/devicesetupservice/v1/GetDeviceRegistrationStatusInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/v1/GetDeviceRegistrationStatusInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/v1/GetDeviceRegistrationStatusOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method

.method public abstract getWiFiSyncAuthToken(Ljava/lang/String;Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/getWifiSyncAuthToken"
    .end annotation
.end method

.method public abstract getWiFiSyncAuthToken(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p3    # Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method

.method public abstract getWifiNetworks(Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/GetWiFiNetworks"
    .end annotation
.end method

.method public abstract getWifiNetworks(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p3    # Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method

.method public abstract recordDevicePossessionIntentInnerBarcode(Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInnerBarcodeInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInnerBarcodeInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInnerBarcodeInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInnerBarcodeOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/recordDevicePossessionIntentInnerBarcode"
    .end annotation
.end method

.method public abstract recordDevicePossessionIntentInnerBarcode(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInnerBarcodeInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p3    # Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInnerBarcodeInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInnerBarcodeInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInnerBarcodeOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method

.method public abstract reportEvent(Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/ReportEventInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p2    # Lcom/amazon/devicesetupservice/v1/ReportEventInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/v1/ReportEventInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/v1/ReportEventOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method

.method public abstract reportSmartHomeEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p3    # Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method

.method public abstract saveWifiNetwork(Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/SaveWifiNetwork"
    .end annotation
.end method

.method public abstract saveWifiNetwork(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p3    # Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method

.method public abstract startEcdheAuthSession(Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/startEcdheAuthenticationSession"
    .end annotation
.end method

.method public abstract startEcdheAuthSession(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p3    # Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method

.method public abstract validateWiFiSyncAuthToken(Ljava/lang/String;Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/validateWifiSyncAuthToken"
    .end annotation
.end method

.method public abstract validateWiFiSyncAuthToken(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-amz-access-token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p3    # Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "Accept-Language: en-US"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method
