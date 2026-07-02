.class Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSConstants$ApiPaths;
.super Ljava/lang/Object;
.source "DSSConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApiPaths"
.end annotation


# static fields
.field static final COMPUTE_CONFIGURATION_DATA:Ljava/lang/String; = "/v1/computeConfigurationData"

.field static final CREATE_AP_FOR_WIFI_PROVISIONEE:Ljava/lang/String; = "/v1/createAPForWifiProvisionee"

.field static final DISCOVERED_PROVISIONABLE_DEVICE:Ljava/lang/String; = "/v1/discoveredProvisionableDevice"

.field static final DISCOVERED_PROVISIONEE_DEVICE:Ljava/lang/String; = "/v1/discoveredProvisionee"

.field static final FINALIZE_ECDHE_AUTH_SESSION:Ljava/lang/String; = "/v1/finalizeEcdheAuthenticationSession"

.field static final GET_CUSTOMER_DEVICES_CREDENTIALS:Ljava/lang/String; = "/v1/getCustomerDevicesCredentials"

.field static final GET_CUSTOMER_DEVICES_CREDENTIALS_V2:Ljava/lang/String; = "/v2/getCustomerDevicesCredentials"

.field static final GET_CUSTOMER_PROVISIONEES_SETUP_STATUS:Ljava/lang/String; = "/v1/getCustomerProvisioneesSetupStatus"

.field static final GET_DEVICE_REGISTRATION_STATUS:Ljava/lang/String; = "/v1/getDeviceRegistrationStatus"

.field static final GET_FFS_WHITELIST_POLICY:Ljava/lang/String; = "fetchConfig"

.field static final GET_WIFI_NETWORKS:Ljava/lang/String; = "/v1/GetWiFiNetworks"

.field static final GET_WIFI_SYNC_AUTH_TOKEN:Ljava/lang/String; = "/v1/getWifiSyncAuthToken"

.field static final RECORD_DEVICE_POSSESSION_INTENT_INNER_BARCODE:Ljava/lang/String; = "/v1/recordDevicePossessionIntentInnerBarcode"

.field static final SAVE_WIFI_NETWORK:Ljava/lang/String; = "/v1/SaveWifiNetwork"

.field static final START_ECDHE_AUTH_SESSION:Ljava/lang/String; = "/v1/startEcdheAuthenticationSession"

.field static final VALIDATE_WIFI_SYNC_AUTH_TOKEN:Ljava/lang/String; = "/v1/validateWifiSyncAuthToken"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
