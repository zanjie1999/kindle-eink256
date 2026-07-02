.class public final enum Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;
.super Ljava/lang/Enum;
.source "WhisperJoinMetricSourceName.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum BEACONING_TO_CONNECTED_TO_PROVISIONER:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum BLE_START_ATTEMPTS_RETRY_HANDLER:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum BLE_START_DISCVOERY:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum BLE_STOP_DISCOVERY:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum COMPLETE_PROVISIONING:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum CONNECT_TO_DEVICE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum CONNECT_TO_DEVICE_OPERATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum CONNECT_TO_WIFI:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum DEVICE_POWER_MONITOR:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum DISCONNECT_FROM_DEVICE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum DSHS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum DSS_DISCOVERED_PROVISIONABLE_DEVICE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum DSS_FINALIZE_ECDHE_AUTHENTICATION_SESSION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum DSS_GENERATE_PROVISIONING_SESSION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum DSS_START_ECDHE_AUTHENTICATION_SESSION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum DSS_VALIDATE_WIFI_SYNC_AUTH_TOKEN:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum FFS_PROVISIONING_SERVICE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum GET_BLE_REGISTRATION_STATUS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum GET_DEVICE_DETAILS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum GET_DISCOVERED_DEVICES_LIST_OPERATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum GET_PERIPHERAL_DEVICE_DETAILS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum GET_PROVISIONABLE_DEVICE_DETAILS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum GET_VISIBLE_NETWORKS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum GET_WIFI_CONNECTION_DETAIL:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum INITIATE_WIFI_SCAN:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum PROVISIONING_SESSION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum PROVISION_DEVICE_OPERATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum REGISTER_DEVICE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum SAVE_CONFIGURATION_MAP:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum SAVE_LOCALE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum SAVE_WIFI_CONFIGURATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum SET_CONFIGURATION_IN_DATA_MAP:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum SET_REGISTRATION_TOKEN:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum START_DISCOVERY_OPERATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum START_PROVISIONING:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum STOP_DISCOVERY_OPERATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

.field public static final enum VERIFY_PROVISIONING_OPERATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;


