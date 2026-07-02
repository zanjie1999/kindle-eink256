.class public Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoAuthenticatedEcdheKeyExchangeRequest;
.super Ljava/lang/Object;
.source "ProtoAuthenticatedEcdheKeyExchangeRequest.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;",
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
.method public deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;
    .locals 2

    .line 25
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeRequest;->parseFrom([B)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeRequest;

    move-result-object p1

    .line 27
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;

    .line 28
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeRequest;->getDerECDHEPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeRequest;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;-><init>([B[B)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 32
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;

    const-string v1, "Unable to deserialize AuthenticatedEcdheKeyExchangeRequest"

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic deserialize([B)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoAuthenticatedEcdheKeyExchangeRequest;->deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;)[B
    .locals 2

    .line 15
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeRequest;->newBuilder()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeRequest$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;->getDerEncodedProvisionerPublicKey()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeRequest$Builder;->setDerECDHEPublicKey(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeRequest$Builder;

    .line 17
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;->getEcdsaSignature()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeRequest$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeRequest$Builder;

    .line 18
    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeRequest$Builder;->build()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)[B
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoAuthenticatedEcdheKeyExchangeRequest;->serialize(Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;)[B

    move-result-object p1

    return-object p1
.end method
