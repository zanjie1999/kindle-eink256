.class Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$6;
.super Ljava/lang/Object;
.source "BasicBLEDevice.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->disconnect()Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/CompletableSource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$6;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/CompletableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$6;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

    invoke-static {v0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->access$000(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)Lcom/amazon/whisperbridge/ble/BleGattClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperbridge/ble/BleGattClient;->close()V

    .line 130
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

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

    .line 125
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$6;->call()Lio/reactivex/CompletableSource;

    move-result-object v0

    return-object v0
.end method
