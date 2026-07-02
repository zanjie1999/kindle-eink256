.class public Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/registration/ProtoCBLRegistrationRequest;
.super Ljava/lang/Object;
.source "ProtoCBLRegistrationRequest.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;",
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
.method public deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;
    .locals 4

    .line 26
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;

    .line 32
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->getLinkCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->getExpiration()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;-><init>(Ljava/lang/String;J)V

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
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/registration/ProtoCBLRegistrationRequest;->deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;)[B
    .locals 3

    .line 14
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;->getLinkCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->setLinkCode(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    .line 16
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;->getExpiration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->setExpiration(J)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    .line 17
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)[B
    .locals 0

    .line 10
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/registration/ProtoCBLRegistrationRequest;->serialize(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;)[B

    move-result-object p1

    return-object p1
.end method
