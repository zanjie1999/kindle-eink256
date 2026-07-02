.class public Lorg/spongycastle/jce/provider/PKIXCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXCertPathValidatorSpi.java"


# instance fields
.field private final helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    .line 39
    new-instance v0, Lorg/spongycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    return-void
.end method


# virtual methods
.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v0, p2

    .line 51
    instance-of v2, v0, Ljava/security/cert/CertPathParameters;

    if-eqz v2, :cond_17

    .line 58
    instance-of v2, v0, Ljava/security/cert/PKIXParameters;

    if-eqz v2, :cond_1

    .line 60
    new-instance v2, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object v3, v0

    check-cast v3, Ljava/security/cert/PKIXParameters;

    invoke-direct {v2, v3}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    .line 62
    instance-of v3, v0, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    if-eqz v3, :cond_0

    .line 64
    check-cast v0, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    .line 66
    invoke-virtual {v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->setUseDeltasEnabled(Z)Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 67
    invoke-virtual {v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->setValidityModel(I)Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 70
    :cond_0
    invoke-virtual {v2}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_1
    instance-of v2, v0, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;

    if-eqz v2, :cond_2

    .line 74
    check-cast v0, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_2
    check-cast v0, Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    .line 81
    :goto_0
    invoke-virtual {v0}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 94
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v11

    .line 95
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 97
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-nez v2, :cond_15

    .line 110
    invoke-virtual {v0}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v15

    const/4 v9, 0x1

    .line 118
    :try_start_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 119
    invoke-virtual {v0}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-static {v2, v3, v4}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v8
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v2, -0x1

    if-eqz v8, :cond_14

    .line 132
    new-instance v3, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-direct {v3, v0}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lorg/spongycastle/jcajce/PKIXExtendedParameters;)V

    invoke-virtual {v3, v8}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->setTrustAnchor(Ljava/security/cert/TrustAnchor;)Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-virtual {v3}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    add-int/lit8 v3, v12, 0x1

    .line 149
    new-array v7, v3, [Ljava/util/ArrayList;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    .line 152
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    aput-object v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 155
    :cond_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const-string v5, "2.5.29.32.0"

    .line 157
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v5, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const/16 v18, 0x0

    const/16 v20, 0x0

    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    const/16 v23, 0x0

    const-string v22, "2.5.29.32.0"

    move-object/from16 v16, v5

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 162
    aget-object v4, v7, v14

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v6, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct {v6}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    .line 172
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 174
    invoke-virtual {v0}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    move v4, v3

    .line 188
    :goto_2
    invoke-virtual {v0}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->isAnyPolicyInhibited()Z

    move-result v17

    if-eqz v17, :cond_5

    const/16 v17, 0x0

    goto :goto_3

    :cond_5
    move/from16 v17, v3

    .line 202
    :goto_3
    invoke-virtual {v0}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->isPolicyMappingInhibited()Z

    move-result v18

    if-eqz v18, :cond_6

    const/4 v3, 0x0

    .line 217
    :cond_6
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v18

    if-eqz v18, :cond_7

    .line 222
    :try_start_1
    invoke-static/range {v18 .. v18}, Lorg/spongycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v19

    .line 223
    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v20

    goto :goto_4

    .line 227
    :cond_7
    invoke-static {v8}, Lorg/spongycastle/jce/provider/PrincipalUtils;->getCA(Ljava/security/cert/TrustAnchor;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v19

    .line 228
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v20
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 240
    :goto_4
    :try_start_2
    invoke-static/range {v20 .. v20}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_2

    .line 247
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 248
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    .line 259
    invoke-virtual {v0}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lorg/spongycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 260
    invoke-virtual {v0}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lorg/spongycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v2

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v9, v21

    check-cast v9, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2, v9}, Lorg/spongycastle/jcajce/PKIXCertStoreSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    .line 262
    :cond_8
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Target certificate in certification path does not match targetConstraints."

    invoke-direct {v0, v2, v13, v10, v14}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 269
    :cond_9
    :goto_5
    invoke-virtual {v0}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v9

    .line 270
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 271
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 273
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v13, v21

    check-cast v13, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v13, v14}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    const/4 v13, 0x0

    goto :goto_6

    .line 278
    :cond_a
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    const/4 v13, 0x1

    sub-int/2addr v2, v13

    move/from16 v24, v12

    const/4 v14, 0x0

    move-object/from16 v32, v5

    move v5, v2

    move/from16 v2, v17

    move-object/from16 v17, v32

    move/from16 v33, v4

    move v4, v3

    move/from16 v3, v33

    :goto_7
    if-ltz v5, :cond_10

    sub-int v14, v12, v5

    .line 293
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/security/cert/X509Certificate;

    .line 294
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v25, v2

    add-int/lit8 v2, v23, -0x1

    if-ne v5, v2, :cond_b

    const/16 v23, 0x1

    goto :goto_8

    :cond_b
    const/16 v23, 0x0

    .line 300
    :goto_8
    iget-object v2, v1, Lorg/spongycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    move/from16 v26, v25

    move-object/from16 v25, v2

    move-object/from16 v2, p1

    move v13, v3

    move-object v3, v0

    move-object/from16 v28, v11

    move v11, v4

    move v4, v5

    move-object/from16 v29, v15

    move v15, v5

    move-object/from16 v5, v20

    move-object/from16 v30, v0

    move-object v0, v6

    move/from16 v6, v23

    move-object/from16 v23, v7

    move-object/from16 v7, v19

    move-object/from16 v31, v8

    move-object/from16 v8, v18

    move-object/from16 v27, v9

    const/4 v1, 0x1

    move-object/from16 v9, v25

    invoke-static/range {v2 .. v9}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCertA(Ljava/security/cert/CertPath;Lorg/spongycastle/jcajce/PKIXExtendedParameters;ILjava/security/PublicKey;ZLorg/spongycastle/asn1/x500/X500Name;Ljava/security/cert/X509Certificate;Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    .line 303
    invoke-static {v10, v15, v0}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCertBC(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXNameConstraintValidator;)V

    move v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v23

    move/from16 v7, v26

    .line 305
    invoke-static/range {v2 .. v7}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    .line 308
    invoke-static {v10, v15, v2}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCertE(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    .line 310
    invoke-static {v10, v15, v2, v13}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCertF(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXPolicyNode;I)V

    if-eq v14, v12, :cond_f

    if-eqz v21, :cond_d

    .line 318
    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v3

    if-eq v3, v1, :cond_c

    goto :goto_9

    .line 320
    :cond_c
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Version 1 certificates can\'t be used as CA ones."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v10, v15}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 324
    :cond_d
    :goto_9
    invoke-static {v10, v15}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertA(Ljava/security/cert/CertPath;I)V

    move-object/from16 v6, v23

    .line 326
    invoke-static {v10, v15, v6, v2, v11}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;I)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    .line 329
    invoke-static {v10, v15, v0}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertG(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXNameConstraintValidator;)V

    .line 332
    invoke-static {v10, v15, v13}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH1(Ljava/security/cert/CertPath;II)I

    move-result v3

    .line 333
    invoke-static {v10, v15, v11}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH2(Ljava/security/cert/CertPath;II)I

    move-result v4

    move/from16 v5, v26

    .line 334
    invoke-static {v10, v15, v5}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH3(Ljava/security/cert/CertPath;II)I

    move-result v5

    .line 339
    invoke-static {v10, v15, v3}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI1(Ljava/security/cert/CertPath;II)I

    move-result v3

    .line 340
    invoke-static {v10, v15, v4}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI2(Ljava/security/cert/CertPath;II)I

    move-result v4

    .line 343
    invoke-static {v10, v15, v5}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertJ(Ljava/security/cert/CertPath;II)I

    move-result v5

    .line 346
    invoke-static {v10, v15}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertK(Ljava/security/cert/CertPath;I)V

    move/from16 v7, v24

    .line 349
    invoke-static {v10, v15, v7}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertL(Ljava/security/cert/CertPath;II)I

    move-result v7

    .line 352
    invoke-static {v10, v15, v7}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertM(Ljava/security/cert/CertPath;II)I

    move-result v24

    .line 355
    invoke-static {v10, v15}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertN(Ljava/security/cert/CertPath;I)V

    .line 357
    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 360
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 363
    sget-object v7, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 364
    sget-object v7, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 365
    sget-object v7, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 366
    sget-object v7, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 367
    sget-object v7, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 368
    sget-object v7, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 369
    sget-object v7, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 370
    sget-object v7, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 371
    sget-object v7, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 372
    sget-object v7, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    .line 376
    :cond_e
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    :goto_a
    move-object/from16 v7, v27

    .line 380
    invoke-static {v10, v15, v8, v7}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V

    .line 386
    invoke-static/range {v21 .. v21}, Lorg/spongycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v8

    .line 391
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v9
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v14, p0

    :try_start_4
    iget-object v11, v14, Lorg/spongycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    invoke-static {v9, v15, v11}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;ILorg/spongycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;

    move-result-object v9
    :try_end_4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_0

    .line 398
    invoke-static {v9}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v11

    .line 400
    invoke-virtual {v11}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 402
    invoke-virtual {v11}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-object/from16 v17, v2

    move v13, v3

    move v2, v5

    move-object v3, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v18, v21

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v14, p0

    .line 395
    :goto_b
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Next working key could not be retrieved."

    invoke-direct {v1, v2, v0, v10, v15}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    :cond_f
    move-object/from16 v14, p0

    move-object/from16 v6, v23

    move/from16 v7, v24

    move/from16 v5, v26

    move-object/from16 v3, v27

    move-object/from16 v17, v2

    move v2, v5

    move v4, v11

    :goto_c
    add-int/lit8 v5, v15, -0x1

    move-object v9, v3

    move-object v7, v6

    move v3, v13

    move-object v1, v14

    move-object/from16 v14, v21

    move-object/from16 v11, v28

    move-object/from16 v15, v29

    move-object/from16 v8, v31

    const/4 v13, 0x1

    move-object v6, v0

    move-object/from16 v0, v30

    goto/16 :goto_7

    :cond_10
    move-object/from16 v30, v0

    move v13, v3

    move-object v6, v7

    move-object/from16 v31, v8

    move-object v3, v9

    move-object/from16 v29, v15

    move v15, v5

    .line 410
    invoke-static {v13, v14}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertA(ILjava/security/cert/X509Certificate;)I

    move-result v0

    add-int/lit8 v5, v15, 0x1

    .line 412
    invoke-static {v10, v5, v0}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertB(Ljava/security/cert/CertPath;II)I

    move-result v0

    .line 421
    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 425
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 427
    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 428
    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 429
    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 430
    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 431
    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 432
    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 433
    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 434
    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 435
    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 436
    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 437
    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_d

    .line 441
    :cond_11
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 444
    :goto_d
    invoke-static {v10, v5, v3, v2}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V

    move-object/from16 v2, p1

    move-object/from16 v3, v30

    move-object/from16 v4, v29

    move-object/from16 v7, v17

    move-object/from16 v8, v16

    .line 446
    invoke-static/range {v2 .. v8}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertG(Ljava/security/cert/CertPath;Lorg/spongycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;I[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v1

    if-gtz v0, :cond_13

    if-eqz v1, :cond_12

    goto :goto_e

    .line 454
    :cond_12
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Path processing failed on policy."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v10, v15}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 451
    :cond_13
    :goto_e
    new-instance v0, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    move-object/from16 v3, v31

    invoke-direct {v0, v3, v1, v2}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v0

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 244
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Algorithm identifier of public key of trust anchor could not be read."

    invoke-direct {v0, v3, v1, v10, v2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :catch_3
    move-exception v0

    .line 233
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Subject of trust anchor could not be (re)encoded."

    invoke-direct {v1, v3, v0, v10, v2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 128
    :cond_14
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Trust anchor for certification path not found."

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v10, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :catch_4
    move-exception v0

    move-object/from16 v28, v11

    const/4 v1, 0x1

    .line 123
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-direct {v2, v3, v0, v10, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 99
    :cond_15
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Certification path is empty."

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v10, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 83
    :cond_16
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "trustAnchors is null, this is not allowed for certification path validation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_17
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameters must be a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " instance."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
