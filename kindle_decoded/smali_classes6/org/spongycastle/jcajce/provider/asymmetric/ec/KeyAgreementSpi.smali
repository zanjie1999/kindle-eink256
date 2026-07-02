.class public Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.super Ljavax/crypto/KeyAgreementSpi;
.source "KeyAgreementSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQVwithSHA1KDF;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHwithSHA1KDF;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQV;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHC;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DH;
    }
.end annotation


# static fields
.field private static final algorithms:Ljava/util/Hashtable;

.field private static final converter:Lorg/spongycastle/asn1/x9/X9IntegerConverter;

.field private static final des:Ljava/util/Hashtable;

.field private static final oids:Ljava/util/Hashtable;


# instance fields
.field private agreement:Lorg/spongycastle/crypto/BasicAgreement;

.field private kaAlgorithm:Ljava/lang/String;

.field private kdf:Lorg/spongycastle/crypto/DerivationFunction;

.field private parameters:Lorg/spongycastle/crypto/params/ECDomainParameters;

.field private result:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 55
    new-instance v0, Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->converter:Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    .line 56
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    .line 57
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->oids:Ljava/util/Hashtable;

    .line 58
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->des:Ljava/util/Hashtable;

    const/16 v0, 0x40

    .line 62
    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x80

    .line 63
    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc0

    .line 64
    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x100

    .line 65
    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 67
    sget-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v1, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    sget-object v4, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_wrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v1, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    sget-object v4, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v1, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    sget-object v3, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMS3DESwrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v1, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    sget-object v3, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v1, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    sget-object v2, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->oids:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "DESEDE"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->oids:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "AES"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->oids:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "DES"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->des:Ljava/util/Hashtable;

    invoke-virtual {v0, v3, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->des:Ljava/util/Hashtable;

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->des:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->des:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->des:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMS3DESwrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/BasicAgreement;Lorg/spongycastle/crypto/DerivationFunction;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    .line 105
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Lorg/spongycastle/crypto/BasicAgreement;

    .line 107
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    return-void
.end method

.method private bigIntToBytes(Ljava/math/BigInteger;)[B
    .locals 2

    .line 97
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->converter:Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->parameters:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lorg/spongycastle/math/ec/ECCurve;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object p1

    return-object p1
.end method

.method private static getSimpleName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    .line 312
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 314
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initFromKey(Ljava/security/Key;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Lorg/spongycastle/crypto/BasicAgreement;

    instance-of v0, v0, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;

    const-string v1, " for initialisation"

    const-string v2, " key agreement requires "

    if-eqz v0, :cond_2

    .line 269
    instance-of v0, p1, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;

    if-eqz v0, :cond_1

    .line 275
    check-cast p1, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;

    .line 277
    invoke-interface {p1}, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;->getStaticPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 279
    invoke-interface {p1}, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;->getEphemeralPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    const/4 v2, 0x0

    .line 282
    invoke-interface {p1}, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;->getEphemeralPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 285
    invoke-interface {p1}, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;->getEphemeralPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 288
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    invoke-direct {p1, v0, v1, v2}, Lorg/spongycastle/crypto/params/MQVPrivateParameters;-><init>(Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)V

    .line 289
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->parameters:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 293
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Lorg/spongycastle/crypto/BasicAgreement;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/BasicAgreement;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_0

    .line 271
    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;

    .line 272
    invoke-static {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 297
    :cond_2
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-eqz v0, :cond_3

    .line 303
    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 304
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->parameters:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 306
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Lorg/spongycastle/crypto/BasicAgreement;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/BasicAgreement;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    :goto_0
    return-void

    .line 299
    :cond_3
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/spongycastle/jce/interfaces/ECPrivateKey;

    .line 300
    invoke-static {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->parameters:Lorg/spongycastle/crypto/params/ECDomainParameters;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    .line 126
    iget-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Lorg/spongycastle/crypto/BasicAgreement;

    instance-of p2, p2, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;

    const-string v0, " for doPhase"

    const-string v1, " key agreement requires "

    if-eqz p2, :cond_1

    .line 128
    instance-of p2, p1, Lorg/spongycastle/jce/interfaces/MQVPublicKey;

    if-eqz p2, :cond_0

    .line 134
    check-cast p1, Lorg/spongycastle/jce/interfaces/MQVPublicKey;

    .line 136
    invoke-interface {p1}, Lorg/spongycastle/jce/interfaces/MQVPublicKey;->getStaticKey()Ljava/security/PublicKey;

    move-result-object p2

    invoke-static {p2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p2

    check-cast p2, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 138
    invoke-interface {p1}, Lorg/spongycastle/jce/interfaces/MQVPublicKey;->getEphemeralKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 140
    new-instance v0, Lorg/spongycastle/crypto/params/MQVPublicParameters;

    invoke-direct {v0, p2, p1}, Lorg/spongycastle/crypto/params/MQVPublicParameters;-><init>(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)V

    goto :goto_0

    .line 130
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lorg/spongycastle/jce/interfaces/MQVPublicKey;

    .line 131
    invoke-static {v1}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_1
    instance-of p2, p1, Ljava/security/PublicKey;

    if-eqz p2, :cond_2

    .line 152
    check-cast p1, Ljava/security/PublicKey;

    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 157
    :goto_0
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Lorg/spongycastle/crypto/BasicAgreement;

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->result:Ljava/math/BigInteger;

    const/4 p1, 0x0

    return-object p1

    .line 148
    :cond_2
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lorg/spongycastle/jce/interfaces/ECPublicKey;

    .line 149
    invoke-static {v1}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " can only be between two parties."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not initialised."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineGenerateSecret([BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->engineGenerateSecret()[B

    move-result-object v0

    .line 181
    array-length v1, p1

    sub-int/2addr v1, p2

    array-length v2, v0

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 186
    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    array-length p1, v0

    return p1

    .line 183
    :cond_0
    new-instance p1, Ljavax/crypto/ShortBufferException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " key agreement: need "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->result:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 196
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    sget-object v2, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->oids:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    sget-object v2, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->oids:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 204
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 206
    sget-object v2, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    sget-object v2, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 213
    new-instance v4, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;

    new-instance v5, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v5, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v2, v0}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;I[B)V

    .line 215
    div-int/lit8 v2, v2, 0x8

    new-array v0, v2, [B

    .line 216
    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    invoke-interface {v5, v4}, Lorg/spongycastle/crypto/DerivationFunction;->init(Lorg/spongycastle/crypto/DerivationParameters;)V

    .line 217
    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    invoke-interface {v4, v0, v3, v2}, Lorg/spongycastle/crypto/DerivationFunction;->generateBytes([BII)I

    goto :goto_1

    .line 208
    :cond_1
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown algorithm encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_2
    sget-object v2, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 224
    sget-object v2, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 226
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    new-array v4, v2, [B

    .line 228
    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    .line 234
    :cond_3
    :goto_1
    sget-object v2, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->des:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    invoke-static {v0}, Lorg/spongycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 239
    :cond_4
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method protected engineGenerateSecret()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->result:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "KDF can only be used when algorithm is known"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 261
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->initFromKey(Ljava/security/Key;)V

    return-void
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 253
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->initFromKey(Ljava/security/Key;)V

    return-void

    .line 250
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "No algorithm parameters supported"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
