.class Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$13;
.super Ljava/lang/Object;
.source "BasicBLEDevice.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/SingleSource<",
        "Lcom/amazon/whisperbridge/ble/command/BleReadCharacteristicCommand$Result;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

.field final synthetic val$characteristicUUID:Ljava/util/UUID;

.field final synthetic val$serviceUUID:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$13;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$13;->val$serviceUUID:Ljava/util/UUID;

    iput-object p3, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$13;->val$characteristicUUID:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/SingleSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/SingleSource<",
            "Lcom/amazon/whisperbridge/ble/command/BleReadCharacteristicCommand$Result;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$13;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

    invoke-static {v0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->access$000(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)Lcom/amazon/whisperbridge/ble/BleGattClient;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$13;->val$serviceUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperbridge/ble/BleGattClient;->getServiceClient(Ljava/util/UUID;)Lcom/amazon/whisperbridge/ble/BleGattServiceClient;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$13;->val$characteristicUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->readCharacteristic(Ljava/util/UUID;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Single;->fromFuture(Ljava/util/concurrent/Future;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$13;->call()Lio/reactivex/SingleSource;

    move-result-object v0

    return-object v0
.end method
