.class public Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoProvisionableDeviceAuthenticationData;
.super Ljava/lang/Object;
.source "ProtoProvisionableDeviceAuthenticationData.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getByteArrayList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 57
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getByteStringList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 44
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;
    .locals 2

    .line 28
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->parseFrom([B)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    move-result-object p1

    .line 29
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->getCertificateChainList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoProvisionableDeviceAuthenticationData;->getByteArrayList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 30
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;-><init>(Ljava/util/List;[B)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 32
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;

    const-string v1, "Unable to deserialize ProvisionableDeviceAuthenticationData"

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic deserialize([B)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoProvisionableDeviceAuthenticationData;->deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;)[B
    .locals 2

    .line 17
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->newBuilder()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;->getCertificateChain()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoProvisionableDeviceAuthenticationData;->getByteStringList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->addAllCertificateChain(Ljava/lang/Iterable;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    .line 19
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;->getSignature()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    .line 20
    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->build()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)[B
    .locals 0

    .line 14
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoProvisionableDeviceAuthenticationData;->serialize(Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;)[B

    move-result-object p1

    return-object p1
.end method
