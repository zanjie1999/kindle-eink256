.class public Lorg/spongycastle/crypto/ec/CustomNamedCurves;
.super Ljava/lang/Object;
.source "CustomNamedCurves.java"


# static fields
.field static curve25519:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static final nameToCurve:Ljava/util/Hashtable;

.field static final nameToOID:Ljava/util/Hashtable;

.field static final oidToCurve:Ljava/util/Hashtable;

.field static final oidToName:Ljava/util/Hashtable;

.field static secp192k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static secp192r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static secp224k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static secp224r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static secp256k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static secp256r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static secp384r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static secp521r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$1;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$1;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->curve25519:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    .line 69
    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$2;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$2;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp192k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    .line 97
    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$3;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$3;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp192r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    .line 113
    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$4;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$4;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp224k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    .line 141
    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$5;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$5;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp224r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    .line 157
    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$6;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$6;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp256k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    .line 185
    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$7;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$7;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp256r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    .line 201
    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$8;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$8;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp384r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    .line 217
    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$9;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$9;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp521r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    .line 230
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    .line 231
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    .line 232
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    .line 233
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->oidToName:Ljava/util/Hashtable;

    .line 257
    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->curve25519:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v1, "curve25519"

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurve(Ljava/lang/String;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    .line 259
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp192k1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp192k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp192k1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    .line 260
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp192r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp192r1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    .line 261
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp224k1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp224k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp224k1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    .line 262
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp224r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp224r1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    .line 263
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp256k1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp256k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp256k1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    .line 264
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp256r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp256r1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    .line 265
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp384r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp384r1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    .line 266
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp521r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp521r1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    .line 268
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "P-192"

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 269
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "P-224"

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 270
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "P-256"

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 271
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "P-384"

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 272
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "P-521"

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    return-void
.end method

.method static synthetic access$000(Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECCurve;
    .locals 0

    .line 27
    invoke-static {p0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->configureCurve(Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECCurve;

    return-object p0
.end method

.method static synthetic access$100(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;)Lorg/spongycastle/math/ec/ECCurve;
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->configureCurveGLV(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method private static configureCurve(Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECCurve;
    .locals 0

    return-object p0
.end method

.method private static configureCurveGLV(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;)Lorg/spongycastle/math/ec/ECCurve;
    .locals 2

    .line 36
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->configure()Lorg/spongycastle/math/ec/ECCurve$Config;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;

    invoke-direct {v1, p0, p1}, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECCurve$Config;->setEndomorphism(Lorg/spongycastle/math/ec/endo/ECEndomorphism;)Lorg/spongycastle/math/ec/ECCurve$Config;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve$Config;->create()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method static defineCurve(Ljava/lang/String;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V
    .locals 1

    .line 237
    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static defineCurveAlias(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 2

    .line 250
    invoke-static {p0}, Lorg/spongycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 251
    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V
    .locals 1

    .line 242
    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->oidToName:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object p0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 1

    .line 277
    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->getParameters()Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 1

    .line 290
    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->getParameters()Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getNames()Ljava/util/Enumeration;
    .locals 1

    .line 318
    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method
