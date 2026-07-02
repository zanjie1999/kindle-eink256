.class public Lorg/spongycastle/math/ec/ECCurve$F2m;
.super Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# static fields
.field private static final F2M_DEFAULT_COORDS:I = 0x6


# instance fields
.field private infinity:Lorg/spongycastle/math/ec/ECPoint$F2m;

.field private k1:I

.field private k2:I

.field private k3:I

.field private m:I

.field private mu:B

.field private si:[Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 820
    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .line 856
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    const/4 v0, 0x0

    .line 732
    iput-byte v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->mu:B

    const/4 v0, 0x0

    .line 739
    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    .line 858
    iput p1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->m:I

    .line 859
    iput p2, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k1:I

    .line 860
    iput p3, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k2:I

    .line 861
    iput p4, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k3:I

    .line 862
    iput-object p7, p0, Lorg/spongycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    .line 863
    iput-object p8, p0, Lorg/spongycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    .line 865
    new-instance p1, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-direct {p1, p0, v0, v0}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->infinity:Lorg/spongycastle/math/ec/ECPoint$F2m;

    .line 866
    invoke-virtual {p0, p5}, Lorg/spongycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 867
    invoke-virtual {p0, p6}, Lorg/spongycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 p1, 0x6

    .line 868
    iput p1, p0, Lorg/spongycastle/math/ec/ECCurve;->coord:I

    return-void
.end method

.method protected constructor <init>(IIIILorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .line 873
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    const/4 v0, 0x0

    .line 732
    iput-byte v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->mu:B

    const/4 v0, 0x0

    .line 739
    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    .line 875
    iput p1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->m:I

    .line 876
    iput p2, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k1:I

    .line 877
    iput p3, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k2:I

    .line 878
    iput p4, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k3:I

    .line 879
    iput-object p7, p0, Lorg/spongycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    .line 880
    iput-object p8, p0, Lorg/spongycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    .line 882
    new-instance p1, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-direct {p1, p0, v0, v0}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->infinity:Lorg/spongycastle/math/ec/ECPoint$F2m;

    .line 883
    iput-object p5, p0, Lorg/spongycastle/math/ec/ECCurve;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 884
    iput-object p6, p0, Lorg/spongycastle/math/ec/ECCurve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 p1, 0x6

    .line 885
    iput p1, p0, Lorg/spongycastle/math/ec/ECCurve;->coord:I

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 789
    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method private solveQuadraticEquation(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 8

    .line 1074
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 1079
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1084
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 1087
    :cond_1
    new-instance v2, Ljava/math/BigInteger;

    iget v3, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->m:I

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {p0, v2}, Lorg/spongycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x1

    move-object v5, p1

    move-object v6, v0

    const/4 v4, 0x1

    .line 1090
    :goto_0
    iget v7, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->m:I

    sub-int/2addr v7, v3

    if-gt v4, v7, :cond_2

    .line 1092
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1093
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1094
    invoke-virtual {v5, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1096
    :cond_2
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 1100
    :cond_3
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1102
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v6
.end method


# virtual methods
.method protected cloneCurve()Lorg/spongycastle/math/ec/ECCurve;
    .locals 10

    .line 890
    new-instance v9, Lorg/spongycastle/math/ec/ECCurve$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k3:I

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECCurve;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECCurve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v7, p0, Lorg/spongycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    iget-object v8, p0, Lorg/spongycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v9
.end method

.method protected createDefaultMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 1

    .line 908
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    new-instance v0, Lorg/spongycastle/math/ec/WTauNafMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/WTauNafMultiplier;-><init>()V

    return-object v0

    .line 913
    :cond_0
    invoke-super {p0}, Lorg/spongycastle/math/ec/ECCurve;->createDefaultMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v0

    return-object v0
.end method

.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 2

    .line 928
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/spongycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p2

    .line 930
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 935
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 937
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 939
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 945
    :cond_2
    invoke-virtual {p2, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p2

    .line 955
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECCurve$F2m;->createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method

.method protected createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 960
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method protected createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 7

    .line 965
    new-instance v6, Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v6
.end method

.method protected decompressPoint(ILjava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 3

    .line 1022
    invoke-virtual {p0, p2}, Lorg/spongycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p2

    .line 1023
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1025
    iget-object p1, p0, Lorg/spongycastle/math/ec/ECCurve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->sqrt()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    goto :goto_1

    .line 1029
    :cond_0
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->invert()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECCurve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECCurve;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1030
    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->solveQuadraticEquation(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1033
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eq v2, p1, :cond_2

    .line 1035
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->addOne()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1038
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result p1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_3

    const/4 v2, 0x6

    if-eq p1, v2, :cond_3

    .line 1048
    invoke-virtual {v0, p2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    goto :goto_1

    .line 1043
    :cond_3
    invoke-virtual {v0, p2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    .line 1060
    invoke-virtual {p0, p2, p1, v1}, Lorg/spongycastle/math/ec/ECCurve$F2m;->createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 1057
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid point compression"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 7

    .line 923
    new-instance v6, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k3:I

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    return-object v6
.end method

.method public getFieldSize()I
    .locals 1

    .line 918
    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method public getInfinity()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 970
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->infinity:Lorg/spongycastle/math/ec/ECPoint$F2m;

    return-object v0
.end method

.method public getK1()I
    .locals 1

    .line 1124
    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k1:I

    return v0
.end method

.method public getK2()I
    .locals 1

    .line 1129
    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k2:I

    return v0
.end method

.method public getK3()I
    .locals 1

    .line 1134
    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k3:I

    return v0
.end method

.method public getM()I
    .locals 1

    .line 1109
    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method declared-synchronized getMu()B
    .locals 1

    monitor-enter p0

    .line 990
    :try_start_0
    iget-byte v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->mu:B

    if-nez v0, :cond_0

    .line 992
    invoke-static {p0}, Lorg/spongycastle/math/ec/Tnaf;->getMu(Lorg/spongycastle/math/ec/ECCurve$F2m;)B

    move-result v0

    iput-byte v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->mu:B

    .line 994
    :cond_0
    iget-byte v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->mu:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSi()[Ljava/math/BigInteger;
    .locals 1

    monitor-enter p0

    .line 1004
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 1006
    invoke-static {p0}, Lorg/spongycastle/math/ec/Tnaf;->getSi(Lorg/spongycastle/math/ec/ECCurve$F2m;)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    .line 1008
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isKoblitz()Z
    .locals 1

    .line 979
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTrinomial()Z
    .locals 1

    .line 1119
    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k2:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k3:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportsCoordinateSystem(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method
