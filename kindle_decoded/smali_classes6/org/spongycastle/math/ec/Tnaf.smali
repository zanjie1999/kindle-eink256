.class Lorg/spongycastle/math/ec/Tnaf;
.super Ljava/lang/Object;
.source "Tnaf.java"


# static fields
.field private static final MINUS_ONE:Ljava/math/BigInteger;

.field private static final MINUS_THREE:Ljava/math/BigInteger;

.field private static final MINUS_TWO:Ljava/math/BigInteger;

.field public static final alpha0:[Lorg/spongycastle/math/ec/ZTauElement;

.field public static final alpha0Tnaf:[[B

.field public static final alpha1:[Lorg/spongycastle/math/ec/ZTauElement;

.field public static final alpha1Tnaf:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 14
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    .line 15
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    .line 16
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    const/16 v0, 0x9

    new-array v1, v0, [Lorg/spongycastle/math/ec/ZTauElement;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 39
    new-instance v4, Lorg/spongycastle/math/ec/ZTauElement;

    sget-object v5, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v6, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v4, v5, v6}, Lorg/spongycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-instance v6, Lorg/spongycastle/math/ec/ZTauElement;

    sget-object v7, Lorg/spongycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v8, Lorg/spongycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v6, v7, v8}, Lorg/spongycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v7, 0x3

    aput-object v6, v1, v7

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-instance v8, Lorg/spongycastle/math/ec/ZTauElement;

    sget-object v9, Lorg/spongycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v8, v9, v9}, Lorg/spongycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v9, 0x5

    aput-object v8, v1, v9

    const/4 v8, 0x6

    aput-object v3, v1, v8

    new-instance v10, Lorg/spongycastle/math/ec/ZTauElement;

    sget-object v11, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v12, Lorg/spongycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v10, v11, v12}, Lorg/spongycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v11, 0x7

    aput-object v10, v1, v11

    const/16 v10, 0x8

    aput-object v3, v1, v10

    sput-object v1, Lorg/spongycastle/math/ec/Tnaf;->alpha0:[Lorg/spongycastle/math/ec/ZTauElement;

    new-array v1, v10, [[B

    aput-object v3, v1, v2

    new-array v12, v5, [B

    aput-byte v5, v12, v2

    aput-object v12, v1, v5

    aput-object v3, v1, v4

    new-array v12, v7, [B

    .line 51
    fill-array-data v12, :array_0

    aput-object v12, v1, v7

    aput-object v3, v1, v6

    new-array v12, v7, [B

    fill-array-data v12, :array_1

    aput-object v12, v1, v9

    aput-object v3, v1, v8

    new-array v12, v6, [B

    fill-array-data v12, :array_2

    aput-object v12, v1, v11

    sput-object v1, Lorg/spongycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    new-array v0, v0, [Lorg/spongycastle/math/ec/ZTauElement;

    aput-object v3, v0, v2

    .line 59
    new-instance v1, Lorg/spongycastle/math/ec/ZTauElement;

    sget-object v12, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v13, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v12, v13}, Lorg/spongycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v5

    aput-object v3, v0, v4

    new-instance v1, Lorg/spongycastle/math/ec/ZTauElement;

    sget-object v12, Lorg/spongycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v13, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v12, v13}, Lorg/spongycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v7

    aput-object v3, v0, v6

    new-instance v1, Lorg/spongycastle/math/ec/ZTauElement;

    sget-object v12, Lorg/spongycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v13, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v12, v13}, Lorg/spongycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v9

    aput-object v3, v0, v8

    new-instance v1, Lorg/spongycastle/math/ec/ZTauElement;

    sget-object v12, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v12, v12}, Lorg/spongycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v11

    aput-object v3, v0, v10

    sput-object v0, Lorg/spongycastle/math/ec/Tnaf;->alpha1:[Lorg/spongycastle/math/ec/ZTauElement;

    new-array v0, v10, [[B

    aput-object v3, v0, v2

    new-array v1, v5, [B

    aput-byte v5, v1, v2

    aput-object v1, v0, v5

    aput-object v3, v0, v4

    new-array v1, v7, [B

    .line 70
    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    aput-object v3, v0, v6

    new-array v1, v7, [B

    fill-array-data v1, :array_4

    aput-object v1, v0, v9

    aput-object v3, v0, v8

    new-array v1, v6, [B

    fill-array-data v1, :array_5

    aput-object v1, v0, v11

    sput-object v0, Lorg/spongycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_5
    .array-data 1
        -0x1t
        0x0t
        0x0t
        -0x1t
    .end array-data
.end method

.method public static approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lorg/spongycastle/math/ec/SimpleBigDecimal;
    .locals 2

    add-int/lit8 v0, p4, 0x5

    .line 286
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p5

    sub-int v1, p4, v0

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v1, p3

    .line 287
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 289
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 291
    invoke-virtual {p0, p4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 293
    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 295
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sub-int/2addr v0, p5

    .line 296
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    .line 297
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 300
    sget-object p0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 303
    :cond_0
    new-instance p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;

    invoke-direct {p0, p1, p5}, Lorg/spongycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object p0
.end method

.method public static getLucas(BIZ)[Ljava/math/BigInteger;
    .locals 5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 450
    sget-object p2, Lorg/spongycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    int-to-long v1, p0

    .line 451
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_1

    .line 455
    :cond_2
    sget-object p2, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 456
    sget-object v1, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-ge v2, p1, :cond_4

    if-ne p0, v0, :cond_3

    move-object v3, v1

    goto :goto_3

    .line 470
    :cond_3
    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    .line 473
    :goto_3
    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    move-object v4, v1

    move-object v1, p2

    move-object p2, v4

    goto :goto_2

    :cond_4
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/math/BigInteger;

    const/4 p1, 0x0

    aput-object p2, p0, p1

    aput-object v1, p0, v0

    return-object p0
.end method

.method public static getMu(Lorg/spongycastle/math/ec/ECCurve$F2m;)B
    .locals 1

    .line 410
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 412
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No Koblitz curve (ABC), TNAF multiplication not possible"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPreComp(Lorg/spongycastle/math/ec/ECPoint$F2m;B)[Lorg/spongycastle/math/ec/ECPoint$F2m;
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    if-nez p1, :cond_0

    .line 805
    sget-object p1, Lorg/spongycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    goto :goto_0

    .line 810
    :cond_0
    sget-object p1, Lorg/spongycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    .line 813
    :goto_0
    array-length v1, p1

    const/4 v2, 0x3

    :goto_1
    if-ge v2, v1, :cond_1

    .line 816
    aget-object v3, p1, v2

    invoke-static {p0, v3}, Lorg/spongycastle/math/ec/Tnaf;->multiplyFromTnaf(Lorg/spongycastle/math/ec/ECPoint$F2m;[B)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 819
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECCurve;->normalizeAll([Lorg/spongycastle/math/ec/ECPoint;)V

    return-object v0
.end method

.method protected static getShiftsForCofactor(Ljava/math/BigInteger;)I
    .locals 1

    if-eqz p0, :cond_1

    .line 557
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 561
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 567
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "h (Cofactor) must be 2 or 4"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSi(Lorg/spongycastle/math/ec/ECCurve$F2m;)[Ljava/math/BigInteger;
    .locals 5

    .line 530
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v0

    .line 536
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 537
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getMu()B

    move-result v2

    .line 538
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/math/ec/Tnaf;->getShiftsForCofactor(Ljava/math/BigInteger;)I

    move-result p0

    add-int/lit8 v0, v0, 0x3

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 540
    invoke-static {v2, v0, v1}, Lorg/spongycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 543
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v0, v1

    .line 544
    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v0, v3

    .line 547
    :cond_0
    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 548
    sget-object v4, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v0, v0, v1

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    aput-object v2, v0, v1

    aput-object p0, v0, v3

    return-object v0

    .line 532
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "si is defined for Koblitz curves only"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getTw(BI)Ljava/math/BigInteger;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    if-ne p0, v0, :cond_0

    const-wide/16 p0, 0x6

    .line 498
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 p0, 0xa

    .line 503
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x0

    .line 509
    invoke-static {p0, p1, v1}, Lorg/spongycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object p0

    .line 510
    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 511
    aget-object v0, p0, v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 513
    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    aget-object p0, p0, v1

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static multiplyFromTnaf(Lorg/spongycastle/math/ec/ECPoint$F2m;[B)Lorg/spongycastle/math/ec/ECPoint$F2m;
    .locals 5

    .line 669
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    .line 670
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    .line 671
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 673
    invoke-static {v0}, Lorg/spongycastle/math/ec/Tnaf;->tau(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    .line 674
    aget-byte v3, p1, v1

    if-ne v3, v2, :cond_0

    .line 676
    invoke-virtual {v0, p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->addSimple(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    goto :goto_1

    .line 678
    :cond_0
    aget-byte v3, p1, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 680
    invoke-virtual {v0, p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->subtractSimple(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static norm(BLorg/spongycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;
    .locals 3

    .line 87
    iget-object v0, p1, Lorg/spongycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 90
    iget-object v1, p1, Lorg/spongycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/spongycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 93
    iget-object p1, p1, Lorg/spongycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {p1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    if-ne p0, v2, :cond_0

    .line 97
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    .line 101
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    :goto_0
    return-object p0

    .line 105
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lorg/spongycastle/math/ec/ZTauElement;
    .locals 13

    move/from16 v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 590
    aget-object v3, p3, v1

    aget-object v4, p3, v2

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    .line 594
    :cond_0
    aget-object v3, p3, v1

    aget-object v4, p3, v2

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    :goto_0
    move v10, p1

    .line 597
    invoke-static {v0, p1, v2}, Lorg/spongycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v4

    .line 598
    aget-object v11, v4, v2

    .line 600
    aget-object v5, p3, v1

    move-object v4, p0

    move-object v6, v11

    move v7, p2

    move v8, p1

    move/from16 v9, p5

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v12

    .line 603
    aget-object v5, p3, v2

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    .line 606
    invoke-static {v12, v4, v0}, Lorg/spongycastle/math/ec/Tnaf;->round(Lorg/spongycastle/math/ec/SimpleBigDecimal;Lorg/spongycastle/math/ec/SimpleBigDecimal;B)Lorg/spongycastle/math/ec/ZTauElement;

    move-result-object v0

    .line 609
    iget-object v4, v0, Lorg/spongycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    move-object v4, p0

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    const-wide/16 v4, 0x2

    .line 610
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    aget-object v5, p3, v2

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, v0, Lorg/spongycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 609
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 613
    aget-object v2, p3, v2

    iget-object v4, v0, Lorg/spongycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aget-object v1, p3, v1

    iget-object v0, v0, Lorg/spongycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 615
    new-instance v1, Lorg/spongycastle/math/ec/ZTauElement;

    invoke-direct {v1, v3, v0}, Lorg/spongycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public static round(Lorg/spongycastle/math/ec/SimpleBigDecimal;Lorg/spongycastle/math/ec/SimpleBigDecimal;B)Lorg/spongycastle/math/ec/ZTauElement;
    .locals 7

    .line 169
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v0

    .line 170
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v1

    if-ne v1, v0, :cond_a

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 181
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v2

    .line 182
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v3

    .line 184
    invoke-virtual {p0, v2}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    .line 185
    invoke-virtual {p1, v3}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object p1

    .line 188
    invoke-virtual {p0, p0}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->add(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    if-ne p2, v1, :cond_2

    .line 191
    invoke-virtual {v4, p1}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->add(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    goto :goto_1

    .line 196
    :cond_2
    invoke-virtual {v4, p1}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->subtract(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    .line 201
    :goto_1
    invoke-virtual {p1, p1}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->add(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->add(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v5

    .line 202
    invoke-virtual {v5, p1}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->add(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object p1

    if-ne p2, v1, :cond_3

    .line 207
    invoke-virtual {p0, v5}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->subtract(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v5

    .line 208
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->add(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    goto :goto_2

    .line 213
    :cond_3
    invoke-virtual {p0, v5}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->add(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v5

    .line 214
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->subtract(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    .line 221
    :goto_2
    sget-object p1, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, p1}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    const/4 v6, 0x0

    if-ltz p1, :cond_4

    .line 223
    sget-object p1, Lorg/spongycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, p1}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gez p1, :cond_6

    goto :goto_3

    .line 235
    :cond_4
    sget-object p1, Lorg/spongycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-ltz p1, :cond_5

    :goto_3
    move v6, p2

    :cond_5
    const/4 v1, 0x0

    .line 242
    :cond_6
    sget-object p1, Lorg/spongycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, p1}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gez p1, :cond_7

    .line 244
    sget-object p0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, p0}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-ltz p0, :cond_9

    goto :goto_4

    .line 256
    :cond_7
    sget-object p1, Lorg/spongycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gez p0, :cond_8

    :goto_4
    neg-int p0, p2

    int-to-byte v6, p0

    :cond_8
    move v0, v1

    :cond_9
    int-to-long p0, v0

    .line 262
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    int-to-long p1, v6

    .line 263
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 264
    new-instance p2, Lorg/spongycastle/math/ec/ZTauElement;

    invoke-direct {p2, p0, p1}, Lorg/spongycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2

    .line 172
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lambda0 and lambda1 do not have same scale"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static tau(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;
    .locals 0

    .line 395
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->tau()Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object p0

    return-object p0
.end method

.method public static tauAdicWNaf(BLorg/spongycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lorg/spongycastle/math/ec/ZTauElement;)[B
    .locals 8

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 705
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 708
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lorg/spongycastle/math/ec/Tnaf;->norm(BLorg/spongycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v1

    .line 711
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, p2, 0x22

    .line 717
    :goto_1
    new-array p2, v1, [B

    .line 720
    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 723
    iget-object v2, p1, Lorg/spongycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    .line 724
    iget-object p1, p1, Lorg/spongycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 728
    :goto_2
    sget-object v5, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    return-object p2

    .line 731
    :cond_4
    :goto_3
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 735
    invoke-virtual {p1, p4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 739
    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-ltz v6, :cond_5

    .line 741
    invoke-virtual {v5, p3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    goto :goto_4

    .line 745
    :cond_5
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    :goto_4
    int-to-byte v5, v5

    .line 749
    aput-byte v5, p2, v4

    if-gez v5, :cond_6

    neg-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    const/4 v6, 0x1

    :goto_5
    if-eqz v6, :cond_7

    .line 760
    aget-object v6, p5, v5

    iget-object v6, v6, Lorg/spongycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 761
    aget-object v5, p5, v5

    iget-object v5, v5, Lorg/spongycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_6

    .line 765
    :cond_7
    aget-object v6, p5, v5

    iget-object v6, v6, Lorg/spongycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 766
    aget-object v5, p5, v5

    iget-object v5, v5, Lorg/spongycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_6

    .line 771
    :cond_8
    aput-byte v3, p2, v4

    :goto_6
    if-ne p0, v0, :cond_9

    .line 778
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_7

    .line 783
    :cond_9
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 785
    :goto_7
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    move-object v7, v2

    move-object v2, p1

    move-object p1, v7

    goto/16 :goto_2
.end method
