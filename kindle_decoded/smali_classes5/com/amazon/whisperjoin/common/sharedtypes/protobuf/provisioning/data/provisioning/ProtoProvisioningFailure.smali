.class public Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoProvisioningFailure;
.super Ljava/lang/Object;
.source "ProtoProvisioningFailure.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createProvisioningFailureFromProto(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;
    .locals 2

    .line 22
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;
    .locals 3

    .line 29
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoProvisioningFailure;->createProvisioningFailureFromProto(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic deserialize([B)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoProvisioningFailure;->deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;

    move-result-object p1

    return-object p1
.end method

.method public getProtoProvisioningFailure(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;
    .locals 2

    .line 15
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->setErrorCode(I)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    .line 17
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->setMessage(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    .line 18
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;)[B
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoProvisioningFailure;->getProtoProvisioningFailure(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)[B
    .locals 0

    .line 8
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoProvisioningFailure;->serialize(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;)[B

    move-result-object p1

    return-object p1
.end method
