.class public final Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;
.super Ljava/lang/Object;
.source "ProtoJPAKEPayloadSerializer.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;


# instance fields
.field private final mEcCurve:Lorg/spongycastle/math/ec/ECCurve;


# direct methods
.method public constructor <init>(Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->getCurve()Lorg/spongycastle/math/ec/ECCurve$Fp;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->mEcCurve:Lorg/spongycastle/math/ec/ECCurve;

    return-void
.end method

.method private deserializeEcPoint(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->mEcCurve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/util/JPAKEProtobufConverter;->convertToECPoint(Lorg/spongycastle/math/ec/ECCurve;Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method

.method private deserializeRound1Payload([B)Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;
    .locals 7

    .line 90
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->parseFrom([B)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    move-result-object p1

    .line 92
    new-instance v4, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

    .line 93
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getKnowledgeProofForX1()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getGv()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->deserializeEcPoint(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 94
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getKnowledgeProofForX1()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getR()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->deserializeUnsignedBigInteger(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;-><init>(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    .line 96
    new-instance v5, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

    .line 97
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getKnowledgeProofForX2()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getGv()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->deserializeEcPoint(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getKnowledgeProofForX2()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getR()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->deserializeUnsignedBigInteger(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;-><init>(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    .line 101
    new-instance v6, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getGx1()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->deserializeEcPoint(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 103
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getGx2()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->deserializeEcPoint(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;-><init>(Ljava/lang/String;Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p1

    .line 107
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;

    const-string v1, "Unable to deserialize JPAKE round 1 payload"

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private deserializeRound2Payload([B)Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;
    .locals 3

    .line 128
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->parseFrom([B)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;

    move-result-object p1

    .line 130
    new-instance v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

    .line 131
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->getKnowledgeProofForX2S()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getGv()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->deserializeEcPoint(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 132
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->getKnowledgeProofForX2S()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getR()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->deserializeUnsignedBigInteger(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;-><init>(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    .line 135
    new-instance v1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->getA()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->deserializeEcPoint(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;-><init>(Ljava/lang/String;Lorg/spongycastle/math/ec/ECPoint;Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 139
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;

    const-string v1, "Unable to deserialize JPAKE round 2 payload"

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private deserializeRound3Payload([B)Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;
    .locals 2

    .line 153
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->parseFrom([B)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    move-result-object p1

    .line 155
    new-instance v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->getMacTag()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->deserializeSignedBigInteger(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;-><init>(Ljava/lang/String;Ljava/math/BigInteger;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 158
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;

    const-string v1, "Unable to deserialize JPAKE round 3 payload"

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private deserializeSignedBigInteger(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Ljava/math/BigInteger;
    .locals 0

    .line 179
    invoke-static {p1}, Lcom/amazon/whisperjoin/util/JPAKEProtobufConverter;->convertToSignedBigInteger(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method private deserializeUnsignedBigInteger(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Ljava/math/BigInteger;
    .locals 0

    .line 175
    invoke-static {p1}, Lcom/amazon/whisperjoin/util/JPAKEProtobufConverter;->convertToUnsignedBigInteger(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method private serializeEcPoint(Lorg/spongycastle/math/ec/ECPoint;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    .locals 0

    .line 171
    invoke-static {p1}, Lcom/amazon/whisperjoin/util/JPAKEProtobufConverter;->convertToBInteger(Lorg/spongycastle/math/ec/ECPoint;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object p1

    return-object p1
.end method

.method private serializeRound1Payload(Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;)[B
    .locals 4

    .line 67
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->newBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->getKnowledgeProofForX1()Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;->getGv()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->serializeEcPoint(Lorg/spongycastle/math/ec/ECPoint;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;->setGv(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    .line 69
    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->getKnowledgeProofForX1()Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;->getR()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->serializeUnsignedBigInteger(Ljava/math/BigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;->setR(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    .line 70
    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;->build()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v0

    .line 73
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->newBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    move-result-object v1

    .line 74
    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->getKnowledgeProofForX2()Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;->getGv()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->serializeEcPoint(Lorg/spongycastle/math/ec/ECPoint;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;->setGv(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    .line 75
    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->getKnowledgeProofForX2()Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;->getR()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->serializeUnsignedBigInteger(Ljava/math/BigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;->setR(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    .line 76
    invoke-virtual {v1}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;->build()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v1

    .line 78
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->newBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    move-result-object v2

    .line 79
    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->setParticipantId(Ljava/lang/String;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    .line 80
    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->getGx1()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->serializeEcPoint(Lorg/spongycastle/math/ec/ECPoint;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->setGx1(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    .line 81
    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->getGx2()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->serializeEcPoint(Lorg/spongycastle/math/ec/ECPoint;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->setGx2(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    .line 82
    invoke-virtual {v2, v0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->setKnowledgeProofForX1(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    .line 83
    invoke-virtual {v2, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->setKnowledgeProofForX2(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    .line 84
    invoke-virtual {v2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->build()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private serializeRound2Payload(Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;)[B
    .locals 3

    .line 113
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->newBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;->getKnowledgeProofForX2s()Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;->getGv()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->serializeEcPoint(Lorg/spongycastle/math/ec/ECPoint;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;->setGv(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    .line 115
    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;->getKnowledgeProofForX2s()Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;->getR()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->serializeUnsignedBigInteger(Ljava/math/BigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;->setR(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    .line 116
    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;->build()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v0

    .line 118
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->newBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    move-result-object v1

    .line 119
    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->setParticipantId(Ljava/lang/String;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    .line 120
    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;->getA()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->serializeEcPoint(Lorg/spongycastle/math/ec/ECPoint;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->setA(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    .line 121
    invoke-virtual {v1, v0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->setKnowledgeProofForX2S(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    .line 122
    invoke-virtual {v1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->build()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private serializeRound3Payload(Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;)[B
    .locals 2

    .line 144
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->newBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    move-result-object v0

    .line 145
    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->setParticipantId(Ljava/lang/String;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    .line 146
    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;->getMacTag()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->serializeSignedBigInteger(Ljava/math/BigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->setMacTag(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    .line 147
    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->build()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private serializeSignedBigInteger(Ljava/math/BigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    .locals 0

    .line 167
    invoke-static {p1}, Lcom/amazon/whisperjoin/util/JPAKEProtobufConverter;->convertToSignedBInteger(Ljava/math/BigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object p1

    return-object p1
.end method

.method private serializeUnsignedBigInteger(Ljava/math/BigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    .locals 0

    .line 163
    invoke-static {p1}, Lcom/amazon/whisperjoin/util/JPAKEProtobufConverter;->convertToUnsignedBInteger(Ljava/math/BigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public deserialize([BLcom/google/common/reflect/TypeToken;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 55
    :cond_0
    const-class v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->deserializeRound1Payload([B)Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;

    move-result-object p1

    return-object p1

    .line 57
    :cond_1
    const-class v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->deserializeRound2Payload([B)Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;

    move-result-object p1

    return-object p1

    .line 59
    :cond_2
    const-class v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 60
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->deserializeRound3Payload([B)Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;

    move-result-object p1

    return-object p1

    .line 62
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not find a serializer to deserialize object."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public serialize(Ljava/lang/Object;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)[B"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 40
    :cond_0
    instance-of v0, p1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;

    if-eqz v0, :cond_1

    .line 41
    check-cast p1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;

    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->serializeRound1Payload(Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;)[B

    move-result-object p1

    return-object p1

    .line 42
    :cond_1
    instance-of v0, p1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;

    if-eqz v0, :cond_2

    .line 43
    check-cast p1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;

    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->serializeRound2Payload(Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;)[B

    move-result-object p1

    return-object p1

    .line 44
    :cond_2
    instance-of v0, p1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;

    if-eqz v0, :cond_3

    .line 45
    check-cast p1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;

    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;->serializeRound3Payload(Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;)[B

    move-result-object p1

    return-object p1

    .line 47
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not find a serializer to serialize object."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
