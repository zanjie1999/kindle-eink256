.class public Lorg/spongycastle/jcajce/provider/asymmetric/ElGamal$Mappings;
.super Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "ElGamal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/asymmetric/ElGamal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 3

    const-string v0, "org.spongycastle.jcajce.provider.asymmetric.elgamal.AlgorithmParameterGeneratorSpi"

    const-string v1, "AlgorithmParameterGenerator.ELGAMAL"

    .line 22
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AlgorithmParameterGenerator.ElGamal"

    .line 23
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "org.spongycastle.jcajce.provider.asymmetric.elgamal.AlgorithmParametersSpi"

    const-string v1, "AlgorithmParameters.ELGAMAL"

    .line 24
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AlgorithmParameters.ElGamal"

    .line 25
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "org.spongycastle.jcajce.provider.asymmetric.elgamal.CipherSpi$NoPadding"

    const-string v1, "Cipher.ELGAMAL"

    .line 27
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Cipher.ElGamal"

    .line 28
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ELGAMAL/PKCS1"

    const-string v1, "Alg.Alias.Cipher.ELGAMAL/ECB/PKCS1PADDING"

    .line 29
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Cipher.ELGAMAL/NONE/PKCS1PADDING"

    .line 30
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ELGAMAL"

    const-string v1, "Alg.Alias.Cipher.ELGAMAL/NONE/NOPADDING"

    .line 31
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Cipher.ELGAMAL/PKCS1"

    const-string v2, "org.spongycastle.jcajce.provider.asymmetric.elgamal.CipherSpi$PKCS1v1_5Padding"

    .line 33
    invoke-interface {p1, v1, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.elgamal.KeyFactorySpi"

    const-string v2, "KeyFactory.ELGAMAL"

    .line 34
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "KeyFactory.ElGamal"

    .line 35
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.elgamal.KeyPairGeneratorSpi"

    const-string v2, "KeyPairGenerator.ELGAMAL"

    .line 37
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "KeyPairGenerator.ElGamal"

    .line 38
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v1, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyFactorySpi;

    invoke-direct {v1}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyFactorySpi;-><init>()V

    .line 42
    sget-object v2, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->elGamalAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 43
    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->elGamalAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v1, v0}, Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    return-void
.end method
