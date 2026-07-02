.class public Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/commands/ProtoProvisioningCommand;
.super Ljava/lang/Object;
.source "ProtoProvisioningCommand.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;
    .locals 3

    .line 27
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;->parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;

    .line 32
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;->getUuid()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/UuidHelpers;->decodeIntoUuid([B)Ljava/util/UUID;

    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;->getData()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    :goto_0
    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;-><init>(Ljava/util/UUID;[B)V

    return-object v0

    :catch_0
    move-exception p1

    .line 29
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

    .line 11
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/commands/ProtoProvisioningCommand;->deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;)[B
    .locals 2

    .line 14
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;->getIdentifier()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/UuidHelpers;->encodeIntoByteArray(Ljava/util/UUID;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->setUuid(Lcom/google/protobuf/ByteString;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    .line 17
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;->getData()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)[B
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/commands/ProtoProvisioningCommand;->serialize(Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;)[B

    move-result-object p1

    return-object p1
.end method
