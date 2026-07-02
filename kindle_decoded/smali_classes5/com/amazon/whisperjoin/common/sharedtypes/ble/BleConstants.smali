.class public Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;
.super Ljava/lang/Object;
.source "BleConstants.java"


# static fields
.field private static final BLUETOOTH_BASE_UUID_FORMATTED_STRING:Ljava/lang/String; = "0000%s-0000-1000-8000-00805F9B34FB"

.field public static final PROVISIONING_COMMAND_CHARACTERISTIC_UUID:Ljava/util/UUID;

.field public static final PROVISIONING_COMMAND_RESPONSE_CHARACTERISTIC_UUID:Ljava/util/UUID;

.field public static final PROVISIONING_NOTIFICATION_CHARACTERISTIC_UUID:Ljava/util/UUID;

.field public static final PROVISIONING_STATUS_CHARACTERISTIC_UUID:Ljava/util/UUID;

.field public static final START_PROVISIONING_REQUEST_CHARACTERISTIC_UUID:Ljava/util/UUID;

.field public static final START_PROVISIONING_RESPONSE_CHARACTERISTIC_UUID:Ljava/util/UUID;

.field private static final WHISPER_JOIN_16BIT_UUID:Ljava/lang/String; = "FE00"

.field public static final WHISPER_JOIN_PARCEL_UUID:Landroid/os/ParcelUuid;

.field public static final WHISPER_JOIN_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "cf011df7-07ee-40b7-a71d-3f2eb6e0d040"

    .line 8
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->PROVISIONING_STATUS_CHARACTERISTIC_UUID:Ljava/util/UUID;

    const-string v0, "cf011df8-07ee-40b7-a71d-3f2eb6e0d040"

    .line 9
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->START_PROVISIONING_REQUEST_CHARACTERISTIC_UUID:Ljava/util/UUID;

    const-string v0, "cf011df9-07ee-40b7-a71d-3f2eb6e0d040"

    .line 10
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->START_PROVISIONING_RESPONSE_CHARACTERISTIC_UUID:Ljava/util/UUID;

    const-string v0, "cf011dfa-07ee-40b7-a71d-3f2eb6e0d040"

    .line 11
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->PROVISIONING_COMMAND_CHARACTERISTIC_UUID:Ljava/util/UUID;

    const-string v0, "cf011dfb-07ee-40b7-a71d-3f2eb6e0d040"

    .line 12
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->PROVISIONING_COMMAND_RESPONSE_CHARACTERISTIC_UUID:Ljava/util/UUID;

    const-string v0, "cf011dfc-07ee-40b7-a71d-3f2eb6e0d040"

    .line 13
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->PROVISIONING_NOTIFICATION_CHARACTERISTIC_UUID:Ljava/util/UUID;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "FE00"

    aput-object v2, v0, v1

    const-string v1, "0000%s-0000-1000-8000-00805F9B34FB"

    .line 18
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->WHISPER_JOIN_UUID:Ljava/util/UUID;

    .line 19
    new-instance v0, Landroid/os/ParcelUuid;

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->WHISPER_JOIN_UUID:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->WHISPER_JOIN_PARCEL_UUID:Landroid/os/ParcelUuid;

    return-void
.end method
