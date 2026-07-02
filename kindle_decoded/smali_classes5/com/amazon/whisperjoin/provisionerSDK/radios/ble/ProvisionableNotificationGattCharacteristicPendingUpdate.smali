.class Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/ProvisionableNotificationGattCharacteristicPendingUpdate;
.super Ljava/lang/Object;
.source "ProvisionableNotificationGattCharacteristicPendingUpdate.java"

# interfaces
.implements Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;


# instance fields
.field private final mCallback:Lcom/amazon/whisperbridge/Transport$ProvisionableEventNotificationCallback;

.field private mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperbridge/Transport$ProvisionableEventNotificationCallback;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/ProvisionableNotificationGattCharacteristicPendingUpdate;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    .line 20
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/ProvisionableNotificationGattCharacteristicPendingUpdate;->mCallback:Lcom/amazon/whisperbridge/Transport$ProvisionableEventNotificationCallback;

    return-void
.end method


# virtual methods
.method public notify(Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;
    .locals 2

    .line 25
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->PROVISIONING_NOTIFICATION_CHARACTERISTIC_UUID:Ljava/util/UUID;

    invoke-virtual {p1}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    new-instance p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;-><init>(ZLcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;)V

    return-object p1

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/ProvisionableNotificationGattCharacteristicPendingUpdate;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    invoke-virtual {p1}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->getStoredData()[B

    move-result-object p1

    const-class v1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;->deserialize([BLcom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;

    .line 30
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/ProvisionableNotificationGattCharacteristicPendingUpdate;->mCallback:Lcom/amazon/whisperbridge/Transport$ProvisionableEventNotificationCallback;

    invoke-interface {v0, p1}, Lcom/amazon/whisperbridge/Transport$ProvisionableEventNotificationCallback;->onProvisionableEventNotification(Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;)V

    .line 33
    new-instance p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;-><init>(ZLcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;)V

    return-object p1
.end method
