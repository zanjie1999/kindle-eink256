.class public Lorg/spongycastle/jcajce/provider/asymmetric/RSA$Mappings;
.super Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "RSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/asymmetric/RSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method

.method private addDigestSignature(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 8

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WITHRSA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "withRSA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "WithRSA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "RSA"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "WITHRSAENCRYPTION"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "withRSAEncryption"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "WithRSAEncryption"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 213
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Signature."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, p3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alg.Alias.Signature."

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 223
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Alg.Alias.Signature.OID."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public configure(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 7

    const-string v0, "AlgorithmParameters.OAEP"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.rsa.AlgorithmParametersSpi$OAEP"

    .line 26
    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AlgorithmParameters.PSS"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.rsa.AlgorithmParametersSpi$PSS"

    .line 27
    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PSS"

    const-string v1, "Alg.Alias.AlgorithmParameters.RSAPSS"

    .line 29
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.AlgorithmParameters.RSASSA-PSS"

    .line 30
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.AlgorithmParameters.SHA224withRSA/PSS"

    .line 32
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.AlgorithmParameters.SHA256withRSA/PSS"

    .line 33
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.AlgorithmParameters.SHA384withRSA/PSS"

    .line 34
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.AlgorithmParameters.SHA512withRSA/PSS"

    .line 35
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.AlgorithmParameters.SHA224WITHRSAANDMGF1"

    .line 37
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.AlgorithmParameters.SHA256WITHRSAANDMGF1"

    .line 38
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.AlgorithmParameters.SHA384WITHRSAANDMGF1"

    .line 39
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.AlgorithmParameters.SHA512WITHRSAANDMGF1"

    .line 40
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.AlgorithmParameters.RAWRSAPSS"

    .line 41
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.AlgorithmParameters.NONEWITHRSAPSS"

    .line 42
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.AlgorithmParameters.NONEWITHRSASSA-PSS"

    .line 43
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.AlgorithmParameters.NONEWITHRSAANDMGF1"

    .line 44
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.rsa.CipherSpi$NoPadding"

    const-string v2, "Cipher.RSA"

    .line 46
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.RSA/RAW"

    .line 47
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.rsa.CipherSpi$PKCS1v1_5Padding"

    const-string v2, "Cipher.RSA/PKCS1"

    .line 48
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.1.2.840.113549.1.1.1"

    .line 49
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.2.5.8.1.1"

    .line 50
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Cipher.RSA/1"

    const-string v2, "org.spongycastle.jcajce.provider.asymmetric.rsa.CipherSpi$PKCS1v1_5Padding_PrivateOnly"

    .line 51
    invoke-interface {p1, v1, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Cipher.RSA/2"

    const-string v2, "org.spongycastle.jcajce.provider.asymmetric.rsa.CipherSpi$PKCS1v1_5Padding_PublicOnly"

    .line 52
    invoke-interface {p1, v1, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.rsa.CipherSpi$OAEPPadding"

    const-string v2, "Cipher.RSA/OAEP"

    .line 53
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cipher."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSAES_OAEP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Cipher.RSA/ISO9796-1"

    const-string v2, "org.spongycastle.jcajce.provider.asymmetric.rsa.CipherSpi$ISO9796d1Padding"

    .line 55
    invoke-interface {p1, v1, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RSA"

    const-string v2, "Alg.Alias.Cipher.RSA//RAW"

    .line 57
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Cipher.RSA//NOPADDING"

    .line 58
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Cipher.RSA//PKCS1PADDING"

    const-string v3, "RSA/PKCS1"

    .line 59
    invoke-interface {p1, v2, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Cipher.RSA//OAEPPADDING"

    const-string v3, "RSA/OAEP"

    .line 60
    invoke-interface {p1, v2, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Cipher.RSA//ISO9796-1PADDING"

    const-string v3, "RSA/ISO9796-1"

    .line 61
    invoke-interface {p1, v2, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "KeyFactory.RSA"

    const-string v3, "org.spongycastle.jcajce.provider.asymmetric.rsa.KeyFactorySpi"

    .line 63
    invoke-interface {p1, v2, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "KeyPairGenerator.RSA"

    const-string v3, "org.spongycastle.jcajce.provider.asymmetric.rsa.KeyPairGeneratorSpi"

    .line 64
    invoke-interface {p1, v2, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v2, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyFactorySpi;

    invoke-direct {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyFactorySpi;-><init>()V

    .line 68
    sget-object v3, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v3, v1, v2}, Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 69
    sget-object v3, Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v3, v1, v2}, Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 70
    sget-object v3, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSAES_OAEP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v3, v1, v2}, Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 71
    sget-object v3, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v3, v1, v2}, Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 73
    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v2, v1}, Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 74
    sget-object v2, Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v2, v1}, Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 75
    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSAES_OAEP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "OAEP"

    invoke-virtual {p0, p1, v2, v3}, Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 76
    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v2, v0}, Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    const-string v2, "org.spongycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$PSSwithRSA"

    const-string v3, "Signature.RSASSA-PSS"

    .line 79
    invoke-interface {p1, v3, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Signature."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Signature.OID."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.spongycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA224withRSA"

    const-string v3, "Signature.SHA224WITHRSAANDMGF1"

    .line 83
    invoke-interface {p1, v3, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "org.spongycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA256withRSA"

    const-string v4, "Signature.SHA256WITHRSAANDMGF1"

    .line 84
    invoke-interface {p1, v4, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "org.spongycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA384withRSA"

    const-string v5, "Signature.SHA384WITHRSAANDMGF1"

    .line 85
    invoke-interface {p1, v5, v4}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "org.spongycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA512withRSA"

    const-string v6, "Signature.SHA512WITHRSAANDMGF1"

    .line 86
    invoke-interface {p1, v6, v5}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Signature.SHA224withRSA/PSS"

    .line 87
    invoke-interface {p1, v6, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Signature.SHA256withRSA/PSS"

    .line 88
    invoke-interface {p1, v2, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Signature.SHA384withRSA/PSS"

    .line 89
    invoke-interface {p1, v2, v4}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Signature.SHA512withRSA/PSS"

    .line 90
    invoke-interface {p1, v2, v5}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Signature.RSA"

    const-string v3, "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$noneRSA"

    .line 92
    invoke-interface {p1, v2, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Signature.RAWRSASSA-PSS"

    const-string v3, "org.spongycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$nonePSS"

    .line 93
    invoke-interface {p1, v2, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.RAWRSA"

    .line 95
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.NONEWITHRSA"

    .line 96
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RAWRSASSA-PSS"

    const-string v2, "Alg.Alias.Signature.RAWRSAPSS"

    .line 97
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.NONEWITHRSAPSS"

    .line 98
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.NONEWITHRSASSA-PSS"

    .line 99
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.NONEWITHRSAANDMGF1"

    .line 100
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.RSAPSS"

    const-string v2, "RSASSA-PSS"

    .line 101
    invoke-interface {p1, v1, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.SHA224withRSAandMGF1"

    const-string v2, "SHA224withRSA/PSS"

    .line 104
    invoke-interface {p1, v1, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.SHA256withRSAandMGF1"

    const-string v2, "SHA256withRSA/PSS"

    .line 105
    invoke-interface {p1, v1, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.SHA384withRSAandMGF1"

    const-string v2, "SHA384withRSA/PSS"

    .line 106
    invoke-interface {p1, v1, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.SHA512withRSAandMGF1"

    const-string v2, "SHA512withRSA/PSS"

    .line 107
    invoke-interface {p1, v1, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MD2"

    const-string v2, "MessageDigest"

    .line 109
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    sget-object v3, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$MD2"

    invoke-direct {p0, p1, v1, v4, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/RSA$Mappings;->addDigestSignature(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    :cond_0
    const-string v1, "MD4"

    .line 114
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    sget-object v3, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md4WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$MD4"

    invoke-direct {p0, p1, v1, v4, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/RSA$Mappings;->addDigestSignature(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    :cond_1
    const-string v1, "MD5"

    .line 119
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    sget-object v3, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$MD5"

    invoke-direct {p0, p1, v1, v4, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/RSA$Mappings;->addDigestSignature(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v1, "Signature.MD5withRSA/ISO9796-2"

    const-string v3, "org.spongycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$MD5WithRSAEncryption"

    .line 122
    invoke-interface {p1, v1, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.MD5WithRSA/ISO9796-2"

    const-string v3, "MD5withRSA/ISO9796-2"

    .line 123
    invoke-interface {p1, v1, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "SHA1"

    .line 126
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Alg.Alias.AlgorithmParameters.SHA1withRSA/PSS"

    .line 128
    invoke-interface {p1, v3, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Alg.Alias.AlgorithmParameters.SHA1WITHRSAANDMGF1"

    .line 129
    invoke-interface {p1, v3, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.SHA1withRSA/PSS"

    const-string v3, "org.spongycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA1withRSA"

    .line 130
    invoke-interface {p1, v0, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA1withRSAandMGF1"

    const-string v3, "SHA1withRSA/PSS"

    .line 131
    invoke-interface {p1, v0, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA1WITHRSAANDMGF1"

    const-string v3, "SHA1withRSA/PSS"

    .line 132
    invoke-interface {p1, v0, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA1"

    invoke-direct {p0, p1, v1, v3, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/RSA$Mappings;->addDigestSignature(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "Alg.Alias.Signature.SHA1WithRSA/ISO9796-2"

    const-string v1, "SHA1withRSA/ISO9796-2"

    .line 136
    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.SHA1withRSA/ISO9796-2"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$SHA1WithRSAEncryption"

    .line 137
    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA1WITHRSA"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Signature.OID."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA1WITHRSA"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA1withRSA/X9.31"

    const-string v1, "SHA1WITHRSA/X9.31"

    .line 141
    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA1WithRSA/X9.31"

    const-string v1, "SHA1WITHRSA/X9.31"

    .line 142
    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.SHA1WITHRSA/X9.31"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$SHA1WithRSAEncryption"

    .line 143
    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_3
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA224"

    const-string v3, "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA224"

    invoke-direct {p0, p1, v1, v3, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/RSA$Mappings;->addDigestSignature(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 147
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA256"

    const-string v3, "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA256"

    invoke-direct {p0, p1, v1, v3, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/RSA$Mappings;->addDigestSignature(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 148
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA384"

    const-string v3, "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA384"

    invoke-direct {p0, p1, v1, v3, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/RSA$Mappings;->addDigestSignature(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 149
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA512"

    const-string v3, "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA512"

    invoke-direct {p0, p1, v1, v3, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/RSA$Mappings;->addDigestSignature(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA224WITHRSA/X9.31"

    const-string v1, "Alg.Alias.Signature.SHA224withRSA/X9.31"

    .line 151
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.SHA224WithRSA/X9.31"

    .line 152
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.SHA224WITHRSA/X9.31"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$SHA224WithRSAEncryption"

    .line 153
    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SHA256WITHRSA/X9.31"

    const-string v1, "Alg.Alias.Signature.SHA256withRSA/X9.31"

    .line 154
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.SHA256WithRSA/X9.31"

    .line 155
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.SHA256WITHRSA/X9.31"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$SHA256WithRSAEncryption"

    .line 156
    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SHA384WITHRSA/X9.31"

    const-string v1, "Alg.Alias.Signature.SHA384withRSA/X9.31"

    .line 157
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.SHA384WithRSA/X9.31"

    .line 158
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.SHA384WITHRSA/X9.31"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$SHA384WithRSAEncryption"

    .line 159
    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SHA512WITHRSA/X9.31"

    const-string v1, "Alg.Alias.Signature.SHA512withRSA/X9.31"

    .line 160
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.SHA512WithRSA/X9.31"

    .line 161
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.SHA512WITHRSA/X9.31"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$SHA512WithRSAEncryption"

    .line 162
    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RIPEMD128"

    .line 164
    invoke-interface {p1, v2, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 166
    sget-object v0, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "RIPEMD128"

    const-string v4, "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD128"

    invoke-direct {p0, p1, v3, v4, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/RSA$Mappings;->addDigestSignature(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RMD128"

    const-string v3, "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD128"

    .line 167
    invoke-direct {p0, p1, v0, v3, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/RSA$Mappings;->addDigestSignature(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "Alg.Alias.Signature.RIPEMD128withRSA/X9.31"

    const-string v3, "RIPEMD128WITHRSA/X9.31"

    .line 168
    invoke-interface {p1, v0, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.RIPEMD128WithRSA/X9.31"

    const-string v3, "RIPEMD128WITHRSA/X9.31"

    .line 169
    invoke-interface {p1, v0, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.RIPEMD128WITHRSA/X9.31"

    const-string v3, "org.spongycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$RIPEMD128WithRSAEncryption"

    .line 170
    invoke-interface {p1, v0, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "RIPEMD160"

    .line 173
    invoke-interface {p1, v2, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 175
    sget-object v0, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd160:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "RIPEMD160"

    const-string v4, "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD160"

    invoke-direct {p0, p1, v3, v4, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/RSA$Mappings;->addDigestSignature(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RMD160"

    const-string v3, "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD160"

    .line 176
    invoke-direct {p0, p1, v0, v3, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/RSA$Mappings;->addDigestSignature(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "Alg.Alias.Signature.RIPEMD160WithRSA/ISO9796-2"

    const-string v3, "RIPEMD160withRSA/ISO9796-2"

    .line 177
    invoke-interface {p1, v0, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.RIPEMD160withRSA/ISO9796-2"

    const-string v3, "org.spongycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$RIPEMD160WithRSAEncryption"

    .line 178
    invoke-interface {p1, v0, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.RIPEMD160withRSA/X9.31"

    const-string v3, "RIPEMD160WITHRSA/X9.31"

    .line 179
    invoke-interface {p1, v0, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.RIPEMD160WithRSA/X9.31"

    const-string v3, "RIPEMD160WITHRSA/X9.31"

    .line 180
    invoke-interface {p1, v0, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.RIPEMD160WITHRSA/X9.31"

    const-string v3, "org.spongycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$RIPEMD160WithRSAEncryption"

    .line 181
    invoke-interface {p1, v0, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, "RIPEMD256"

    .line 184
    invoke-interface {p1, v2, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 186
    sget-object v0, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "RIPEMD256"

    const-string v4, "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD256"

    invoke-direct {p0, p1, v3, v4, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/RSA$Mappings;->addDigestSignature(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RMD256"

    const-string v3, "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD256"

    .line 187
    invoke-direct {p0, p1, v0, v3, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/RSA$Mappings;->addDigestSignature(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    :cond_6
    const-string v0, "WHIRLPOOL"

    .line 190
    invoke-interface {p1, v2, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "WHIRLPOOLWITHRSA/X9.31"

    const-string v1, "Alg.Alias.Signature.WhirlpoolWithRSA/X9.31"

    .line 192
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.WHIRLPOOLwithRSA/X9.31"

    .line 193
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.WHIRLPOOLWithRSA/X9.31"

    .line 194
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.WHIRLPOOLWITHRSA/X9.31"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$WhirlpoolWithRSAEncryption"

    .line 195
    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method
