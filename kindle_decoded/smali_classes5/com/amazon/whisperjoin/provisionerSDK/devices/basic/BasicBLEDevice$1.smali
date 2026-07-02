.class Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$1;
.super Ljava/lang/Object;
.source "BasicBLEDevice.java"

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperbridge/ble/BleGattClient;",
        "Lio/reactivex/CompletableSource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

.field final synthetic val$bleDevice:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$1;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$1;->val$bleDevice:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperbridge/ble/BleGattClient;)Lio/reactivex/CompletableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$1;->val$bleDevice:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->access$002(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;Lcom/amazon/whisperbridge/ble/BleGattClient;)Lcom/amazon/whisperbridge/ble/BleGattClient;

    .line 98
    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$1;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

    invoke-static {p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->access$100(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)Lio/reactivex/Completable;

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

    .line 94
    check-cast p1, Lcom/amazon/whisperbridge/ble/BleGattClient;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$1;->apply(Lcom/amazon/whisperbridge/ble/BleGattClient;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
