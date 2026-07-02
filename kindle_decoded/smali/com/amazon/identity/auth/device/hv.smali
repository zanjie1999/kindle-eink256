.class public final Lcom/amazon/identity/auth/device/hv;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private mY:Ljava/lang/String;

.field private qJ:Ljava/lang/String;

.field private qK:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gw()V
    .locals 4

    const-string v0, "SHA-256"

    const-string v1, "CodeChallengeUtil"

    .line 1094
    :try_start_0
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/16 v3, 0x20

    new-array v3, v3, [B

    .line 1096
    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v2, 0xb

    .line 1103
    invoke-static {v3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 41
    iput-object v3, p0, Lcom/amazon/identity/auth/device/hv;->mY:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/amazon/identity/auth/device/hv;->qJ:Ljava/lang/String;

    .line 2078
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 2103
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/amazon/identity/auth/device/hv;->qK:Ljava/lang/String;

    .line 44
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Your JRE does not support the required SHA-256 algorithm."

    .line 48
    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public gx()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hv;->mY:Ljava/lang/String;

    return-object v0
.end method

.method public gy()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hv;->qK:Ljava/lang/String;

    return-object v0
.end method

.method public gz()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hv;->qJ:Ljava/lang/String;

    return-object v0
.end method
