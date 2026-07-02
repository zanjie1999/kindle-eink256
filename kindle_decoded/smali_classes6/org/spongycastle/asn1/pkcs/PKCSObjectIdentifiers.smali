.class public interface abstract Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;
.super Ljava/lang/Object;
.source "PKCSObjectIdentifiers.java"


# static fields
.field public static final bagtypes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final certTypes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final crlTypes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final data:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final des_EDE3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dhKeyAgreement:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final digestAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final encryptionAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_RSAES_OAEP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_RSASSA_PSS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aa_ets_commitmentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aa_ets_otherSigCert:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aa_ets_sigPolicyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aa_ets_signerLocation:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_alg:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_alg_CMS3DESwrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ct:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cti:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_mgf1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_smime:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final md2WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final md4WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final md5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final md5WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final pkcs_1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final pkcs_12:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final pkcs_12PbeIds:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final pkcs_3:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final pkcs_5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final pkcs_9:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final pkcs_9_at_emailAddress:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final pkcs_9_at_unstructuredAddress:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final pkcs_9_at_unstructuredName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final rsaEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final sha1WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final sha224WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final sha256WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final sha384WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final sha512WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final signedData:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 13
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.840.113549.1.1"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    .line 15
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 17
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "2"

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 19
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "3"

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md4WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 21
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "4"

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 23
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "5"

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 25
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "6"

    invoke-virtual {v0, v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "7"

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSAES_OAEP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "8"

    invoke-virtual {v0, v8}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "9"

    invoke-virtual {v0, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 33
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "10"

    invoke-virtual {v0, v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 35
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v11, "11"

    invoke-virtual {v0, v11}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 37
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v12, "12"

    invoke-virtual {v0, v12}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 39
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v13, "13"

    invoke-virtual {v0, v13}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v14, "14"

    invoke-virtual {v0, v14}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "1.2.840.113549.1.3"

    invoke-direct {v0, v15}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_3:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 50
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 57
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "1.2.840.113549.1.5"

    invoke-direct {v0, v15}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 60
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 62
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 64
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 66
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 68
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 70
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v11}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 72
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v13}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 74
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v12}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 81
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "1.2.840.113549.3"

    invoke-direct {v0, v15}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->encryptionAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 84
    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 86
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->encryptionAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 88
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->encryptionAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 94
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "1.2.840.113549.2"

    invoke-direct {v0, v15}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->digestAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 100
    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 107
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->digestAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 114
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->digestAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 117
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->digestAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 119
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->digestAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v8}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 121
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->digestAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 123
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->digestAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 125
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->digestAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v11}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 132
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "1.2.840.113549.1.7"

    invoke-direct {v0, v15}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 134
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "1.2.840.113549.1.7.1"

    invoke-direct {v0, v15}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 136
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "1.2.840.113549.1.7.2"

    invoke-direct {v0, v15}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 138
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "1.2.840.113549.1.7.3"

    invoke-direct {v0, v15}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 140
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "1.2.840.113549.1.7.4"

    invoke-direct {v0, v15}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 142
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "1.2.840.113549.1.7.5"

    invoke-direct {v0, v15}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 144
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "1.2.840.113549.1.7.6"

    invoke-direct {v0, v15}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 151
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "1.2.840.113549.1.9"

    invoke-direct {v0, v15}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 154
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_emailAddress:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 156
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 158
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 160
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 162
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 164
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 166
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 168
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v8}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredAddress:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 170
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 173
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v13}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 175
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v14}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 177
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "15"

    invoke-virtual {v0, v8}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 179
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v13, "16"

    invoke-virtual {v0, v13}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_smime:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 182
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "20"

    invoke-virtual {v0, v15}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 184
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v16, v15

    const-string v15, "21"

    invoke-virtual {v0, v15}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 188
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v17, v15

    const-string v15, "22.1"

    invoke-virtual {v0, v15}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 191
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "22"

    invoke-virtual {v0, v15}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->certTypes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 193
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 195
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->certTypes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 198
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v18, v15

    const-string v15, "23"

    invoke-virtual {v0, v15}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->crlTypes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 200
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 206
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v19, v13

    const-string v13, "15.1"

    invoke-virtual {v0, v13}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 208
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v13, "15.2"

    invoke-virtual {v0, v13}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 210
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v13, "15.3"

    invoke-virtual {v0, v13}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 217
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v13, "1.2.840.113549.1.9.16.1"

    invoke-direct {v0, v13}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 220
    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 222
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 224
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 226
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v15}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 228
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v13, "31"

    invoke-virtual {v0, v13}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 232
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_smime:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 234
    invoke-virtual {v0, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 241
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "1.2.840.113549.1.9.16.6"

    invoke-direct {v0, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 244
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 246
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 248
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 250
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 252
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 254
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 261
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "1.2.840.113549.1.9.16.2"

    invoke-direct {v0, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 265
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 268
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 270
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 272
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 278
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v11}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 280
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v12}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 282
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "47"

    invoke-virtual {v0, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 285
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 291
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v14}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 294
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v8}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_sigPolicyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 296
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v7, v19

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_commitmentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 298
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "17"

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_signerLocation:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 300
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "18"

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 302
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "19"

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_otherSigCert:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 304
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v7, v16

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 306
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v7, v17

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 308
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v7, v18

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 310
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v15}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 312
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "24"

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 314
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "25"

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 316
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "26"

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 318
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "27"

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 337
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "1.2.840.113549.1.9.16.5.1"

    invoke-direct {v0, v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 339
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "1.2.840.113549.1.9.16.5.2"

    invoke-direct {v0, v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 346
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "1.2.840.113549.1.12"

    invoke-direct {v0, v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "10.1"

    .line 348
    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->bagtypes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 351
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 353
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->bagtypes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 355
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->bagtypes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 357
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->bagtypes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 359
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->bagtypes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 361
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->bagtypes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 364
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 367
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 369
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 371
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 373
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 375
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 377
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 383
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 386
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.840.113549.1.9.16.3.6"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMS3DESwrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 388
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.840.113549.1.9.16.3.7"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-void
.end method
