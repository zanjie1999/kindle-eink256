.class public Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;
.super Ljava/lang/Object;
.source "BCECGOST3410PublicKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lorg/spongycastle/jce/interfaces/ECPublicKey;


# static fields
.field static final serialVersionUID:J = 0x61823879c4d16022L


# instance fields
.field private algorithm:Ljava/lang/String;

.field private transient ecSpec:Ljava/security/spec/ECParameterSpec;

.field private transient gostParams:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

.field private transient q:Lorg/spongycastle/math/ec/ECPoint;

.field private withCompression:Z


# direct methods
.method public constructor <init>(Ljava/security/spec/ECPublicKeySpec;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    .line 43
    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->algorithm:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 63
    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->q:Lorg/spongycastle/math/ec/ECPoint;

    return-void
.end method

.method constructor <init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    .line 43
    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->algorithm:Ljava/lang/String;

    .line 170
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->populateFromPubKeyInfo(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/jce/spec/ECPublicKeySpec;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    .line 43
    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->algorithm:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECPublicKeySpec;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->q:Lorg/spongycastle/math/ec/ECPoint;

    .line 71
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECKeySpec;->getParams()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECKeySpec;->getParams()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    .line 74
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECKeySpec;->getParams()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECKeySpec;->getParams()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lorg/spongycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->q:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p1

    if-nez p1, :cond_1

    .line 82
    sget-object p1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {p1}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p1

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->q:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->q:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/spongycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->q:Lorg/spongycastle/math/ec/ECPoint;

    :cond_1
    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_0
    return-void
.end method

.method private extractBytes([BILjava/math/BigInteger;)V
    .locals 5

    .line 283
    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p3

    .line 284
    array-length v0, p3

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    new-array v0, v2, [B

    .line 287
    array-length v3, p3

    rsub-int/lit8 v3, v3, 0x20

    array-length v4, p3

    invoke-static {p3, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v0

    :cond_0
    :goto_0
    if-eq v1, v2, :cond_1

    add-int v0, p2, v1

    .line 293
    array-length v3, p3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    aget-byte v3, p3, v3

    aput-byte v3, p1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private populateFromPubKeyInfo(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 10

    .line 175
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    const-string v1, "ECGOST3410"

    .line 177
    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->algorithm:Ljava/lang/String;

    .line 181
    :try_start_0
    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    const/16 v1, 0x20

    new-array v2, v1, [B

    new-array v3, v1, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-eq v5, v1, :cond_0

    rsub-int/lit8 v6, v5, 0x1f

    .line 194
    aget-byte v6, v0, v6

    aput-byte v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-eq v4, v1, :cond_1

    rsub-int/lit8 v5, v4, 0x3f

    .line 199
    aget-byte v5, v0, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 202
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->gostParams:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    .line 204
    invoke-virtual {p1}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getPublicKeyParamSet()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getName(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/jce/ECGOST3410NamedCurveTable;->getParameterSpec(Ljava/lang/String;)Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object p1

    .line 206
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    .line 207
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v6

    .line 209
    new-instance v1, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->q:Lorg/spongycastle/math/ec/ECPoint;

    .line 211
    new-instance v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->gostParams:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    .line 212
    invoke-virtual {v1}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getPublicKeyParamSet()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getName(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/security/spec/ECPoint;

    .line 215
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    .line 216
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v7, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 217
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v9

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void

    .line 185
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error recovering public key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 380
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 382
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 384
    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->populateFromPubKeyInfo(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 393
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public engineGetQ()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->q:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method engineGetSpec()Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 2

    .line 334
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    .line 336
    iget-boolean v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->withCompression:Z

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0

    .line 339
    :cond_0
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 361
    instance-of v0, p1, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 366
    :cond_0
    check-cast p1, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;

    .line 368
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->engineGetQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->engineGetQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint;->equals(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->engineGetSpec()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->engineGetSpec()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 7

    .line 235
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->gostParams:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v1, v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v1, :cond_1

    .line 243
    new-instance v1, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    check-cast v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    .line 244
    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getOID(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v2, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_CryptoProParamSet:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v0, v2}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 251
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 253
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    iget-boolean v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->withCompression:Z

    invoke-static {v2, v1, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lorg/spongycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 254
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 255
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 256
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 258
    new-instance v1, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/x9/X9ECParameters;)V

    :goto_0
    move-object v0, v1

    .line 262
    :goto_1
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->q:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    .line 263
    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->q:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x40

    new-array v3, v3, [B

    const/4 v4, 0x0

    .line 266
    invoke-direct {p0, v3, v4, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->extractBytes([BILjava/math/BigInteger;)V

    const/16 v1, 0x20

    .line 267
    invoke-direct {p0, v3, v1, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->extractBytes([BILjava/math/BigInteger;)V

    .line 271
    :try_start_0
    new-instance v1, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v4, v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    invoke-static {v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public getParameters()Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 2

    .line 304
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 309
    :cond_0
    iget-boolean v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->withCompression:Z

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getQ()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->q:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getDetachedPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 324
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->q:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 3

    .line 314
    new-instance v0, Ljava/security/spec/ECPoint;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->q:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->q:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 373
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->engineGetQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->engineGetSpec()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 344
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "line.separator"

    .line 345
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EC Public Key"

    .line 347
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "            X: "

    .line 348
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->q:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "            Y: "

    .line 349
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->q:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
