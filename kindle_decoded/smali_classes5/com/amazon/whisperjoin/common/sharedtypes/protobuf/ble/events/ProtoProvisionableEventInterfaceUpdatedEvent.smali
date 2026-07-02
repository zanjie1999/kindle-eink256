.class public Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoProvisionableEventInterfaceUpdatedEvent;
.super Ljava/lang/Object;
.source "ProtoProvisionableEventInterfaceUpdatedEvent.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventInterfaceUpdatedEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final protoProvisionableEventTypeCollection:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoProvisionableEventTypeCollection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoProvisionableEventTypeCollection;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoProvisionableEventTypeCollection;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoProvisionableEventInterfaceUpdatedEvent;->protoProvisionableEventTypeCollection:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoProvisionableEventTypeCollection;

    return-void
.end method


# virtual methods
.method public deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventInterfaceUpdatedEvent;
    .locals 3

    .line 30
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventInterfaceUpdatedEventClass$ProtobufProvisionableEventInterfaceUpdatedEvent;->parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventInterfaceUpdatedEventClass$ProtobufProvisionableEventInterfaceUpdatedEvent;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventInterfaceUpdatedEvent;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoProvisionableEventInterfaceUpdatedEvent;->protoProvisionableEventTypeCollection:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoProvisionableEventTypeCollection;

    .line 36
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventInterfaceUpdatedEventClass$ProtobufProvisionableEventInterfaceUpdatedEvent;->getEventData()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoProvisionableEventTypeCollection;->getProvisionableEventTypeCollection(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisionableEventTypeCollection;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventInterfaceUpdatedEvent;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisionableEventTypeCollection;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 32
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

    .line 13
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoProvisionableEventInterfaceUpdatedEvent;->deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventInterfaceUpdatedEvent;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventInterfaceUpdatedEvent;)[B
    .locals 2

    .line 19
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventInterfaceUpdatedEventClass$ProtobufProvisionableEventInterfaceUpdatedEvent;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventInterfaceUpdatedEventClass$ProtobufProvisionableEventInterfaceUpdatedEvent$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/UuidHelpers;->encodeIntoByteArray(Ljava/util/UUID;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventInterfaceUpdatedEventClass$ProtobufProvisionableEventInterfaceUpdatedEvent$Builder;->setUuid(Lcom/google/protobuf/ByteString;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventInterfaceUpdatedEventClass$ProtobufProvisionableEventInterfaceUpdatedEvent$Builder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoProvisionableEventInterfaceUpdatedEvent;->protoProvisionableEventTypeCollection:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoProvisionableEventTypeCollection;

    .line 21
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;->getEventData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisionableEventTypeCollection;

    invoke-virtual {v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoProvisionableEventTypeCollection;->getProtobufProvisionableEventTypeCollection(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisionableEventTypeCollection;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventInterfaceUpdatedEventClass$ProtobufProvisionableEventInterfaceUpdatedEvent$Builder;->setEventData(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventInterfaceUpdatedEventClass$ProtobufProvisionableEventInterfaceUpdatedEvent$Builder;

    .line 22
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventInterfaceUpdatedEventClass$ProtobufProvisionableEventInterfaceUpdatedEvent$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventInterfaceUpdatedEventClass$ProtobufProvisionableEventInterfaceUpdatedEvent;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)[B
    .locals 0

    .line 13
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventInterfaceUpdatedEvent;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoProvisionableEventInterfaceUpdatedEvent;->serialize(Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventInterfaceUpdatedEvent;)[B

    move-result-object p1

    return-object p1
.end method
