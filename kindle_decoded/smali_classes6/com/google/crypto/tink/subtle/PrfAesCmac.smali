.class public final Lcom/google/crypto/tink/subtle/PrfAesCmac;
.super Ljava/lang/Object;
.source "PrfAesCmac.java"

# interfaces
.implements Lcom/google/crypto/tink/prf/Prf;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field private final keySpec:Ljavax/crypto/SecretKey;

.field private subKey1:[B

.field private subKey2:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    array-length v0, p1

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateAesKeySize(I)V

    .line 50
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/PrfAesCmac;->keySpec:Ljavax/crypto/SecretKey;

    .line 51
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/PrfAesCmac;->generateSubKeys()V

    return-void
.end method

.method private generateSubKeys()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 102
    invoke-static {}, Lcom/google/crypto/tink/subtle/PrfAesCmac;->instance()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/PrfAesCmac;->keySpec:Ljavax/crypto/SecretKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 105
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 106
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/AesUtil;->dbl([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/PrfAesCmac;->subKey1:[B

    .line 107
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/AesUtil;->dbl([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/PrfAesCmac;->subKey2:[B

    return-void
.end method

.method private static instance()Ljavax/crypto/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->CIPHER:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "AES/ECB/NoPadding"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    return-object v0
.end method


# virtual methods
.method public compute([BI)[B
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "data",
            "outputLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0x10

    if-gt p2, v0, :cond_3

    .line 61
    invoke-static {}, Lcom/google/crypto/tink/subtle/PrfAesCmac;->instance()Ljavax/crypto/Cipher;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/PrfAesCmac;->keySpec:Ljavax/crypto/SecretKey;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 68
    array-length v2, p1

    int-to-double v4, v2

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v4, v2, 0x10

    .line 71
    array-length v5, p1

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    add-int/lit8 v4, v2, -0x1

    mul-int/lit8 v4, v4, 0x10

    .line 76
    iget-object v5, p0, Lcom/google/crypto/tink/subtle/PrfAesCmac;->subKey1:[B

    invoke-static {p1, v4, v5, v6, v0}, Lcom/google/crypto/tink/subtle/Bytes;->xor([BI[BII)[B

    move-result-object v4

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v2, -0x1

    mul-int/lit8 v4, v4, 0x10

    .line 78
    array-length v5, p1

    .line 80
    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/crypto/tink/subtle/AesUtil;->cmacPad([B)[B

    move-result-object v4

    iget-object v5, p0, Lcom/google/crypto/tink/subtle/PrfAesCmac;->subKey2:[B

    .line 79
    invoke-static {v4, v5}, Lcom/google/crypto/tink/subtle/Bytes;->xor([B[B)[B

    move-result-object v4

    :goto_1
    new-array v5, v0, [B

    const/4 v7, 0x0

    :goto_2
    add-int/lit8 v8, v2, -0x1

    if-ge v7, v8, :cond_2

    mul-int/lit8 v8, v7, 0x10

    .line 90
    invoke-static {v5, v6, p1, v8, v0}, Lcom/google/crypto/tink/subtle/Bytes;->xor([BI[BII)[B

    move-result-object v5

    .line 91
    invoke-virtual {v1, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 93
    :cond_2
    invoke-static {v4, v5}, Lcom/google/crypto/tink/subtle/Bytes;->xor([B[B)[B

    move-result-object p1

    .line 96
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1

    .line 58
    :cond_3
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "outputLength too large, max is 16 bytes"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
