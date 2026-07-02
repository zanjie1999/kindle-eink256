.class public Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;
.super Ljava/security/cert/CertPathBuilderSpi;
.source "PKIXCertPathBuilderSpi.java"


# instance fields
.field private certPathException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected build(Ljava/security/cert/X509Certificate;Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    .locals 5

    .line 154
    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 160
    :cond_0
    invoke-virtual {p2}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 165
    :cond_1
    invoke-virtual {p2}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;->getMaxPathLength()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 167
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;->getMaxPathLength()I

    move-result v2

    if-le v0, v2, :cond_2

    return-object v1

    .line 173
    :cond_2
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :try_start_0
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;-><init>()V

    .line 182
    new-instance v2, Lorg/spongycastle/jce/provider/PKIXCertPathValidatorSpi;

    invoke-direct {v2}, Lorg/spongycastle/jce/provider/PKIXCertPathValidatorSpi;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 193
    :try_start_1
    invoke-virtual {p2}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v3

    .line 194
    invoke-virtual {p2}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v4

    .line 193
    invoke-static {p1, v3, v4}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v3
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v3, :cond_3

    .line 202
    :try_start_2
    invoke-virtual {v0, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 213
    :try_start_3
    invoke-virtual {v2, v0, p2}, Lorg/spongycastle/jce/provider/PKIXCertPathValidatorSpi;->engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object p2

    check-cast p2, Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 222
    :try_start_4
    new-instance v2, Ljava/security/cert/PKIXCertPathBuilderResult;

    .line 223
    invoke-virtual {p2}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v3

    invoke-virtual {p2}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v4

    .line 224
    invoke-virtual {p2}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    invoke-direct {v2, v0, v3, v4, p2}, Ljava/security/cert/PKIXCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v2

    :catch_0
    move-exception p2

    .line 218
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v2, "Certification path could not be validated."

    invoke-direct {v0, v2, p2}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p2

    .line 206
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v2, "Certification path could not be constructed from certificate list."

    invoke-direct {v0, v2, p2}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 229
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    invoke-virtual {p2}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 237
    :try_start_5
    sget-object v2, Lorg/spongycastle/asn1/x509/Extension;->issuerAlternativeName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 238
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getNamedCertificateStoreMap()Ljava/util/Map;

    move-result-object v3

    .line 237
    invoke-static {v2, v3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromAltNames([BLjava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_4

    .line 246
    :try_start_6
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
    :try_end_6
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_4

    .line 251
    :try_start_7
    invoke-virtual {p2}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v3, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findIssuerCerts(Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_7
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_2

    .line 259
    :try_start_8
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 264
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 266
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    .line 268
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 269
    invoke-virtual {p0, v2, p2, p3}, Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;->build(Ljava/security/cert/X509Certificate;Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v1

    goto :goto_0

    .line 261
    :cond_4
    new-instance p2, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v0, "No issuer certificate for certificate in certification path found."

    invoke-direct {p2, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_2
    move-exception p2

    .line 255
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v2, "Cannot find issuer certificate for certificate in certification path."

    invoke-direct {v0, v2, p2}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p2

    .line 242
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v2, "No additional X.509 stores can be added from certificate locations."

    invoke-direct {v0, v2, p2}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_8
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    move-exception p2

    .line 275
    iput-object p2, p0, Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    :cond_5
    if-nez v1, :cond_6

    .line 279
    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6
    return-object v1

    .line 187
    :catch_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Exception creating support classes."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 47
    instance-of v0, p1, Ljava/security/cert/PKIXBuilderParameters;

    if-nez v0, :cond_1

    instance-of v1, p1, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    if-nez v1, :cond_1

    instance-of v1, p1, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parameters must be an instance of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Ljava/security/cert/PKIXBuilderParameters;

    .line 53
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;

    .line 54
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 60
    new-instance v0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object v1, p1

    check-cast v1, Ljava/security/cert/PKIXBuilderParameters;

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    .line 63
    instance-of v2, p1, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    if-eqz v2, :cond_3

    .line 65
    check-cast p1, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    .line 68
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getAdditionalStores()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/jcajce/PKIXCertStore;

    invoke-virtual {v0, v2}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->addCertificateStore(Lorg/spongycastle/jcajce/PKIXCertStore;)Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    goto :goto_1

    .line 72
    :cond_2
    new-instance v1, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    invoke-virtual {v0}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Lorg/spongycastle/jcajce/PKIXExtendedParameters;)V

    .line 74
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->addExcludedCerts(Ljava/util/Set;)Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    .line 75
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->setMaxPathLength(I)Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    goto :goto_2

    .line 79
    :cond_3
    new-instance p1, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    invoke-direct {p1, v1}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Ljava/security/cert/PKIXBuilderParameters;)V

    move-object v1, p1

    .line 82
    :goto_2
    invoke-virtual {v1}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->build()Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;

    move-result-object p1

    goto :goto_3

    .line 86
    :cond_4
    check-cast p1, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;

    .line 91
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lorg/spongycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v1

    .line 100
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lorg/spongycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v2

    .line 101
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lorg/spongycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x0

    .line 119
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 120
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v1, :cond_5

    .line 122
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 123
    invoke-virtual {p0, v1, p1, v0}, Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;->build(Ljava/security/cert/X509Certificate;Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v1

    goto :goto_4

    :cond_5
    if-nez v1, :cond_7

    .line 126
    iget-object p1, p0, Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-eqz p1, :cond_7

    .line 128
    instance-of p1, p1, Lorg/spongycastle/jce/provider/AnnotatedException;

    if-eqz p1, :cond_6

    .line 130
    new-instance p1, Ljava/security/cert/CertPathBuilderException;

    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 132
    :cond_6
    new-instance p1, Ljava/security/cert/CertPathBuilderException;

    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    const-string v1, "Possible certificate chain could not be validated."

    invoke-direct {p1, v1, v0}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_7
    if-nez v1, :cond_9

    .line 137
    iget-object p1, p0, Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-eqz p1, :cond_8

    goto :goto_5

    .line 139
    :cond_8
    new-instance p1, Ljava/security/cert/CertPathBuilderException;

    const-string v0, "Unable to find certificate chain."

    invoke-direct {p1, v0}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_5
    return-object v1

    .line 112
    :cond_a
    new-instance p1, Ljava/security/cert/CertPathBuilderException;

    const-string v0, "No certificate found matching targetContraints."

    invoke-direct {p1, v0}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 105
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;

    const-string v1, "Error finding target certificate."

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
