.class public Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoProvisionableEventNotification;
.super Ljava/lang/Object;
.source "ProtoProvisionableEventNotification.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;
    .locals 3

    .line 23
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventNotificationClass$ProtobufProvisionableEventNotification;->parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventNotificationClass$ProtobufProvisionableEventNotification;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventNotificationClass$ProtobufProvisionableEventNotification;->getEventKey()I

    move-result v1

    .line 29
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventNotificationClass$ProtobufProvisionableEventNotification;->getEventType()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;-><init>(II)V

    return-object v0

    :catch_0
    move-exception p1

    .line 25
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

    .line 9
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoProvisionableEventNotification;->deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;)[B
    .locals 2

    .line 12
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventNotificationClass$ProtobufProvisionableEventNotification;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventNotificationClass$ProtobufProvisionableEventNotification$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->getEventType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventNotificationClass$ProtobufProvisionableEventNotification$Builder;->setEventType(I)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventNotificationClass$ProtobufProvisionableEventNotification$Builder;

    .line 14
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->getEventKey()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventNotificationClass$ProtobufProvisionableEventNotification$Builder;->setEventKey(I)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventNotificationClass$ProtobufProvisionableEventNotification$Builder;

    .line 15
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventNotificationClass$ProtobufProvisionableEventNotification$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventNotificationClass$ProtobufProvisionableEventNotification;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)[B
    .locals 0

    .line 9
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoProvisionableEventNotification;->serialize(Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;)[B

    move-result-object p1

    return-object p1
.end method
