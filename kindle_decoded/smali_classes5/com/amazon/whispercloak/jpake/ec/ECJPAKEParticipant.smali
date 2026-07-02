.class public Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;
.super Ljava/lang/Object;
.source "ECJPAKEParticipant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;
    }
.end annotation


# instance fields
.field private mB:Lorg/spongycastle/math/ec/ECPoint;

.field private mGenerateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

.field private final mGroup:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;

.field private mGx1:Lorg/spongycastle/math/ec/ECPoint;

.field private mGx2:Lorg/spongycastle/math/ec/ECPoint;

.field private mGx3:Lorg/spongycastle/math/ec/ECPoint;

.field private mGx4:Lorg/spongycastle/math/ec/ECPoint;

.field private final mMessageDigest:Lorg/spongycastle/crypto/Digest;

.field private final mParticipantId:Ljava/lang/String;

.field private mPartnerParticipantId:Ljava/lang/String;

.field private mPassword:[C

.field private final mRandom:Ljava/security/SecureRandom;

.field private mValidateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

.field private mX1:Ljava/math/BigInteger;

.field private mX2:Ljava/math/BigInteger;

.field private mX2s:Ljava/math/BigInteger;

.field private final mZeroKnowledgeProofFactory:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;


# direct methods
.method public constructor <init>(Ljava/lang/String;[CLcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;)V
    .locals 6

    .line 137
    new-instance v4, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v4}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;-><init>(Ljava/lang/String;[CLcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;Lorg/spongycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CLcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;Lorg/spongycastle/crypto/Digest;Ljava/security/SecureRandom;)V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "participantId"

    .line 159
    invoke-static {p1, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "password"

    .line 160
    invoke-static {p2, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "group"

    .line 161
    invoke-static {p3, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageDigest"

    .line 162
    invoke-static {p4, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "random"

    .line 163
    invoke-static {p5, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    array-length v0, p2

    if-eqz v0, :cond_0

    .line 170
    iput-object p1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mParticipantId:Ljava/lang/String;

    .line 171
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mPassword:[C

    .line 172
    iput-object p3, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGroup:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;

    .line 173
    iput-object p4, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mMessageDigest:Lorg/spongycastle/crypto/Digest;

    .line 174
    iput-object p5, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mRandom:Ljava/security/SecureRandom;

    .line 177
    new-instance p1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;

    invoke-direct {p1, p3, p5, p4}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;-><init>(Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;Ljava/security/SecureRandom;Lorg/spongycastle/crypto/Digest;)V

    iput-object p1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mZeroKnowledgeProofFactory:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;

    .line 180
    sget-object p1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->INITIALIZED:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    iput-object p1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGenerateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    .line 181
    iput-object p1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mValidateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    return-void

    .line 166
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Password must not be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private calculateDigest(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3

    .line 468
    invoke-static {p1}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    .line 469
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mMessageDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 470
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mMessageDigest:Lorg/spongycastle/crypto/Digest;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 471
    iget-object p1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mMessageDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    .line 472
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mMessageDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 473
    invoke-static {p1}, Lorg/spongycastle/util/BigIntegers;->fromUnsignedByteArray([B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method private static validateParticipantIdsDiffer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .line 443
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 444
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/CryptoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Both participants are using the same ID ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/spongycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static validateParticipantIdsMatch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .line 454
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 455
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/CryptoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received payload from participant with ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "); expected ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public calculateKeyingMaterial()Ljava/math/BigInteger;
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGenerateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    sget-object v1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->ROUND_2_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    if-ne v0, v1, :cond_1

    .line 319
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mValidateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    if-ne v0, v1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mB:Lorg/spongycastle/math/ec/ECPoint;

    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx4:Lorg/spongycastle/math/ec/ECPoint;

    iget-object v2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mX2s:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->subtract(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mX2:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->calculateDigest(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mPassword:[C

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    const/4 v1, 0x0

    .line 331
    iput-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mPassword:[C

    .line 334
    iput-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mX1:Ljava/math/BigInteger;

    .line 335
    iput-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mX2:Ljava/math/BigInteger;

    .line 336
    iput-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mX2s:Ljava/math/BigInteger;

    .line 337
    iput-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mB:Lorg/spongycastle/math/ec/ECPoint;

    .line 340
    sget-object v1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->KEY_CALCULATED:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    iput-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGenerateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    return-object v0

    .line 320
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must follow round 2 payload validation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mParticipantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must follow round 2 payload creation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mParticipantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createRound1PayloadToSend()Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;
    .locals 11

    .line 190
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGenerateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    sget-object v1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->INITIALIZED:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    if-ne v0, v1, :cond_0

    .line 195
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGroup:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;

    invoke-virtual {v1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->getN()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mRandom:Ljava/security/SecureRandom;

    invoke-static {v0, v1, v2}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mX1:Ljava/math/BigInteger;

    .line 196
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGroup:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;

    invoke-virtual {v1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->getN()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mRandom:Ljava/security/SecureRandom;

    invoke-static {v0, v1, v2}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mX2:Ljava/math/BigInteger;

    .line 199
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGroup:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mX1:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx1:Lorg/spongycastle/math/ec/ECPoint;

    .line 200
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGroup:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mX2:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx2:Lorg/spongycastle/math/ec/ECPoint;

    .line 203
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mZeroKnowledgeProofFactory:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;

    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mParticipantId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGroup:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;

    invoke-virtual {v2}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mX1:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx1:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->generate(Ljava/lang/String;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;)Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

    move-result-object v9

    .line 204
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mZeroKnowledgeProofFactory:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;

    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mParticipantId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGroup:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;

    invoke-virtual {v2}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mX2:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx2:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->generate(Ljava/lang/String;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;)Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

    move-result-object v10

    .line 207
    sget-object v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->ROUND_1_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    iput-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGenerateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    .line 210
    new-instance v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;

    iget-object v6, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mParticipantId:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx1:Lorg/spongycastle/math/ec/ECPoint;

    iget-object v8, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx2:Lorg/spongycastle/math/ec/ECPoint;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;-><init>(Ljava/lang/String;Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;)V

    return-object v0

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Round 1 payload already created for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mParticipantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createRound2PayloadToSend()Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;
    .locals 5

    .line 248
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGenerateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    sget-object v1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->ROUND_1_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    if-ne v0, v1, :cond_2

    .line 251
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mValidateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->ROUND_2_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must follow round 1 or round 2 payload validation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mParticipantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_1
    :goto_0
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mPassword:[C

    invoke-static {v1}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 259
    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mX2:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGroup:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;

    invoke-virtual {v1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->getN()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mX2s:Ljava/math/BigInteger;

    .line 262
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx1:Lorg/spongycastle/math/ec/ECPoint;

    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx3:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx4:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mX2s:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 266
    iget-object v2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mZeroKnowledgeProofFactory:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;

    iget-object v3, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mParticipantId:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mX2s:Ljava/math/BigInteger;

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->generate(Ljava/lang/String;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;)Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

    move-result-object v0

    .line 269
    sget-object v2, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->ROUND_2_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    iput-object v2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGenerateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    .line 272
    new-instance v2, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;

    iget-object v3, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mParticipantId:Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;-><init>(Ljava/lang/String;Lorg/spongycastle/math/ec/ECPoint;Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;)V

    return-object v2

    .line 249
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must follow round 1 payload creation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mParticipantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createRound3PayloadToSend(Ljava/math/BigInteger;)Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;
    .locals 9

    .line 352
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGenerateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    sget-object v1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->KEY_CALCULATED:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    if-ne v0, v1, :cond_1

    const-string v0, "keyingMaterial"

    .line 357
    invoke-static {p1, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mParticipantId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mPartnerParticipantId:Ljava/lang/String;

    new-instance v3, Ljava/math/BigInteger;

    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx1:Lorg/spongycastle/math/ec/ECPoint;

    const/4 v4, 0x0

    .line 363
    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v0

    const/4 v5, 0x1

    invoke-direct {v3, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v0, Ljava/math/BigInteger;

    iget-object v6, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx2:Lorg/spongycastle/math/ec/ECPoint;

    .line 364
    invoke-virtual {v6, v4}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v6, Ljava/math/BigInteger;

    iget-object v7, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx3:Lorg/spongycastle/math/ec/ECPoint;

    .line 365
    invoke-virtual {v7, v4}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v7, Ljava/math/BigInteger;

    iget-object v8, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx4:Lorg/spongycastle/math/ec/ECPoint;

    .line 366
    invoke-virtual {v8, v4}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v4

    invoke-direct {v7, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object v8, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mMessageDigest:Lorg/spongycastle/crypto/Digest;

    move-object v4, v0

    move-object v5, v6

    move-object v6, v7

    move-object v7, p1

    .line 360
    invoke-static/range {v1 .. v8}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->calculateMacTag(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;)Ljava/math/BigInteger;

    move-result-object p1

    .line 371
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mValidateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    sget-object v1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->ROUND_3_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 372
    iput-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx1:Lorg/spongycastle/math/ec/ECPoint;

    .line 373
    iput-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx2:Lorg/spongycastle/math/ec/ECPoint;

    .line 374
    iput-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx3:Lorg/spongycastle/math/ec/ECPoint;

    .line 375
    iput-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx4:Lorg/spongycastle/math/ec/ECPoint;

    .line 379
    :cond_0
    sget-object v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->ROUND_3_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    iput-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGenerateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    .line 382
    new-instance v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;

    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mParticipantId:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;-><init>(Ljava/lang/String;Ljava/math/BigInteger;)V

    return-object v0

    .line 353
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Must follow key material calculation for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mParticipantId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getGroup()Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGroup:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;

    return-object v0
.end method

.method public validateRound1PayloadReceived(Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mValidateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    sget-object v1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->INITIALIZED:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "round1PayloadReceived"

    .line 224
    invoke-static {p1, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mParticipantId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->validateParticipantIdsDiffer(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mPartnerParticipantId:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->getGx1()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx3:Lorg/spongycastle/math/ec/ECPoint;

    .line 232
    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->getGx2()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx4:Lorg/spongycastle/math/ec/ECPoint;

    .line 235
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mZeroKnowledgeProofFactory:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;

    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mPartnerParticipantId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGroup:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;

    invoke-virtual {v2}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->getGx1()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->getKnowledgeProofForX1()Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->validate(Ljava/lang/String;Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;)V

    .line 236
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mZeroKnowledgeProofFactory:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;

    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mPartnerParticipantId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGroup:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;

    invoke-virtual {v2}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->getGx2()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->getKnowledgeProofForX2()Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

    move-result-object p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->validate(Ljava/lang/String;Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;)V

    .line 239
    sget-object p1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->ROUND_1_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    iput-object p1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mValidateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    return-void

    .line 220
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Validation already attempted for round 1 payload for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mParticipantId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validateRound2PayloadReceived(Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGenerateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    sget-object v1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->ROUND_1_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->ROUND_2_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Must follow round 1 or round 2 payload creation for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mParticipantId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mValidateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    sget-object v1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->ROUND_1_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "round2PayloadReceived"

    .line 289
    invoke-static {p1, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mParticipantId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->validateParticipantIdsDiffer(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mPartnerParticipantId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->validateParticipantIdsMatch(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx1:Lorg/spongycastle/math/ec/ECPoint;

    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx2:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx3:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mZeroKnowledgeProofFactory:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;

    iget-object v2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mPartnerParticipantId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;->getA()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;->getKnowledgeProofForX2s()Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProofFactory;->validate(Ljava/lang/String;Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;)V

    .line 304
    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;->getA()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mB:Lorg/spongycastle/math/ec/ECPoint;

    .line 307
    sget-object p1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->ROUND_2_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    iput-object p1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mValidateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    return-void

    .line 285
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Must follow round 1 payload validation for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mParticipantId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validateRound3PayloadReceived(Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;Ljava/math/BigInteger;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGenerateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    sget-object v1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->KEY_CALCULATED:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->ROUND_3_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Must follow key material calculation for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mParticipantId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 394
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mValidateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    sget-object v1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->ROUND_2_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    if-ne v0, v1, :cond_3

    const-string/jumbo v0, "round3PayloadReceived"

    .line 399
    invoke-static {p1, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyingMaterial"

    .line 400
    invoke-static {p2, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mParticipantId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->validateParticipantIdsDiffer(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mPartnerParticipantId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->validateParticipantIdsMatch(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mParticipantId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mPartnerParticipantId:Ljava/lang/String;

    new-instance v4, Ljava/math/BigInteger;

    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx1:Lorg/spongycastle/math/ec/ECPoint;

    const/4 v1, 0x0

    .line 412
    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v0

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v0, Ljava/math/BigInteger;

    iget-object v6, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx2:Lorg/spongycastle/math/ec/ECPoint;

    .line 413
    invoke-virtual {v6, v1}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v6, Ljava/math/BigInteger;

    iget-object v7, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx3:Lorg/spongycastle/math/ec/ECPoint;

    .line 414
    invoke-virtual {v7, v1}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v7, Ljava/math/BigInteger;

    iget-object v8, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx4:Lorg/spongycastle/math/ec/ECPoint;

    .line 415
    invoke-virtual {v8, v1}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v1

    invoke-direct {v7, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object v9, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mMessageDigest:Lorg/spongycastle/crypto/Digest;

    .line 418
    invoke-virtual {p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;->getMacTag()Ljava/math/BigInteger;

    move-result-object v10

    move-object v5, v0

    move-object v8, p2

    .line 409
    invoke-static/range {v2 .. v10}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateMacTag(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;)V

    .line 421
    iget-object p1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGenerateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    sget-object p2, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->ROUND_3_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    .line 422
    iput-object p1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx1:Lorg/spongycastle/math/ec/ECPoint;

    .line 423
    iput-object p1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx2:Lorg/spongycastle/math/ec/ECPoint;

    .line 424
    iput-object p1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx3:Lorg/spongycastle/math/ec/ECPoint;

    .line 425
    iput-object p1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mGx4:Lorg/spongycastle/math/ec/ECPoint;

    .line 429
    :cond_2
    sget-object p1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->ROUND_3_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    iput-object p1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mValidateState:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    return-void

    .line 395
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Must follow round 2 payload validation for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->mParticipantId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
