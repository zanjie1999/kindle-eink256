.class public Lorg/spongycastle/crypto/modes/CTSBlockCipher;
.super Lorg/spongycastle/crypto/BufferedBlockCipher;
.source "CTSBlockCipher.java"


# instance fields
.field private blockSize:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;-><init>()V

    .line 26
    instance-of v0, p1, Lorg/spongycastle/crypto/StreamBlockCipher;

    if-nez v0, :cond_0

    .line 31
    iput-object p1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 33
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    mul-int/lit8 p1, p1, 0x2

    .line 35
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CTSBlockCipher can only accept ECB, or CBC ciphers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 193
    iget v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_a

    .line 198
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 199
    iget v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int v2, v1, v0

    .line 200
    new-array v3, v0, [B

    .line 202
    iget-boolean v4, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    const-string v5, "need at least one block of input for CTS"

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    if-lt v1, v0, :cond_4

    .line 209
    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v1, v4, v6, v3, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 211
    iget v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-le v1, v0, :cond_3

    .line 213
    :goto_0
    iget-object v4, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v5, v4

    if-eq v1, v5, :cond_0

    sub-int v5, v1, v0

    .line 215
    aget-byte v5, v3, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 218
    :goto_1
    iget v4, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-eq v1, v4, :cond_1

    .line 220
    iget-object v4, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    aget-byte v5, v4, v1

    sub-int v7, v1, v0

    aget-byte v7, v3, v7

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 223
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    instance-of v4, v1, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    if-eqz v4, :cond_2

    .line 225
    check-cast v1, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    .line 227
    iget-object v4, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v1, v4, v0, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_2

    .line 231
    :cond_2
    iget-object v4, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v1, v4, v0, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_2
    add-int/2addr p2, v0

    .line 234
    invoke-static {v3, v6, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 238
    :cond_3
    invoke-static {v3, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 206
    :cond_4
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    invoke-direct {p1, v5}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    if-lt v1, v0, :cond_9

    .line 248
    new-array v4, v0, [B

    if-le v1, v0, :cond_8

    .line 252
    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    instance-of v5, v1, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    if-eqz v5, :cond_6

    .line 254
    check-cast v1, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    .line 256
    iget-object v5, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v1, v5, v6, v3, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_3

    .line 260
    :cond_6
    iget-object v5, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v1, v5, v6, v3, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_3
    move v1, v0

    .line 263
    :goto_4
    iget v5, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-eq v1, v5, :cond_7

    sub-int v5, v1, v0

    .line 265
    aget-byte v7, v3, v5

    iget-object v8, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    aget-byte v8, v8, v1

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 268
    :cond_7
    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-static {v1, v0, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1, v3, v6, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int/2addr p2, v0

    .line 271
    invoke-static {v4, v6, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 275
    :cond_8
    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 277
    invoke-static {v3, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    :goto_5
    iget p1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 283
    invoke-virtual {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->reset()V

    return p1

    .line 245
    :cond_9
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    invoke-direct {p1, v5}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 195
    :cond_a
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    const-string p2, "output buffer to small in doFinal"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getOutputSize(I)I
    .locals 1

    .line 72
    iget v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getUpdateOutputSize(I)I
    .locals 2

    .line 50
    iget v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    .line 51
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v1, v0

    rem-int v1, p1, v1

    if-nez v1, :cond_0

    .line 55
    array-length v0, v0

    sub-int/2addr p1, v0

    return p1

    :cond_0
    sub-int/2addr p1, v1

    return p1
.end method

.method public processBytes([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-ltz p3, :cond_4

    .line 131
    invoke-virtual {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v0

    .line 132
    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/modes/CTSBlockCipher;->getUpdateOutputSize(I)I

    move-result v1

    if-lez v1, :cond_1

    add-int/2addr v1, p5

    .line 136
    array-length v2, p4

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v1

    iget v3, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-le p3, v2, :cond_3

    .line 147
    invoke-static {p1, p2, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v1, v3, v4, p4, p5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    add-int/2addr v1, v4

    .line 150
    iget-object v3, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-static {v3, v0, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iput v0, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    :goto_1
    if-le p3, v0, :cond_2

    .line 159
    iget-object v2, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v3, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget-object v2, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    add-int v5, p5, v1

    invoke-interface {v2, v3, v4, p4, v5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v2

    add-int/2addr v1, v2

    .line 161
    iget-object v2, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-static {v2, v0, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_1

    :cond_2
    move v4, v1

    .line 168
    :cond_3
    iget-object p4, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->buf:[B

    iget p5, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget p1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/spongycastle/crypto/BufferedBlockCipher;->bufOff:I

    return v4

    .line 128
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
