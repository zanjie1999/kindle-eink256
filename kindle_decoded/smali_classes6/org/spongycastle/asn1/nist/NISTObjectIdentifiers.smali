.class public interface abstract Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;
.super Ljava/lang/Object;
.source "NISTObjectIdentifiers.java"


# static fields
.field public static final aes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dsa_with_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dsa_with_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dsa_with_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dsa_with_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final hashAlgs:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes128_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes128_wrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes192_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes192_wrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes256_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes256_wrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_dsa_with_sha2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final nistAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 16
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->nistAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    .line 19
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->hashAlgs:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1"

    .line 22
    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->hashAlgs:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->hashAlgs:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "3"

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->hashAlgs:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "4"

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->hashAlgs:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "5"

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->hashAlgs:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "6"

    invoke-virtual {v0, v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 35
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->nistAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 38
    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 46
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 50
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "7"

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 53
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "21"

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 55
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "22"

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 57
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "23"

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 59
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "24"

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 61
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "25"

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_wrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 63
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "26"

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 65
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "27"

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 68
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "41"

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 70
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "42"

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 72
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "43"

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 74
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "44"

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 76
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "45"

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 78
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "46"

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 80
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "47"

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 86
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->nistAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 89
    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 91
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 93
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 95
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
