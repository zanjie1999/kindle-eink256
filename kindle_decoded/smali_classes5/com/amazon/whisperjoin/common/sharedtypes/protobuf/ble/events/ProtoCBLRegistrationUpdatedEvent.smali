.class public Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoCBLRegistrationUpdatedEvent;
.super Ljava/lang/Object;
.source "ProtoCBLRegistrationUpdatedEvent.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/CBLRegistrationUpdatedEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final protoCBLRegistrationDetails:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/registration/ProtoCBLRegistrationDetails;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/registration/ProtoCBLRegistrationDetails;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/registration/ProtoCBLRegistrationDetails;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoCBLRegistrationUpdatedEvent;->protoCBLRegistrationDetails:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/registration/ProtoCBLRegistrationDetails;

    return-void
.end method


# virtual methods
.method public deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/CBLRegistrationUpdatedEvent;
    .locals 3

    .line 29
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationUpdatedEventClass$ProtobufCBLRegistrationUpdatedEvent;->parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationUpdatedEventClass$ProtobufCBLRegistrationUpdatedEvent;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/CBLRegistrationUpdatedEvent;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoCBLRegistrationUpdatedEvent;->protoCBLRegistrationDetails:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/registration/ProtoCBLRegistrationDetails;

    .line 35
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationUpdatedEventClass$ProtobufCBLRegistrationUpdatedEvent;->getEventData()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/registration/ProtoCBLRegistrationDetails;->getCBLRegistrationDetails(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/CBLRegistrationUpdatedEvent;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 31
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

    .line 12
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoCBLRegistrationUpdatedEvent;->deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/CBLRegistrationUpdatedEvent;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/CBLRegistrationUpdatedEvent;)[B
    .locals 2

    .line 17
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationUpdatedEventClass$ProtobufCBLRegistrationUpdatedEvent;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationUpdatedEventClass$ProtobufCBLRegistrationUpdatedEvent$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/UuidHelpers;->encodeIntoByteArray(Ljava/util/UUID;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationUpdatedEventClass$ProtobufCBLRegistrationUpdatedEvent$Builder;->setUuid(Lcom/google/protobuf/ByteString;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationUpdatedEventClass$ProtobufCBLRegistrationUpdatedEvent$Builder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoCBLRegistrationUpdatedEvent;->protoCBLRegistrationDetails:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/registration/ProtoCBLRegistrationDetails;

    .line 19
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;->getEventData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails;

    invoke-virtual {v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/registration/ProtoCBLRegistrationDetails;->getProtobufCBLRegistrationDetails(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationUpdatedEventClass$ProtobufCBLRegistrationUpdatedEvent$Builder;->setEventData(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationUpdatedEventClass$ProtobufCBLRegistrationUpdatedEvent$Builder;

    .line 20
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationUpdatedEventClass$ProtobufCBLRegistrationUpdatedEvent$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationUpdatedEventClass$ProtobufCBLRegistrationUpdatedEvent;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)[B
    .locals 0

    .line 12
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/CBLRegistrationUpdatedEvent;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoCBLRegistrationUpdatedEvent;->serialize(Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/CBLRegistrationUpdatedEvent;)[B

    move-result-object p1

    return-object p1
.end method
