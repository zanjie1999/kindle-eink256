.class public Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;
.super Ljava/lang/Object;
.source "SendCommandResponseUpdate.java"

# interfaces
.implements Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.whisperjoin.provisionerSDK.radios.ble.SendCommandResponseUpdate"


# instance fields
.field private final mClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

.field private final mOutstream:Ljava/io/ByteArrayOutputStream;

.field private final mSendCommandResponseFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "[B>;"
        }
    .end annotation
.end field

.field private final mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;Ljava/io/ByteArrayOutputStream;Ljava/util/concurrent/FutureTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;",
            "Ljava/io/ByteArrayOutputStream;",
            "Ljava/util/concurrent/FutureTask<",
            "[B>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    .line 35
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->mClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    .line 36
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->mOutstream:Ljava/io/ByteArrayOutputStream;

    .line 37
    iput-object p3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->mSendCommandResponseFuture:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method private readCommandReponse(Ljava/util/concurrent/FutureTask;Ljava/io/ByteArrayOutputStream;Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;
    .locals 7

    const/4 v0, 0x0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->mClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->PROVISIONING_COMMAND_RESPONSE_CHARACTERISTIC_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->readCharacteristic(Ljava/util/UUID;)Ljava/util/concurrent/Future;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 56
    :try_start_1
    sget-object v2, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "reading provisioning command response"

    invoke-static {v2, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperbridge/ble/command/BleReadCharacteristicCommand$Result;

    iget v2, v2, Lcom/amazon/whisperbridge/ble/command/BleReadCharacteristicCommand$Result;->status:I

    .line 59
    sget-object v3, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "provisioning command read status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_2

    .line 67
    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->mClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    sget-object v3, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->PROVISIONING_COMMAND_RESPONSE_CHARACTERISTIC_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->getBleGattCharacteristic(Ljava/util/UUID;)Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;

    move-result-object v2

    .line 68
    iget-object v3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    invoke-virtual {v2}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->getStoredData()[B

    move-result-object v4

    const-class v5, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;

    invoke-static {v5}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;->deserialize([BLcom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;

    .line 70
    invoke-virtual {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->getPayload()[B

    move-result-object v4

    .line 72
    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 73
    sget-object p2, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received Incoming Packet Payload "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->byteStruct(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 77
    invoke-static {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->createNextResponsePacket(Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;)Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;

    move-result-object p2

    .line 79
    sget-object v4, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Next Payload Request Packet: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->getPayload()[B

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->byteStruct(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 81
    iget-object v4, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    invoke-interface {v4, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p2

    .line 83
    sget-object v4, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->TAG:Ljava/lang/String;

    const-string v5, "Writing Serialized Next Payload Request Packet"

    invoke-static {v4, v5, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->byteStruct(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 84
    invoke-virtual {v2, p2}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->setStoredData([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    :try_start_2
    iget-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->mClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->PROVISIONING_COMMAND_RESPONSE_CHARACTERISTIC_UUID:Ljava/util/UUID;

    invoke-virtual {p2, v2}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->writeCharacteristic(Ljava/util/UUID;)Ljava/util/concurrent/Future;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 98
    :try_start_3
    sget-object v2, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "waiting for response packet to be acknowledged"

    invoke-static {v2, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperbridge/ble/command/BleWriteCharacteristicCommand$Result;

    iget p2, p2, Lcom/amazon/whisperbridge/ble/command/BleWriteCharacteristicCommand$Result;->status:I

    if-nez p2, :cond_1

    .line 108
    invoke-virtual {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->hasAdditionalChunks()Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 109
    sget-object p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->TAG:Ljava/lang/String;

    const-string p2, "additional packets pending"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;

    invoke-direct {p1, v2, p3}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;-><init>(ZLcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;)V

    return-object p1

    .line 113
    :cond_0
    sget-object p2, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->TAG:Ljava/lang/String;

    const-string p3, "all packets response packets processed"

    invoke-static {p2, p3}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->run()V

    .line 116
    new-instance p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;

    invoke-direct {p1, v2, v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;-><init>(ZLcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;)V

    return-object p1

    .line 101
    :cond_1
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;

    const-string p3, "Failed to send command, next payload request status was not successful"

    .line 103
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->CONFIRM_WRITE_CHARACTERISTIC_REQUEST_ADDITIONAL_COMMAND_RESPONSE_PACKET:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    invoke-direct {p1, p3, p2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    throw p1

    :catch_0
    move-exception p1

    .line 91
    new-instance p2, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;

    const-string p3, "Error while trying to write request for next packet"

    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->INITIATE_WRITE_CHARACTERISTIC_REQUEST_ADDITIONAL_COMMAND_RESPONSE_PACKET:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    invoke-direct {p2, p3, p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    throw p2

    .line 61
    :cond_2
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;

    const-string p2, "Failed to send command, failed to read response characteristic"

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->READ_CHARACTERISTIC_COMMAND_RESPONSE:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    invoke-direct {p1, p2, p3, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 119
    :goto_0
    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->cancelFuture(Ljava/util/concurrent/Future;)V

    .line 120
    sget-object p2, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->TAG:Ljava/lang/String;

    const-string p3, "error getting reading command response"

    invoke-static {p2, p3, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public cancelFuture(Ljava/util/concurrent/Future;)V
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

    .line 127
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public notify(Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;
    .locals 3

    .line 43
    invoke-virtual {p1}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->PROVISIONING_COMMAND_RESPONSE_CHARACTERISTIC_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not correct uuid for notify : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " expected : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->PROVISIONING_COMMAND_RESPONSE_CHARACTERISTIC_UUID:Ljava/util/UUID;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;-><init>(ZLcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;)V

    return-object p1

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->mSendCommandResponseFuture:Ljava/util/concurrent/FutureTask;

    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->mOutstream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p1, v0, p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->readCommandReponse(Ljava/util/concurrent/FutureTask;Ljava/io/ByteArrayOutputStream;Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;

    move-result-object p1

    return-object p1
.end method
