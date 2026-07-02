.class Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$8;
.super Ljava/lang/Object;
.source "BasicBLEDevice.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->discoverServices()Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Throwable;",
        "Lio/reactivex/SingleSource<",
        "Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand$Result;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Throwable;)Lio/reactivex/SingleSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/reactivex/SingleSource<",
            "Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand$Result;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;

    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->DISCOVER_GATT_SERVICES:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    invoke-direct {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    invoke-static {p1}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

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

    .line 154
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$8;->apply(Ljava/lang/Throwable;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
