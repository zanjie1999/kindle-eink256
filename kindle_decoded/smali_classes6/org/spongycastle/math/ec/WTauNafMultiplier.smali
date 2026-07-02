.class public Lorg/spongycastle/math/ec/WTauNafMultiplier;
.super Lorg/spongycastle/math/ec/AbstractECMultiplier;
.source "WTauNafMultiplier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lorg/spongycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method

.method private static multiplyFromWTnaf(Lorg/spongycastle/math/ec/ECPoint$F2m;[BLorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/ECPoint$F2m;
    .locals 3

    .line 76
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    .line 77
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->byteValue()B

    move-result v1

    if-eqz p2, :cond_1

    .line 80
    instance-of v2, p2, Lorg/spongycastle/math/ec/WTauNafPreCompInfo;

    if-nez v2, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    check-cast p2, Lorg/spongycastle/math/ec/WTauNafPreCompInfo;

    invoke-virtual {p2}, Lorg/spongycastle/math/ec/WTauNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object p2

    goto :goto_1

    .line 82
    :cond_1
    :goto_0
    invoke-static {p0, v1}, Lorg/spongycastle/math/ec/Tnaf;->getPreComp(Lorg/spongycastle/math/ec/ECPoint$F2m;B)[Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object p2

    .line 84
    new-instance v1, Lorg/spongycastle/math/ec/WTauNafPreCompInfo;

    invoke-direct {v1}, Lorg/spongycastle/math/ec/WTauNafPreCompInfo;-><init>()V

    .line 85
    invoke-virtual {v1, p2}, Lorg/spongycastle/math/ec/WTauNafPreCompInfo;->setPreComp([Lorg/spongycastle/math/ec/ECPoint$F2m;)V

    const-string v2, "bc_wtnaf"

    .line 86
    invoke-virtual {v0, p0, v2, v1}, Lorg/spongycastle/math/ec/ECCurve;->setPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/spongycastle/math/ec/PreCompInfo;)V

    .line 94
    :goto_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    .line 95
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    .line 97
    invoke-static {p0}, Lorg/spongycastle/math/ec/Tnaf;->tau(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object p0

    .line 98
    aget-byte v1, p1, v0

    if-eqz v1, :cond_3

    if-lez v1, :cond_2

    .line 103
    aget-object v1, p2, v1

    invoke-virtual {p0, v1}, Lorg/spongycastle/math/ec/ECPoint$F2m;->addSimple(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object p0

    goto :goto_3

    :cond_2
    neg-int v1, v1

    .line 107
    aget-object v1, p2, v1

    invoke-virtual {p0, v1}, Lorg/spongycastle/math/ec/ECPoint$F2m;->subtractSimple(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object p0

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    return-object p0
.end method

.method private multiplyWTnaf(Lorg/spongycastle/math/ec/ECPoint$F2m;Lorg/spongycastle/math/ec/ZTauElement;Lorg/spongycastle/math/ec/PreCompInfo;BB)Lorg/spongycastle/math/ec/ECPoint$F2m;
    .locals 6

    if-nez p4, :cond_0

    .line 55
    sget-object p4, Lorg/spongycastle/math/ec/Tnaf;->alpha0:[Lorg/spongycastle/math/ec/ZTauElement;

    goto :goto_0

    :cond_0
    sget-object p4, Lorg/spongycastle/math/ec/Tnaf;->alpha1:[Lorg/spongycastle/math/ec/ZTauElement;

    :goto_0
    move-object v5, p4

    const/4 p4, 0x4

    .line 57
    invoke-static {p5, p4}, Lorg/spongycastle/math/ec/Tnaf;->getTw(BI)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v2, 0x4

    const-wide/16 v0, 0x10

    .line 60
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    move v0, p5

    move-object v1, p2

    .line 59
    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/Tnaf;->tauAdicWNaf(BLorg/spongycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lorg/spongycastle/math/ec/ZTauElement;)[B

    move-result-object p2

    .line 62
    invoke-static {p1, p2, p3}, Lorg/spongycastle/math/ec/WTauNafMultiplier;->multiplyFromWTnaf(Lorg/spongycastle/math/ec/ECPoint$F2m;[BLorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected multiplyPositive(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 10

    .line 24
    instance-of v0, p1, Lorg/spongycastle/math/ec/ECPoint$F2m;

    if-eqz v0, :cond_0

    .line 30
    move-object v2, p1

    check-cast v2, Lorg/spongycastle/math/ec/ECPoint$F2m;

    .line 31
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/math/ec/ECCurve$F2m;

    .line 32
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v4

    .line 33
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->byteValue()B

    move-result v0

    .line 34
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getMu()B

    move-result v9

    .line 35
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getSi()[Ljava/math/BigInteger;

    move-result-object v6

    const/16 v8, 0xa

    move-object v3, p2

    move v5, v0

    move v7, v9

    .line 37
    invoke-static/range {v3 .. v8}, Lorg/spongycastle/math/ec/Tnaf;->partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lorg/spongycastle/math/ec/ZTauElement;

    move-result-object v3

    const-string p2, "bc_wtnaf"

    .line 39
    invoke-virtual {p1, v2, p2}, Lorg/spongycastle/math/ec/ECCurve;->getPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/spongycastle/math/ec/PreCompInfo;

    move-result-object v4

    move-object v1, p0

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/math/ec/WTauNafMultiplier;->multiplyWTnaf(Lorg/spongycastle/math/ec/ECPoint$F2m;Lorg/spongycastle/math/ec/ZTauElement;Lorg/spongycastle/math/ec/PreCompInfo;BB)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object p1

    return-object p1

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only ECPoint.F2m can be used in WTauNafMultiplier"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
