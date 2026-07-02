.class Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;
.super Ljava/lang/Object;
.source "SendCommand.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[B>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.whisperjoin.provisionerSDK.radios.ble.SendCommand"


# instance fields
.field final mCommand:Lcom/amazon/whisperbridge/constants/Command;

.field private final mEncodingHelpers:Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;

.field final mGattCharacteristicClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

.field private final mOutstream:Ljava/io/ByteArrayOutputStream;

.field final mPayload:[B

.field private final mSendCommandResponseFuture:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseFuture;

.field private final mSendCommandResponseUpdate:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;

.field private final mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

.field private final mWJPacketSerializer:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/WJPacketSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;[BLcom/amazon/whisperbridge/constants/Command;Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mOutstream:Ljava/io/ByteArrayOutputStream;

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 55
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mGattCharacteristicClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    .line 56
    iput-object p3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mCommand:Lcom/amazon/whisperbridge/constants/Command;

    .line 57
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mPayload:[B

    .line 58
    iput-object p4, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mEncodingHelpers:Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;

    .line 59
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;

    invoke-direct {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;-><init>()V

    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    .line 60
    new-instance p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/WJPacketSerializer$DefaultWJPacketSerializer;

    invoke-direct {p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/WJPacketSerializer$DefaultWJPacketSerializer;-><init>()V

    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mWJPacketSerializer:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/WJPacketSerializer;

    .line 61
    new-instance p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseFuture;

    iget-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mOutstream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1, p2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseFuture;-><init>(Ljava/io/ByteArrayOutputStream;)V

    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mSendCommandResponseFuture:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseFuture;

    .line 62
    new-instance p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;

    iget-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mGattCharacteristicClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    iget-object p3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mOutstream:Ljava/io/ByteArrayOutputStream;

    iget-object p4, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mSendCommandResponseFuture:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseFuture;

    invoke-direct {p1, p2, p3, p4}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;Ljava/io/ByteArrayOutputStream;Ljava/util/concurrent/FutureTask;)V

    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mSendCommandResponseUpdate:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;

    .line 63
    sget-object p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "created command : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mCommand:Lcom/amazon/whisperbridge/constants/Command;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "encoding helpers can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "command can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getCommandUUID(Lcom/amazon/whisperbridge/constants/Command;)Ljava/util/UUID;
    .locals 4

    .line 155
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand$1;->$SwitchMap$com$amazon$whisperbridge$constants$Command:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, " is not supported on this device/transport"

    const-string v2, "command : "

    packed-switch v0, :pswitch_data_0

    .line 211
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :pswitch_0
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->GET_PROVISIONING_FAILURE_CAUSE_UUID:Ljava/util/UUID;

    return-object p1

    .line 203
    :pswitch_1
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->JPAKE_ROUND3_COMMAND_UUID:Ljava/util/UUID;

    return-object p1

    .line 201
    :pswitch_2
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->JPAKE_ROUND2_COMMAND_UUID:Ljava/util/UUID;

    return-object p1

    .line 199
    :pswitch_3
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->JPAKE_ROUND1_COMMAND_UUID:Ljava/util/UUID;

    return-object p1

    .line 197
    :pswitch_4
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->REFRESH_CBL_REGISTRATION_DETAILS_UUID:Ljava/util/UUID;

    return-object p1

    .line 195
    :pswitch_5
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->REGISTER_WITH_CODE_BASED_LINKING:Ljava/util/UUID;

    return-object p1

    .line 193
    :pswitch_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :pswitch_7
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->GET_DEVICE_DETAILS_UUID:Ljava/util/UUID;

    return-object p1

    .line 189
    :pswitch_8
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->DELETE_CONFIGURATION_SET_UUID:Ljava/util/UUID;

    return-object p1

    .line 187
    :pswitch_9
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->DELETE_CONFIGURATION_UUID:Ljava/util/UUID;

    return-object p1

    .line 185
    :pswitch_a
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->GET_CONFIGURATION_UUID:Ljava/util/UUID;

    return-object p1

    .line 183
    :pswitch_b
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->SET_CONFIGURATION_UUID:Ljava/util/UUID;

    return-object p1

    .line 181
    :pswitch_c
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->AUTHENTICATED_ECDHE_COMMAND_UUID:Ljava/util/UUID;

    return-object p1

    .line 179
    :pswitch_d
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->UNAUTHENTICATED_ECDHE_COMMAND_UUID:Ljava/util/UUID;

    return-object p1

    .line 177
    :pswitch_e
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->RETRIEVE_EVENT_OBJECT_UUID:Ljava/util/UUID;

    return-object p1

    .line 175
    :pswitch_f
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->RETRIEVE_SUPPORTED_EVENTS_UUID:Ljava/util/UUID;

    return-object p1

    .line 173
    :pswitch_10
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->STOP_PROVISIONING_COMMAND_UUID:Ljava/util/UUID;

    return-object p1

    .line 171
    :pswitch_11
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->PROVISIONING_COMPLETE_UUID:Ljava/util/UUID;

    return-object p1

    .line 169
    :pswitch_12
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->SAVE_CONFIGURED_NETWORK_COMMAND_UUID:Ljava/util/UUID;

    return-object p1

    .line 167
    :pswitch_13
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->REFRESH_WIFI_CONNECTION_DETAILS_UUID:Ljava/util/UUID;

    return-object p1

    .line 165
    :pswitch_14
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->DELETE_ALL_CONFIGURED_NETWORKS_COMMAND_UUID:Ljava/util/UUID;

    return-object p1

    .line 163
    :pswitch_15
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->DELETE_CONFIGURED_NETWORK_COMMAND_UUID:Ljava/util/UUID;

    return-object p1

    .line 161
    :pswitch_16
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->INITIATE_VISIBLE_NETWORK_SCAN_COMMAND_UUID:Ljava/util/UUID;

    return-object p1

    .line 159
    :pswitch_17
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->CONNECT_TO_CONFIGURED_NETWORK_COMMAND_UUID:Ljava/util/UUID;

    return-object p1

    .line 157
    :pswitch_18
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->GET_VISIBLE_NETWORKS_COMMAND_UUID:Ljava/util/UUID;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeCommand(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mGattCharacteristicClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->addPendingUpdate(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;)V

    .line 105
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mGattCharacteristicClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->PROVISIONING_COMMAND_CHARACTERISTIC_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->getBleGattCharacteristic(Ljava/util/UUID;)Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;

    move-result-object v0

    .line 109
    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->DATA:Lcom/amazon/whisperbridge/constants/Command;

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mCommand:Lcom/amazon/whisperbridge/constants/Command;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mEncodingHelpers:Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mPayload:[B

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;->decodeCommand([B)Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers$CommandInformation;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    new-instance v3, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;

    invoke-interface {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers$CommandInformation;->getCommand()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers$CommandInformation;->getPayload()[B

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;-><init>(Ljava/util/UUID;[B)V

    invoke-interface {v2, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;->serialize(Ljava/lang/Object;)[B

    move-result-object v1

    goto :goto_0

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mCommand:Lcom/amazon/whisperbridge/constants/Command;

    invoke-direct {p0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->getCommandUUID(Lcom/amazon/whisperbridge/constants/Command;)Ljava/util/UUID;

    move-result-object v1

    .line 115
    sget-object v2, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WriteCommand UUID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    new-instance v3, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;

    iget-object v4, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mPayload:[B

    invoke-direct {v3, v1, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;-><init>(Ljava/util/UUID;[B)V

    invoke-interface {v2, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;->serialize(Ljava/lang/Object;)[B

    move-result-object v1

    .line 119
    :goto_0
    sget-object v2, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->TAG:Ljava/lang/String;

    const-string v3, "Provisioning Command Bytes"

    invoke-static {v2, v3, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->byteStruct(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 121
    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mWJPacketSerializer:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/WJPacketSerializer;

    invoke-interface {v2, v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/WJPacketSerializer;->serialize([B)Ljava/util/List;

    move-result-object v1

    .line 124
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;

    .line 125
    iget-object v3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    invoke-interface {v3, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;->serialize(Ljava/lang/Object;)[B

    move-result-object v3

    .line 126
    sget-object v4, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Serialized Packet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->byteStruct(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 128
    invoke-virtual {v0, v3}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->setStoredData([B)V

    const/4 v2, 0x0

    .line 132
    :try_start_0
    iget-object v3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mGattCharacteristicClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    sget-object v4, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->PROVISIONING_COMMAND_CHARACTERISTIC_UUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->writeCharacteristic(Ljava/util/UUID;)Ljava/util/concurrent/Future;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    sget-object v3, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "sending command packet"

    invoke-static {v3, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperbridge/ble/command/BleWriteCharacteristicCommand$Result;

    iget v2, v2, Lcom/amazon/whisperbridge/ble/command/BleWriteCharacteristicCommand$Result;->status:I

    if-nez v2, :cond_1

    goto :goto_1

    .line 144
    :cond_1
    sget-object p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->TAG:Ljava/lang/String;

    const-string v0, "failed to send command"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mCommand:Lcom/amazon/whisperbridge/constants/Command;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->CONFIRM_WRITE_CHARACTERISTIC_PROVISIONING_COMMAND:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    throw p1

    :catch_0
    move-exception v0

    .line 134
    sget-object v1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->TAG:Ljava/lang/String;

    const-string v3, "error in writeCharacteristic"

    invoke-static {v1, v3, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mSendCommandResponseUpdate:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;->cancelFuture(Ljava/util/concurrent/Future;)V

    .line 136
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mGattCharacteristicClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    invoke-virtual {v1, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->markUpdated(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;)V

    .line 138
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->INITIATE_WRITE_CHARACTERISTIC_PROVISIONING_COMMAND:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    invoke-direct {p1, v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;-><init>(Ljava/lang/Throwable;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    throw p1

    .line 151
    :cond_2
    sget-object p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->TAG:Ljava/lang/String;

    const-string v0, "Command sent"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->call()[B

    move-result-object v0

    return-object v0
.end method

.method public call()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mSendCommandResponseUpdate:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseUpdate;

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->writeCommand(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;)V

    .line 94
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;->mSendCommandResponseFuture:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
