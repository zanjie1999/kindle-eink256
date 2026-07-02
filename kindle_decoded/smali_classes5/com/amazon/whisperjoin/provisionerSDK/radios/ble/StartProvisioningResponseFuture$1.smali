.class Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioningResponseFuture$1;
.super Ljava/lang/Object;
.source "StartProvisioningResponseFuture.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioningResponseFuture;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$client:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioningResponseFuture$1;->val$client:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;-><init>()V

    .line 20
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioningResponseFuture$1;->val$client:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->START_PROVISIONING_RESPONSE_CHARACTERISTIC_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->getBleGattCharacteristic(Ljava/util/UUID;)Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->getStoredData()[B

    move-result-object v1

    const-class v2, Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningResponse;

    invoke-static {v2}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;->deserialize([BLcom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningResponse;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioningResponseFuture$1;->call()Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningResponse;

    move-result-object v0

    return-object v0
.end method
