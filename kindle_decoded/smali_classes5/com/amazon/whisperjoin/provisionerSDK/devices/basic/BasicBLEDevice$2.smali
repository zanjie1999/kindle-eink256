.class Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$2;
.super Ljava/lang/Object;
.source "BasicBLEDevice.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->waitForConnection(Z)Lio/reactivex/Completable;
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
        "Lcom/amazon/whisperbridge/ble/BleGattClient;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

.field final synthetic val$autoconnect:Z

.field final synthetic val$bleDevice:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;Z)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$2;->val$bleDevice:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

    iput-boolean p3, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$2;->val$autoconnect:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/SingleSource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/SingleSource<",
            "Lcom/amazon/whisperbridge/ble/BleGattClient;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

    invoke-static {v0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->access$400(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)Lcom/amazon/whisperbridge/ble/BleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

    invoke-static {v1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->access$200(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

    invoke-static {v2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->access$300(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$2;->val$bleDevice:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

    iget-boolean v4, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$2;->val$autoconnect:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/whisperbridge/ble/BleManager;->connectToServer(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/amazon/whisperbridge/ble/BleGattClient$Callback;Z)Lcom/amazon/whisperbridge/ble/BleGattClient;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

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

    .line 87
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$2;->call()Lio/reactivex/SingleSource;

    move-result-object v0

    return-object v0
.end method
