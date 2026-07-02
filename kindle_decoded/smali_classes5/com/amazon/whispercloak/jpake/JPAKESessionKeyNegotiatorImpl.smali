.class public Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiatorImpl;
.super Ljava/lang/Object;
.source "JPAKESessionKeyNegotiatorImpl.java"

# interfaces
.implements Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiator;


# static fields
.field private static final PRIME_256_V1_EC_GROUP_NAME:Ljava/lang/String; = "prime256v1"

.field private static final SHA_256_MESSAGE_DIGEST_INSTANCE:Ljava/lang/String; = "SHA-256"


# instance fields
.field private mParticipant:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;

    const-string/jumbo v1, "prime256v1"

    invoke-direct {v0, v1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v1, p1, p2, v0}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;-><init>(Ljava/lang/String;[CLcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;)V

    iput-object v1, p0, Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiatorImpl;->mParticipant:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;

    return-void
.end method


# virtual methods
.method public computeCommonKeyMaterial()Ljava/math/BigInteger;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiatorImpl;->mParticipant:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->calculateKeyingMaterial()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public createRound1PayloadToSend()Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiatorImpl;->mParticipant:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->createRound1PayloadToSend()Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;

    move-result-object v0

    return-object v0
.end method

.method public createRound2PayloadToSend()Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiatorImpl;->mParticipant:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->createRound2PayloadToSend()Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;

    move-result-object v0

    return-object v0
.end method

.method public createRound3PayloadToSend(Ljava/math/BigInteger;)Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiatorImpl;->mParticipant:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;

    invoke-virtual {v0, p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->createRound3PayloadToSend(Ljava/math/BigInteger;)Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;

    move-result-object p1

    return-object p1
.end method

.method public deriveSessionKey(Ljava/math/BigInteger;)[B
    .locals 1

    const-string v0, "Keying Material"

    .line 140
    invoke-static {p1, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-static {p1}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    return-object p1
.end method

.method public getParticipant()Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiatorImpl;->mParticipant:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;

    return-object v0
.end method

.method public validateRound1PayloadReceived(Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;)V
    .locals 1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiatorImpl;->mParticipant:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;

    invoke-virtual {v0, p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->validateRound1PayloadReceived(Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;)V
    :try_end_0
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 61
    new-instance v0, Lcom/amazon/whispercloak/error/JPAKECryptoException;

    invoke-direct {v0, p1}, Lcom/amazon/whispercloak/error/JPAKECryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public validateRound2PayloadReceived(Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;)V
    .locals 1

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiatorImpl;->mParticipant:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;

    invoke-virtual {v0, p1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->validateRound2PayloadReceived(Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;)V
    :try_end_0
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 86
    new-instance v0, Lcom/amazon/whispercloak/error/JPAKECryptoException;

    invoke-direct {v0, p1}, Lcom/amazon/whispercloak/error/JPAKECryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public validateRound3PayloadReceived(Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;Ljava/math/BigInteger;)V
    .locals 1

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiatorImpl;->mParticipant:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->validateRound3PayloadReceived(Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;Ljava/math/BigInteger;)V
    :try_end_0
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 126
    new-instance p2, Lcom/amazon/whispercloak/error/JPAKECryptoException;

    invoke-direct {p2, p1}, Lcom/amazon/whispercloak/error/JPAKECryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
