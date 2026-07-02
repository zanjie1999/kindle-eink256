.class public Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/ProtoWhisperJoinBlePacket;
.super Ljava/lang/Object;
.source "ProtoWhisperJoinBlePacket.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;
    .locals 4

    .line 26
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getPacketKey()I

    move-result v1

    .line 32
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getChunkIndex()I

    move-result v2

    .line 33
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getAdditionalChunks()Z

    move-result v3

    .line 34
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;-><init>(IIZ[B)V

    return-object v0

    :catch_0
    move-exception p1

    .line 28
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic deserialize([B)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/ProtoWhisperJoinBlePacket;->deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;)[B
    .locals 2

    .line 13
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->getPacketKey()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->setPacketKey(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    .line 15
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->getChunkIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->setChunkIndex(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    .line 16
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->hasAdditionalChunks()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->setAdditionalChunks(Z)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    .line 17
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->getPayload()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->setPayload(Lcom/google/protobuf/ByteString;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    .line 18
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)[B
    .locals 0

    .line 10
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/ProtoWhisperJoinBlePacket;->serialize(Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;)[B

    move-result-object p1

    return-object p1
.end method
