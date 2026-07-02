.class public Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoAuthenticatedEcdheKeyExchangeResponse;
.super Ljava/lang/Object;
.source "ProtoAuthenticatedEcdheKeyExchangeResponse.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeResponse;
    .locals 2

    .line 26
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->parseFrom([B)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;

    move-result-object p1

    .line 28
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoSecureMessage;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoSecureMessage;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->getAuthenticationDataSecureMessage()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoSecureMessage;->createSecureMessage(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;)Lcom/amazon/whispercloak/SecureMessage;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeResponse;

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->getDerECDHEPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeResponse;-><init>([BLcom/amazon/whispercloak/SecureMessage;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 32
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;

    const-string v1, "Unable to deserialize AuthenticatedEcdheKeyExchangeResponse"

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic deserialize([B)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoAuthenticatedEcdheKeyExchangeResponse;->deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeResponse;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeResponse;)[B
    .locals 3

    .line 16
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->newBuilder()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoSecureMessage;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoSecureMessage;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeResponse;->getSecureMessage()Lcom/amazon/whispercloak/SecureMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoSecureMessage;->createAESGCMSecureMessage(Lcom/amazon/whispercloak/SecureMessage;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;->setAuthenticationDataSecureMessage(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;

    .line 18
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeResponse;->getProvisionableDerPublicKey()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;->setDerECDHEPublicKey(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;

    .line 19
    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;->build()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)[B
    .locals 0

    .line 12
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoAuthenticatedEcdheKeyExchangeResponse;->serialize(Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeResponse;)[B

    move-result-object p1

    return-object p1
.end method
