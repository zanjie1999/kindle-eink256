.class public Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;
.super Lorg/spongycastle/crypto/BufferedBlockCipher;
.source "PaddedBufferedBlockCipher.java"


# instance fields
.field padding:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1

    .line 48
    new-instance v0, Lorg/spongycastle/crypto/paddings/PKCS7Padding;

    invoke-direct {v0}, Lorg/spongycastle/crypto/paddings/PKCS7Padding;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 34
    iput-object p2, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    .line 36
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 250
    iget-boolean v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 252
    iget v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-ne v1, v0, :cond_1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    .line 254
    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 261
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 262
    iput v2, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->reset()V

    .line 258
    new-instance p1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    .line 265
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    iget-object v3, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v4, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-interface {v1, v3, v4}, Lorg/spongycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    .line 267
    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    add-int/2addr p2, v0

    invoke-interface {v1, v3, v2, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result p1

    add-int/2addr v0, p1

    .line 269
    invoke-virtual {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->reset()V

    goto :goto_1

    .line 273
    :cond_2
    iget v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-ne v1, v0, :cond_3

    .line 275
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v0, v1, v2, v1, v2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 276
    iput v2, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 287
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    iget-object v3, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v1, v3}, Lorg/spongycastle/crypto/paddings/BlockCipherPadding;->padCount([B)I

    move-result v1

    sub-int/2addr v0, v1

    .line 289
    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    invoke-virtual {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->reset()V

    :goto_1
    return v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->reset()V

    throw p1

    .line 280
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->reset()V

    .line 282
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    const-string p2, "last block incomplete in decryption"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getOutputSize(I)I
    .locals 2

    .line 96
    iget v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    .line 97
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v1, v0

    rem-int v1, p1, v1

    if-nez v1, :cond_1

    .line 101
    iget-boolean v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 103
    array-length v0, v0

    :goto_0
    add-int/2addr p1, v0

    :cond_0
    return p1

    :cond_1
    sub-int/2addr p1, v1

    .line 109
    array-length v0, v0

    goto :goto_0
.end method

.method public getUpdateOutputSize(I)I
    .locals 2

    .line 123
    iget v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    .line 124
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v1, v0

    rem-int v1, p1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 128
    array-length v0, v0

    sub-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_0
    sub-int/2addr p1, v1

    return p1
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 65
    iput-boolean p1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    .line 67
    invoke-virtual {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->reset()V

    .line 69
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 71
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 73
    iget-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/paddings/BlockCipherPadding;->init(Ljava/security/SecureRandom;)V

    .line 75
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/paddings/BlockCipherPadding;->init(Ljava/security/SecureRandom;)V

    .line 81
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    :goto_0
    return-void
.end method

.method public processBytes([BII[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-ltz p3, :cond_3

    .line 188
    invoke-virtual {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v0

    .line 189
    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v1

    if-lez v1, :cond_1

    add-int/2addr v1, p5

    .line 193
    array-length v2, p4

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v1

    iget v3, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-le p3, v2, :cond_2

    .line 204
    invoke-static {p1, p2, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v1, v3, v4, p4, p5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    add-int/2addr v1, v4

    .line 208
    iput v4, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    move v4, v1

    .line 212
    :goto_1
    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v1, v1

    if-le p3, v1, :cond_2

    .line 214
    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    add-int v2, p5, v4

    invoke-interface {v1, p1, p2, p4, v2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    add-int/2addr v4, v1

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_1

    .line 221
    :cond_2
    iget-object p4, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    iget p5, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    iget p1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    return v4

    .line 185
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
