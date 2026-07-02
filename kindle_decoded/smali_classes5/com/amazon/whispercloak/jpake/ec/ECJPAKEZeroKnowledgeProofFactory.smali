.class public Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;
.super Ljava/lang/Object;
.source "ECJPAKEZeroKnowledgeProofFactory.java"


# instance fields
.field final mGroup:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;

.field final mMessageDigest:Lorg/spongycastle/crypto/Digest;

.field final mRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;Ljava/security/SecureRandom;Lorg/spongycastle/crypto/Digest;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->mGroup:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;

    .line 30
    iput-object p2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->mRandom:Ljava/security/SecureRandom;

    .line 31
    iput-object p3, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->mMessageDigest:Lorg/spongycastle/crypto/Digest;

    return-void
.end method

.method private getDigest(Ljava/lang/String;Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;)Ljava/math/BigInteger;
    .locals 5

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p2, v0}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p2

    .line 156
    invoke-virtual {p3, v0}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p3

    .line 157
    invoke-virtual {p4, v0}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p4

    .line 158
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 161
    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->mMessageDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 164
    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->mMessageDigest:Lorg/spongycastle/crypto/Digest;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-interface {v1, v3, v0, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 165
    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->mMessageDigest:Lorg/spongycastle/crypto/Digest;

    array-length v3, p2

    invoke-interface {v1, p2, v0, v3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 168
    iget-object p2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->mMessageDigest:Lorg/spongycastle/crypto/Digest;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v3, p3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-interface {p2, v1, v0, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 169
    iget-object p2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->mMessageDigest:Lorg/spongycastle/crypto/Digest;

    array-length v1, p3

    invoke-interface {p2, p3, v0, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 172
    iget-object p2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->mMessageDigest:Lorg/spongycastle/crypto/Digest;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    array-length v1, p4

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    invoke-interface {p2, p3, v0, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 173
    iget-object p2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->mMessageDigest:Lorg/spongycastle/crypto/Digest;

    array-length p3, p4

    invoke-interface {p2, p4, v0, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 176
    iget-object p2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->mMessageDigest:Lorg/spongycastle/crypto/Digest;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    array-length p4, p1

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    invoke-interface {p2, p3, v0, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 177
    iget-object p2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->mMessageDigest:Lorg/spongycastle/crypto/Digest;

    array-length p3, p1

    invoke-interface {p2, p1, v0, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 180
    iget-object p1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->mMessageDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    .line 181
    iget-object p2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->mMessageDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p2, p1, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 182
    new-instance p2, Ljava/math/BigInteger;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p2
.end method


# virtual methods
.method public generate(Ljava/lang/String;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;)Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;
    .locals 3

    .line 67
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->mGroup:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;

    invoke-virtual {v1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->getN()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->mRandom:Ljava/security/SecureRandom;

    invoke-static {v0, v1, v2}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    .line 70
    invoke-virtual {p2, v0}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 73
    invoke-direct {p0, p1, p2, v1, p4}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->getDigest(Ljava/lang/String;Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;)Ljava/math/BigInteger;

    move-result-object p1

    .line 76
    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->mGroup:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;

    invoke-virtual {p2}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->getN()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 79
    new-instance p2, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

    invoke-direct {p2, v1, p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;-><init>(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    return-object p2
.end method

.method public validate(Ljava/lang/String;Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .line 96
    invoke-virtual {p3}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_3

    .line 101
    invoke-virtual {p3}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    .line 103
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    .line 104
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->mGroup:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;

    invoke-virtual {v2}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_2

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 105
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->mGroup:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;

    invoke-virtual {v1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_2

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->mGroup:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->getCurve()Lorg/spongycastle/math/ec/ECCurve$Fp;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/spongycastle/math/ec/ECCurve$Fp;->importPoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->mGroup:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->getCoFactor()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p4}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;->getGv()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->getDigest(Ljava/lang/String;Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;)Ljava/math/BigInteger;

    move-result-object p1

    .line 125
    invoke-virtual {p4}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;->getGv()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p4}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;->getR()Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {p2, p4}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p2

    iget-object p4, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->mGroup:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;

    invoke-virtual {p4}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->getN()Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECPoint;->equals(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 126
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/CryptoException;

    const-string p2, "invalid zero-knowledge proof: G*v != G*r + G*x*h"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/CryptoException;

    const-string p2, "invalid zero-knowledge proof: n*G*x is not infinity"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :catch_0
    new-instance p1, Lorg/spongycastle/crypto/CryptoException;

    const-string p2, "invalid zero-knowledge proof: G*x is not on the curve"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/CryptoException;

    const-string p2, "invalid zero-knowledge proof: G*x is not in Fq"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_3
    new-instance p1, Lorg/spongycastle/crypto/CryptoException;

    const-string p2, "invalid zero-knowledge proof: G*x is infinity"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
