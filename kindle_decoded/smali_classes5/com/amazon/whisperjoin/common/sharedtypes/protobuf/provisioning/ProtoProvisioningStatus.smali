.class public Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/ProtoProvisioningStatus;
.super Ljava/lang/Object;
.source "ProtoProvisioningStatus.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;",
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

.method private getProtobufState(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;
    .locals 0

    .line 40
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->getValue()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->valueOf(I)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    move-result-object p1

    return-object p1
.end method

.method private getState(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;
    .locals 1

    .line 36
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    return-object p1
.end method


# virtual methods
.method public deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;
    .locals 3

    .line 25
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;

    .line 31
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->getState()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/ProtoProvisioningStatus;->getState(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->getInsecureModeSupported()Z

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;Z)V

    return-object v0

    :catch_0
    move-exception p1

    .line 27
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
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/ProtoProvisioningStatus;->deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;)[B
    .locals 2

    .line 13
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;->getProvisioningState()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/ProtoProvisioningStatus;->getProtobufState(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;->setState(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;

    .line 15
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;->insecureModeSupported()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;->setInsecureModeSupported(Z)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;

    .line 16
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)[B
    .locals 0

    .line 10
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/ProtoProvisioningStatus;->serialize(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;)[B

    move-result-object p1

    return-object p1
.end method
