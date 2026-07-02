.class public Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;
.super Ljava/lang/Object;
.source "ECMQVBasicAgreement.java"

# interfaces
.implements Lorg/spongycastle/crypto/BasicAgreement;


# instance fields
.field privParams:Lorg/spongycastle/crypto/params/MQVPrivateParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateMqvAgreement(Lorg/spongycastle/crypto/params/ECDomainParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 8

    .line 60
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x2

    div-int/2addr v1, v3

    .line 62
    sget-object v4, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 64
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECPoint;

    if-nez p4, :cond_0

    .line 68
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p4

    invoke-virtual {p3}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p4, v7}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p4

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p4

    :goto_0
    invoke-static {v5, p4}, Lorg/spongycastle/math/ec/ECAlgorithms;->importPoint(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p4

    const/4 v7, 0x0

    aput-object p4, v6, v7

    .line 69
    invoke-virtual {p5}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p4

    invoke-static {v5, p4}, Lorg/spongycastle/math/ec/ECAlgorithms;->importPoint(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p4

    aput-object p4, v6, v2

    .line 70
    invoke-virtual {p6}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p4

    invoke-static {v5, p4}, Lorg/spongycastle/math/ec/ECAlgorithms;->importPoint(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p4

    aput-object p4, v6, v3

    .line 73
    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/ECCurve;->normalizeAll([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 75
    aget-object p4, v6, v7

    aget-object p5, v6, v2

    aget-object p6, v6, v3

    .line 77
    invoke-virtual {p4}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p4

    invoke-virtual {p4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p4

    .line 78
    invoke-virtual {p4, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p4

    .line 79
    invoke-virtual {p4, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p4

    .line 80
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p3}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 82
    invoke-virtual {p6}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p3

    invoke-virtual {p3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p3

    .line 83
    invoke-virtual {p3, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    .line 84
    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p3

    .line 86
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 89
    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 88
    invoke-static {p5, p2, p6, p1}, Lorg/spongycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public calculateAgreement(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .locals 8

    .line 35
    check-cast p1, Lorg/spongycastle/crypto/params/MQVPublicParameters;

    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->getStaticPrivateKey()Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    .line 40
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->getEphemeralPrivateKey()Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v4

    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->getEphemeralPublicKey()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v5

    .line 41
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/MQVPublicParameters;->getStaticPublicKey()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v6

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/MQVPublicParameters;->getEphemeralPublicKey()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v7

    move-object v1, p0

    .line 39
    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;->calculateMqvAgreement(Lorg/spongycastle/crypto/params/ECDomainParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Infinity is not a valid agreement value for MQV"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFieldSize()I
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->getStaticPrivateKey()Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 0

    .line 25
    check-cast p1, Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    return-void
.end method
