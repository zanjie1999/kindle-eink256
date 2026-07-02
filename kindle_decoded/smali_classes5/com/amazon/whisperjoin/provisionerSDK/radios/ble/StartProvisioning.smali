.class Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioning;
.super Ljava/lang/Object;
.source "StartProvisioning.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/whisperbridge/ProvisioningStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final mClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

.field final mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

.field final mStartProvisioningResponseFuture:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioningResponseFuture;

.field final mStartProvisioningResponseUpdate:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioningResponseUpdate;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioning;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    if-eqz p1, :cond_0

    .line 31
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioning;->mClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    .line 32
    new-instance p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioningResponseFuture;

    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioning;->mClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    invoke-direct {p1, v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioningResponseFuture;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;)V

    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioning;->mStartProvisioningResponseFuture:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioningResponseFuture;

    .line 33
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioningResponseUpdate;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioningResponseUpdate;-><init>(Ljava/util/concurrent/FutureTask;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioning;->mStartProvisioningResponseUpdate:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioningResponseUpdate;

    .line 34
    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioning;->mClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->addPendingUpdate(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;)V

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "client can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private cancelFuture(Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 94
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method private cleanupFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/whisperbridge/ble/command/BleWriteCharacteristicCommand$Result;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioning;->cancelFuture(Ljava/util/concurrent/Future;)V

    .line 89
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioning;->cancel()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/whisperbridge/ProvisioningStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioning;->mClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->START_PROVISIONING_REQUEST_CHARACTERISTIC_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->getBleGattCharacteristic(Ljava/util/UUID;)Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;

    move-result-object v0

    .line 50
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningRequest;->createRequest()Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningRequest;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioning;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    invoke-interface {v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;->serialize(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->setStoredData([B)V

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioning;->mClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    invoke-virtual {v0}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->writeCharacteristic(Ljava/util/UUID;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperbridge/ble/command/BleWriteCharacteristicCommand$Result;

    iget v1, v1, Lcom/amazon/whisperbridge/ble/command/BleWriteCharacteristicCommand$Result;->status:I

    if-nez v1, :cond_1

    .line 73
    :try_start_1
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioning;->mStartProvisioningResponseFuture:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioningResponseFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningResponse;->getStatus()B

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioning;->mClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->enableProvisioningCommandResponseNotifications()V

    .line 82
    new-instance v0, Lcom/amazon/whisperbridge/ProvisioningStatus;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/amazon/whisperbridge/ProvisioningStatus;-><init>(Z)V

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Lcom/amazon/whisperbridge/ProvisioningStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whisperbridge/ProvisioningStatus;-><init>(Z)V

    return-object v0

    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->READ_CHARACTERISTIC_START_PROVISIONING_REQUEST_RESPONSE:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    invoke-direct {v1, v0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;-><init>(Ljava/lang/Throwable;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    throw v1

    .line 65
    :cond_1
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioning;->cleanupFuture(Ljava/util/concurrent/Future;)V

    .line 66
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->CONFIRM_WRITE_CHARACTERISTIC_START_PROVISIONING_REQUEST:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;-><init>(Ljava/lang/Integer;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    throw v0

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioning;->cleanupFuture(Ljava/util/concurrent/Future;)V

    .line 59
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->INITIATE_WRITE_CHARACTERISTIC_START_PROVISIONING_REQUEST:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    invoke-direct {v1, v0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;-><init>(Ljava/lang/Throwable;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioning;->call()Lcom/amazon/whisperbridge/ProvisioningStatus;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioning;->mClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioning;->mStartProvisioningResponseUpdate:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioningResponseUpdate;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->markUpdated(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;)V

    return-void
.end method
