.class Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$11;
.super Ljava/lang/Object;
.source "BasicBLEDevice.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperbridge/ble/command/BleReadCharacteristicCommand$Result;",
        "Lio/reactivex/SingleSource<",
        "[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

.field final synthetic val$characteristicUUID:Ljava/util/UUID;

.field final synthetic val$serviceUUID:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$11;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$11;->val$serviceUUID:Ljava/util/UUID;

    iput-object p3, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$11;->val$characteristicUUID:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperbridge/ble/command/BleReadCharacteristicCommand$Result;)Lio/reactivex/SingleSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperbridge/ble/command/BleReadCharacteristicCommand$Result;",
            ")",
            "Lio/reactivex/SingleSource<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$11;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

    invoke-static {v0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->access$000(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)Lcom/amazon/whisperbridge/ble/BleGattClient;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$11;->val$serviceUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperbridge/ble/BleGattClient;->getServiceClient(Ljava/util/UUID;)Lcom/amazon/whisperbridge/ble/BleGattServiceClient;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$11;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

    iget p1, p1, Lcom/amazon/whisperbridge/ble/command/BleReadCharacteristicCommand$Result;->status:I

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->CONFIRM_READ_CHARACTERISTIC:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    invoke-static {v1, p1, v2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->access$500(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;ILcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    .line 210
    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$11;->val$characteristicUUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->getBleGattCharacteristic(Ljava/util/UUID;)Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->getStoredData()[B

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    check-cast p1, Lcom/amazon/whisperbridge/ble/command/BleReadCharacteristicCommand$Result;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$11;->apply(Lcom/amazon/whisperbridge/ble/command/BleReadCharacteristicCommand$Result;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
