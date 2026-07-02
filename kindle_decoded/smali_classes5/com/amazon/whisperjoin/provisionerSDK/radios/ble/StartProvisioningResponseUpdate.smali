.class public Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioningResponseUpdate;
.super Ljava/lang/Object;
.source "StartProvisioningResponseUpdate.java"

# interfaces
.implements Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;


# instance fields
.field private mStartProvisioningResponseFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/FutureTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/FutureTask<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningResponse;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioningResponseUpdate;->mStartProvisioningResponseFuture:Ljava/util/concurrent/FutureTask;

    return-void
.end method


# virtual methods
.method public notify(Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;
    .locals 2

    .line 23
    invoke-virtual {p1}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->START_PROVISIONING_RESPONSE_CHARACTERISTIC_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 24
    new-instance p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;-><init>(ZLcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;)V

    return-object p1

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioningResponseUpdate;->mStartProvisioningResponseFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->run()V

    .line 29
    new-instance p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;-><init>(ZLcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;)V

    return-object p1
.end method
