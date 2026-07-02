.class public Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoSecureMessage;
.super Ljava/lang/Object;
.source "ProtoSecureMessage.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
        "Lcom/amazon/whispercloak/SecureMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method createAESGCMSecureMessage(Lcom/amazon/whispercloak/SecureMessage;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;
    .locals 2

    .line 23
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->newBuilder()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lcom/amazon/whispercloak/SecureMessage;->getCipherText()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->setPayload(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    .line 25
    invoke-virtual {p1}, Lcom/amazon/whispercloak/SecureMessage;->getMac()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->setMac(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    .line 26
    invoke-virtual {p1}, Lcom/amazon/whispercloak/SecureMessage;->getIv()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->setInitializationVector(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    .line 27
    invoke-virtual {p1}, Lcom/amazon/whispercloak/SecureMessage;->getAad()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/whispercloak/SecureMessage;->getAad()[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/amazon/whispercloak/SecureMessage;->getAad()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->setAad(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    goto :goto_0

    .line 30
    :cond_0
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->setAad(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    .line 32
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->build()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object p1

    return-object p1
.end method

.method createSecureMessage(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;)Lcom/amazon/whispercloak/SecureMessage;
    .locals 5

    .line 36
    new-instance v0, Lcom/amazon/whispercloak/SecureMessage;

    .line 37
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->getInitializationVector()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    .line 39
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->getMac()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    .line 40
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->getAad()Lcom/google/protobuf/ByteString;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->getAad()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    :goto_0
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/amazon/whispercloak/SecureMessage;-><init>([B[B[B[B)V

    return-object v0
.end method

.method public deserialize([B)Lcom/amazon/whispercloak/SecureMessage;
    .locals 2

    .line 47
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->parseFrom([B)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoSecureMessage;->createSecureMessage(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;)Lcom/amazon/whispercloak/SecureMessage;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 50
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;

    const-string/jumbo v1, "unable to deserialize AesGCMSecureMessage"

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic deserialize([B)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoSecureMessage;->deserialize([B)Lcom/amazon/whispercloak/SecureMessage;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/amazon/whispercloak/SecureMessage;)[B
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoSecureMessage;->createAESGCMSecureMessage(Lcom/amazon/whispercloak/SecureMessage;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)[B
    .locals 0

    .line 15
    check-cast p1, Lcom/amazon/whispercloak/SecureMessage;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoSecureMessage;->serialize(Lcom/amazon/whispercloak/SecureMessage;)[B

    move-result-object p1

    return-object p1
.end method
