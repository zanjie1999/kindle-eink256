.class public Lorg/spongycastle/asn1/x9/X9ECParameters;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "X9ECParameters.java"

# interfaces
.implements Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private curve:Lorg/spongycastle/math/ec/ECCurve;

.field private fieldID:Lorg/spongycastle/asn1/x9/X9FieldID;

.field private g:Lorg/spongycastle/math/ec/ECPoint;

.field private h:Ljava/math/BigInteger;

.field private n:Ljava/math/BigInteger;

.field private seed:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    .line 25
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 36
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_2

    .line 38
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    new-instance v0, Lorg/spongycastle/asn1/x9/X9Curve;

    const/4 v1, 0x1

    .line 44
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x9/X9FieldID;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X9FieldID;

    move-result-object v1

    const/4 v2, 0x2

    .line 45
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x9/X9Curve;-><init>(Lorg/spongycastle/asn1/x9/X9FieldID;Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 47
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9Curve;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->curve:Lorg/spongycastle/math/ec/ECCurve;

    const/4 v1, 0x3

    .line 48
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 50
    instance-of v2, v1, Lorg/spongycastle/asn1/x9/X9ECPoint;

    if-eqz v2, :cond_0

    .line 52
    check-cast v1, Lorg/spongycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x9/X9ECPoint;->getPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->g:Lorg/spongycastle/math/ec/ECPoint;

    goto :goto_0

    .line 56
    :cond_0
    new-instance v2, Lorg/spongycastle/asn1/x9/X9ECPoint;

    iget-object v3, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->curve:Lorg/spongycastle/math/ec/ECCurve;

    check-cast v1, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct {v2, v3, v1}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x9/X9ECPoint;->getPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->g:Lorg/spongycastle/math/ec/ECPoint;

    :goto_0
    const/4 v1, 0x4

    .line 59
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    .line 60
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9Curve;->getSeed()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->seed:[B

    .line 62
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    const/4 v0, 0x5

    .line 64
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    :cond_1
    return-void

    .line 40
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad version in X9ECParameters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 97
    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 1

    .line 106
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->curve:Lorg/spongycastle/math/ec/ECCurve;

    .line 108
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p2

    iput-object p2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->g:Lorg/spongycastle/math/ec/ECPoint;

    .line 109
    iput-object p3, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    .line 110
    iput-object p4, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    .line 111
    iput-object p5, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->seed:[B

    .line 113
    invoke-static {p1}, Lorg/spongycastle/math/ec/ECAlgorithms;->isFpCurve(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 115
    new-instance p2, Lorg/spongycastle/asn1/x9/X9FieldID;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->getField()Lorg/spongycastle/math/field/FiniteField;

    move-result-object p1

    invoke-interface {p1}, Lorg/spongycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/spongycastle/asn1/x9/X9FieldID;-><init>(Ljava/math/BigInteger;)V

    iput-object p2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->fieldID:Lorg/spongycastle/asn1/x9/X9FieldID;

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/math/ec/ECAlgorithms;->isF2mCurve(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 119
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->getField()Lorg/spongycastle/math/field/FiniteField;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/math/field/PolynomialExtensionField;

    .line 120
    invoke-interface {p1}, Lorg/spongycastle/math/field/PolynomialExtensionField;->getMinimalPolynomial()Lorg/spongycastle/math/field/Polynomial;

    move-result-object p1

    invoke-interface {p1}, Lorg/spongycastle/math/field/Polynomial;->getExponentsPresent()[I

    move-result-object p1

    .line 121
    array-length p2, p1

    const/4 p3, 0x1

    const/4 p4, 0x2

    const/4 p5, 0x3

    if-ne p2, p5, :cond_1

    .line 123
    new-instance p2, Lorg/spongycastle/asn1/x9/X9FieldID;

    aget p4, p1, p4

    aget p1, p1, p3

    invoke-direct {p2, p4, p1}, Lorg/spongycastle/asn1/x9/X9FieldID;-><init>(II)V

    iput-object p2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->fieldID:Lorg/spongycastle/asn1/x9/X9FieldID;

    goto :goto_0

    .line 125
    :cond_1
    array-length p2, p1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    .line 127
    new-instance p2, Lorg/spongycastle/asn1/x9/X9FieldID;

    const/4 v0, 0x4

    aget v0, p1, v0

    aget p3, p1, p3

    aget p4, p1, p4

    aget p1, p1, p5

    invoke-direct {p2, v0, p3, p4, p1}, Lorg/spongycastle/asn1/x9/X9FieldID;-><init>(IIII)V

    iput-object p2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->fieldID:Lorg/spongycastle/asn1/x9/X9FieldID;

    :goto_0
    return-void

    .line 131
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only trinomial and pentomial curves are supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'curve\' is of an unsupported type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 1

    .line 70
    instance-of v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    if-eqz v0, :cond_0

    .line 72
    check-cast p0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 77
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCurve()Lorg/spongycastle/math/ec/ECCurve;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->curve:Lorg/spongycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public getG()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->g:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getH()Ljava/math/BigInteger;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 159
    sget-object v0, Lorg/spongycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    :cond_0
    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->seed:[B

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 185
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 187
    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 188
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->fieldID:Lorg/spongycastle/asn1/x9/X9FieldID;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 189
    new-instance v1, Lorg/spongycastle/asn1/x9/X9Curve;

    iget-object v2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->curve:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v3, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->seed:[B

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/x9/X9Curve;-><init>(Lorg/spongycastle/math/ec/ECCurve;[B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 190
    new-instance v1, Lorg/spongycastle/asn1/x9/X9ECPoint;

    iget-object v2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->g:Lorg/spongycastle/math/ec/ECPoint;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECPoint;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 191
    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 193
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 195
    new-instance v2, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 198
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
