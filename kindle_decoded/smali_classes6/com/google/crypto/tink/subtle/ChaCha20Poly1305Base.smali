.class abstract Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;
.super Ljava/lang/Object;
.source "ChaCha20Poly1305Base.java"

# interfaces
.implements Lcom/google/crypto/tink/Aead;


# instance fields
.field private final chacha20:Lcom/google/crypto/tink/subtle/ChaCha20Base;

.field private final macKeyChaCha20:Lcom/google/crypto/tink/subtle/ChaCha20Base;


# direct methods
.method public constructor <init>([B)V
    .locals 1
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
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;->newChaCha20Instance([BI)Lcom/google/crypto/tink/subtle/ChaCha20Base;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;->chacha20:Lcom/google/crypto/tink/subtle/ChaCha20Base;

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;->newChaCha20Instance([BI)Lcom/google/crypto/tink/subtle/ChaCha20Base;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;->macKeyChaCha20:Lcom/google/crypto/tink/subtle/ChaCha20Base;

    return-void
.end method

.method private decrypt(Ljava/nio/ByteBuffer;[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "ciphertext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 123
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;->chacha20:Lcom/google/crypto/tink/subtle/ChaCha20Base;

    invoke-virtual {v1}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->nonceSizeInBytes()I

    move-result v1

    const/16 v2, 0x10

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    .line 126
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-array v1, v2, [B

    .line 128
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 129
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 131
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 132
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 133
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;->chacha20:Lcom/google/crypto/tink/subtle/ChaCha20Base;

    invoke-virtual {v2}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->nonceSizeInBytes()I

    move-result v2

    new-array v2, v2, [B

    .line 134
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    new-array p2, p2, [B

    .line 140
    :cond_0
    :try_start_0
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;->getMacKey([B)[B

    move-result-object v2

    invoke-static {p2, p1}, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;->macDataRfc8439([BLjava/nio/ByteBuffer;)[B

    move-result-object p2

    invoke-static {v2, p2, v1}, Lcom/google/crypto/tink/subtle/Poly1305;->verifyMac([B[B[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    iget-object p2, p0, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;->chacha20:Lcom/google/crypto/tink/subtle/ChaCha20Base;

    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->decrypt(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 142
    new-instance p2, Ljavax/crypto/AEADBadTagException;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 124
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private encrypt(Ljava/nio/ByteBuffer;[B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "output",
            "plaintext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    array-length v1, p2

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;->chacha20:Lcom/google/crypto/tink/subtle/ChaCha20Base;

    .line 76
    invoke-virtual {v2}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->nonceSizeInBytes()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x10

    if-lt v0, v1, :cond_1

    .line 79
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 80
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;->chacha20:Lcom/google/crypto/tink/subtle/ChaCha20Base;

    invoke-virtual {v1, p1, p2}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->encrypt(Ljava/nio/ByteBuffer;[B)V

    .line 81
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 82
    iget-object p2, p0, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;->chacha20:Lcom/google/crypto/tink/subtle/ChaCha20Base;

    invoke-virtual {p2}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->nonceSizeInBytes()I

    move-result p2

    new-array p2, p2, [B

    .line 83
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x10

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    new-array p3, p3, [B

    .line 89
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;->getMacKey([B)[B

    move-result-object p2

    invoke-static {p3, p1}, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;->macDataRfc8439([BLjava/nio/ByteBuffer;)[B

    move-result-object p3

    invoke-static {p2, p3}, Lcom/google/crypto/tink/subtle/Poly1305;->computeMac([B[B)[B

    move-result-object p2

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    add-int/lit8 p3, p3, 0x10

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 91
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void

    .line 77
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given ByteBuffer output is too small"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getMacKey([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "nonce"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;->macKeyChaCha20:Lcom/google/crypto/tink/subtle/ChaCha20Base;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->chacha20Block([BI)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 154
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private static macDataRfc8439([BLjava/nio/ByteBuffer;)[B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "aad",
            "ciphertext"
        }
    .end annotation

    .line 160
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    array-length v0, p0

    goto :goto_0

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, 0x10

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x10

    sub-int/2addr v0, v1

    .line 161
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 163
    rem-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v1, 0x10

    sub-int/2addr v3, v2

    :goto_1
    add-int/2addr v3, v0

    add-int/lit8 v2, v3, 0x10

    .line 165
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 166
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 167
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 168
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 169
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 170
    array-length p0, p0

    int-to-long p0, p0

    invoke-virtual {v2, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    int-to-long p0, v1

    .line 171
    invoke-virtual {v2, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 172
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ciphertext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 108
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;->decrypt(Ljava/nio/ByteBuffer;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public encrypt([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "plaintext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 62
    array-length v0, p1

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;->chacha20:Lcom/google/crypto/tink/subtle/ChaCha20Base;

    .line 63
    invoke-virtual {v1}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->nonceSizeInBytes()I

    move-result v1

    const v2, 0x7fffffff

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x10

    if-gt v0, v2, :cond_0

    .line 66
    array-length v0, p1

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;->chacha20:Lcom/google/crypto/tink/subtle/ChaCha20Base;

    .line 67
    invoke-virtual {v1}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->nonceSizeInBytes()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 69
    invoke-direct {p0, v0, p1, p2}, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305Base;->encrypt(Ljava/nio/ByteBuffer;[B[B)V

    .line 70
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    .line 64
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract newChaCha20Instance([BI)Lcom/google/crypto/tink/subtle/ChaCha20Base;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "key",
            "initialCounter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method
