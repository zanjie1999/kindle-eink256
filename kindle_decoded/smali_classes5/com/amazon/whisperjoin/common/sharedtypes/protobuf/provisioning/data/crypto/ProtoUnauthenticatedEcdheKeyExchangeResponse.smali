.class public Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoUnauthenticatedEcdheKeyExchangeResponse;
.super Ljava/lang/Object;
.source "ProtoUnauthenticatedEcdheKeyExchangeResponse.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;
    .locals 2

    .line 41
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;->parseFrom([B)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;->hasAuthenticationDataSecureMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoSecureMessage;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoSecureMessage;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;->getAuthenticationDataSecureMessage()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoSecureMessage;->createSecureMessage(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;)Lcom/amazon/whispercloak/SecureMessage;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;->getDerECDHEPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;-><init>([BLcom/amazon/whispercloak/SecureMessage;)V

    return-object v1

    .line 46
    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;

    .line 47
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;->getDerECDHEPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;-><init>([B)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 49
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;

    const-string v1, "Unable to deserialize UnauthenticatedEcdheKeyExchangeResponse"

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic deserialize([B)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoUnauthenticatedEcdheKeyExchangeResponse;->deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;)[B
    .locals 2

    .line 25
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;->hasSecureMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;->newBuilder()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;->getDerPublicKey()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->setDerECDHEPublicKey(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoSecureMessage;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoSecureMessage;-><init>()V

    .line 28
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;->getSecureMessage()Lcom/amazon/whispercloak/SecureMessage;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoSecureMessage;->createAESGCMSecureMessage(Lcom/amazon/whispercloak/SecureMessage;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->setAuthenticationDataSecureMessage(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    .line 29
    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->build()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1

    .line 32
    :cond_0
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;->newBuilder()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;->getDerPublicKey()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->setDerECDHEPublicKey(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    .line 34
    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->build()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)[B
    .locals 0

    .line 20
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoUnauthenticatedEcdheKeyExchangeResponse;->serialize(Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;)[B

    move-result-object p1

    return-object p1
.end method
