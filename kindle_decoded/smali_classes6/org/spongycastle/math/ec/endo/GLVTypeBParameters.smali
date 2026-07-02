.class public Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;
.super Ljava/lang/Object;
.source "GLVTypeBParameters.java"


# instance fields
.field protected final beta:Ljava/math/BigInteger;

.field protected final bits:I

.field protected final g1:Ljava/math/BigInteger;

.field protected final g2:Ljava/math/BigInteger;

.field protected final v1:[Ljava/math/BigInteger;

.field protected final v2:[Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->beta:Ljava/math/BigInteger;

    .line 18
    iput-object p3, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->v1:[Ljava/math/BigInteger;

    .line 19
    iput-object p4, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->v2:[Ljava/math/BigInteger;

    .line 20
    iput-object p5, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->g1:Ljava/math/BigInteger;

    .line 21
    iput-object p6, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->g2:Ljava/math/BigInteger;

    .line 22
    iput p7, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->bits:I

    return-void
.end method


# virtual methods
.method public getBeta()Ljava/math/BigInteger;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->beta:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getBits()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->bits:I

    return v0
.end method

.method public getG1()Ljava/math/BigInteger;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->g1:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getG2()Ljava/math/BigInteger;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->g2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getV1()[Ljava/math/BigInteger;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->v1:[Ljava/math/BigInteger;

    return-object v0
.end method

.method public getV2()[Ljava/math/BigInteger;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->v2:[Ljava/math/BigInteger;

    return-object v0
.end method
