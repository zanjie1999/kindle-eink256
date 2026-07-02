.class public Lorg/spongycastle/jcajce/provider/asymmetric/DH$Mappings;
.super Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "DH.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/asymmetric/DH;
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

    const-string v0, "KeyPairGenerator.DH"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.dh.KeyPairGeneratorSpi"

    .line 22
    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DH"

    const-string v1, "Alg.Alias.KeyPairGenerator.DIFFIEHELLMAN"

    .line 23
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "KeyAgreement.DH"

    const-string v2, "org.spongycastle.jcajce.provider.asymmetric.dh.KeyAgreementSpi"

    .line 25
    invoke-interface {p1, v1, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.KeyAgreement.DIFFIEHELLMAN"

    .line 26
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "KeyFactory.DH"

    const-string v2, "org.spongycastle.jcajce.provider.asymmetric.dh.KeyFactorySpi"

    .line 28
    invoke-interface {p1, v1, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.KeyFactory.DIFFIEHELLMAN"

    .line 29
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AlgorithmParameters.DH"

    const-string v2, "org.spongycastle.jcajce.provider.asymmetric.dh.AlgorithmParametersSpi"

    .line 31
    invoke-interface {p1, v1, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.AlgorithmParameters.DIFFIEHELLMAN"

    .line 32
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.AlgorithmParameterGenerator.DIFFIEHELLMAN"

    .line 34
    invoke-interface {p1, v1, v0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AlgorithmParameterGenerator.DH"

    const-string v2, "org.spongycastle.jcajce.provider.asymmetric.dh.AlgorithmParameterGeneratorSpi"

    .line 36
    invoke-interface {p1, v1, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Cipher.DHIES"

    const-string v2, "org.spongycastle.jcajce.provider.asymmetric.dh.IESCipher$IES"

    .line 38
    invoke-interface {p1, v1, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.dh.IESCipher$IESwithAES"

    const-string v2, "Cipher.DHIESwithAES"

    .line 39
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.DHIESWITHAES"

    .line 40
    invoke-interface {p1, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Cipher.DHIESWITHDESEDE"

    const-string v2, "org.spongycastle.jcajce.provider.asymmetric.dh.IESCipher$IESwithDESede"

    .line 41
    invoke-interface {p1, v1, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyFactorySpi;

    invoke-direct {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyFactorySpi;-><init>()V

    invoke-virtual {p0, p1, v1, v0, v2}, Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 44
    sget-object v1, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyFactorySpi;

    invoke-direct {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyFactorySpi;-><init>()V

    invoke-virtual {p0, p1, v1, v0, v2}, Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    return-void
.end method