# instance fields
.field private final mMetricName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 8
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/4 v1, 0x0

    const-string v2, "CONNECT_TO_DEVICE"

    const-string v3, "ConnectingToDevice"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->CONNECT_TO_DEVICE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 9
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/4 v2, 0x1

    const-string v3, "GET_DEVICE_DETAILS"

    const-string v4, "GetDeviceDetails"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->GET_DEVICE_DETAILS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 10
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/4 v3, 0x2

    const-string v4, "GET_VISIBLE_NETWORKS"

    const-string v5, "GetVisibleNetworks"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->GET_VISIBLE_NETWORKS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 11
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/4 v4, 0x3

    const-string v5, "INITIATE_WIFI_SCAN"

    const-string v6, "InitiateWifiScan"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->INITIATE_WIFI_SCAN:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 12
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/4 v5, 0x4

    const-string v6, "SAVE_WIFI_CONFIGURATION"

    const-string v7, "SaveWifiConiguration"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->SAVE_WIFI_CONFIGURATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 13
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/4 v6, 0x5

    const-string v7, "SET_REGISTRATION_TOKEN"

    const-string v8, "SetRegistrationToken"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->SET_REGISTRATION_TOKEN:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 14
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/4 v7, 0x6

    const-string v8, "START_PROVISIONING"

    const-string v9, "StartProvisioning"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->START_PROVISIONING:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 15
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/4 v8, 0x7

    const-string v9, "COMPLETE_PROVISIONING"

    const-string v10, "CompleteProvisioning"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->COMPLETE_PROVISIONING:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 16
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v9, 0x8

    const-string v10, "SAVE_CONFIGURATION_MAP"

    const-string v11, "SaveConfigurationMap"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->SAVE_CONFIGURATION_MAP:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 17
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v10, 0x9

    const-string v11, "GET_WIFI_CONNECTION_DETAIL"

    const-string v12, "GetWifiConnectionDetail"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->GET_WIFI_CONNECTION_DETAIL:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 18
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v11, 0xa

    const-string v12, "GET_BLE_REGISTRATION_STATUS"

    const-string v13, "GetBleRegistrationStatus"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->GET_BLE_REGISTRATION_STATUS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 19
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v12, 0xb

    const-string v13, "DISCONNECT_FROM_DEVICE"

    const-string v14, "DisconnectFromDevice"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->DISCONNECT_FROM_DEVICE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 20
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v13, 0xc

    const-string v14, "GET_PROVISIONABLE_DEVICE_DETAILS"

    const-string v15, "GetProvisionableDeviceDetails"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->GET_PROVISIONABLE_DEVICE_DETAILS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 21
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v14, 0xd

    const-string v15, "GET_PERIPHERAL_DEVICE_DETAILS"

    const-string v13, "GetPeripheralDeviceDetails"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->GET_PERIPHERAL_DEVICE_DETAILS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 22
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v13, 0xe

    const-string v15, "SAVE_LOCALE"

    const-string v14, "SaveLocale"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->SAVE_LOCALE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 24
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v14, 0xf

    const-string v15, "GET_DISCOVERED_DEVICES_LIST_OPERATION"

    const-string v13, "GetDiscoveredDevicesListOperation"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->GET_DISCOVERED_DEVICES_LIST_OPERATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 25
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v13, 0x10

    const-string v15, "START_DISCOVERY_OPERATION"

    const-string v14, "StartDiscoveryOperation"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->START_DISCOVERY_OPERATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 26
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v14, 0x11

    const-string v15, "STOP_DISCOVERY_OPERATION"

    const-string v13, "StopDiscoveryOperation"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->STOP_DISCOVERY_OPERATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 27
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v13, 0x12

    const-string v15, "VERIFY_PROVISIONING_OPERATION"

    const-string v14, "VerifyProvisioningOperation"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->VERIFY_PROVISIONING_OPERATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 28
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v14, 0x13

    const-string v15, "CONNECT_TO_DEVICE_OPERATION"

    const-string v13, "ConnectToDeviceOperation"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->CONNECT_TO_DEVICE_OPERATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 29
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v13, 0x14

    const-string v15, "PROVISION_DEVICE_OPERATION"

    const-string v14, "ProvisionDeviceOperation"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->PROVISION_DEVICE_OPERATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 31
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v14, 0x15

    const-string v15, "DSS_DISCOVERED_PROVISIONABLE_DEVICE"

    const-string v13, "DssDiscoveredProvisionableDevice"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->DSS_DISCOVERED_PROVISIONABLE_DEVICE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 32
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const-string v13, "DSS_START_ECDHE_AUTHENTICATION_SESSION"

    const/16 v15, 0x16

    const-string v14, "DssStartEcdheAuthenticationSession"

    invoke-direct {v0, v13, v15, v14}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->DSS_START_ECDHE_AUTHENTICATION_SESSION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 33
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const-string v13, "DSS_FINALIZE_ECDHE_AUTHENTICATION_SESSION"

    const/16 v14, 0x17

    const-string v15, "DssFinalizeEcdheAuthenticationSession"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->DSS_FINALIZE_ECDHE_AUTHENTICATION_SESSION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 34
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const-string v13, "DSS_VALIDATE_WIFI_SYNC_AUTH_TOKEN"

    const/16 v14, 0x18

    const-string v15, "ValidateWifiSyncAuthToken"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->DSS_VALIDATE_WIFI_SYNC_AUTH_TOKEN:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 35
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const-string v13, "DSS_GENERATE_PROVISIONING_SESSION"

    const/16 v14, 0x19

    const-string v15, "DssGenerateProvisioningSession"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->DSS_GENERATE_PROVISIONING_SESSION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 37
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const-string v13, "BLE_START_DISCVOERY"

    const/16 v14, 0x1a

    const-string v15, "BleStartDiscovery"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->BLE_START_DISCVOERY:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 38
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const-string v13, "BLE_STOP_DISCOVERY"

    const/16 v14, 0x1b

    const-string v15, "BleStopDiscovery"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->BLE_STOP_DISCOVERY:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 39
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const-string v13, "BLE_START_ATTEMPTS_RETRY_HANDLER"

    const/16 v14, 0x1c

    const-string v15, "BleStartAttemptsRetryHandler"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->BLE_START_ATTEMPTS_RETRY_HANDLER:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 41
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const-string v13, "FFS_PROVISIONING_SERVICE"

    const/16 v14, 0x1d

    const-string v15, "FFSProvisioningService"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->FFS_PROVISIONING_SERVICE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 42
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const-string v13, "DEVICE_POWER_MONITOR"

    const/16 v14, 0x1e

    const-string v15, "DevicePowerMonitor"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->DEVICE_POWER_MONITOR:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 43
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const-string v13, "DSHS"

    const/16 v14, 0x1f

    const-string v15, "DSHS"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->DSHS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 45
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const-string v13, "PROVISIONING_SESSION"

    const/16 v14, 0x20

    const-string v15, "ProvisioningSession"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->PROVISIONING_SESSION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 46
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const-string v13, "BEACONING_TO_CONNECTED_TO_PROVISIONER"

    const/16 v14, 0x21

    const-string v15, "BeaconingToConnectedToProvisioner"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->BEACONING_TO_CONNECTED_TO_PROVISIONER:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 47
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const-string v13, "SET_CONFIGURATION_IN_DATA_MAP"

    const/16 v14, 0x22

    const-string v15, "SetConfigurationInDataMap"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->SET_CONFIGURATION_IN_DATA_MAP:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 48
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const-string v13, "CONNECT_TO_WIFI"

    const/16 v14, 0x23

    const-string v15, "ConnectToWifi"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->CONNECT_TO_WIFI:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 49
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const-string v13, "REGISTER_DEVICE"

    const/16 v14, 0x24

    const-string v15, "RegisterDevice"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->REGISTER_DEVICE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v13, 0x25

    new-array v13, v13, [Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 7
    sget-object v14, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->CONNECT_TO_DEVICE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    aput-object v14, v13, v1

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->GET_DEVICE_DETAILS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->GET_VISIBLE_NETWORKS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    aput-object v1, v13, v3

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->INITIATE_WIFI_SCAN:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    aput-object v1, v13, v4

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->SAVE_WIFI_CONFIGURATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    aput-object v1, v13, v5

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->SET_REGISTRATION_TOKEN:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    aput-object v1, v13, v6

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->START_PROVISIONING:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    aput-object v1, v13, v7

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->COMPLETE_PROVISIONING:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    aput-object v1, v13, v8

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->SAVE_CONFIGURATION_MAP:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    aput-object v1, v13, v9

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->GET_WIFI_CONNECTION_DETAIL:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    aput-object v1, v13, v10

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->GET_BLE_REGISTRATION_STATUS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    aput-object v1, v13, v11

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->DISCONNECT_FROM_DEVICE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    aput-object v1, v13, v12

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->GET_PROVISIONABLE_DEVICE_DETAILS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->GET_PERIPHERAL_DEVICE_DETAILS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->SAVE_LOCALE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0xe

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->GET_DISCOVERED_DEVICES_LIST_OPERATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0xf

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->START_DISCOVERY_OPERATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0x10

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->STOP_DISCOVERY_OPERATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0x11

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->VERIFY_PROVISIONING_OPERATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0x12

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->CONNECT_TO_DEVICE_OPERATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0x13

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->PROVISION_DEVICE_OPERATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0x14

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->DSS_DISCOVERED_PROVISIONABLE_DEVICE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0x15

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->DSS_START_ECDHE_AUTHENTICATION_SESSION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0x16

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->DSS_FINALIZE_ECDHE_AUTHENTICATION_SESSION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0x17

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->DSS_VALIDATE_WIFI_SYNC_AUTH_TOKEN:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0x18

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->DSS_GENERATE_PROVISIONING_SESSION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0x19

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->BLE_START_DISCVOERY:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0x1a

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->BLE_STOP_DISCOVERY:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0x1b

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->BLE_START_ATTEMPTS_RETRY_HANDLER:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0x1c

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->FFS_PROVISIONING_SERVICE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0x1d

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->DEVICE_POWER_MONITOR:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0x1e

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->DSHS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0x1f

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->PROVISIONING_SESSION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0x20

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->BEACONING_TO_CONNECTED_TO_PROVISIONER:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0x21

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->SET_CONFIGURATION_IN_DATA_MAP:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0x22

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->CONNECT_TO_WIFI:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    const/16 v2, 0x23

    aput-object v1, v13, v2

    const/16 v1, 0x24

    aput-object v0, v13, v1

    sput-object v13, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->$VALUES:[Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput-object p3, p0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->mMetricName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->$VALUES:[Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->mMetricName:Ljava/lang/String;

    return-object v0
.end method
