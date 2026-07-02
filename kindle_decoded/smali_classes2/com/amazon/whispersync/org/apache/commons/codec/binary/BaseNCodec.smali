.class public abstract Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;
.super Ljava/lang/Object;
.source "BaseNCodec.java"

# interfaces
.implements Lcom/amazon/whispersync/org/apache/commons/codec/BinaryEncoder;
.implements Lcom/amazon/whispersync/org/apache/commons/codec/BinaryDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_RESIZE_FACTOR:I = 0x2

.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field static final EOF:I = -0x1

.field protected static final MASK_8BITS:I = 0xff

.field public static final MIME_CHUNK_SIZE:I = 0x4c

.field protected static final PAD_DEFAULT:B = 0x3dt

.field public static final PEM_CHUNK_SIZE:I = 0x40


# instance fields
.field protected final PAD:B

.field private final chunkSeparatorLength:I

.field private final encodedBlockSize:I

.field protected final lineLength:I

.field private final unencodedBlockSize:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3d

    .line 156
    iput-byte v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->PAD:B

    .line 186
    iput p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    .line 187
    iput p2, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->encodedBlockSize:I

    const/4 p1, 0x0

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 189
    div-int/2addr p3, p2

    mul-int p1, p3, p2

    :cond_1
    iput p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    .line 190
    iput p4, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    return-void
.end method

.method protected static isWhiteSpace(B)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private resizeBuffer(Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;)[B
    .locals 4

    .line 227
    iget-object v0, p1, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->getDefaultBufferSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p1, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    .line 229
    iput v1, p1, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 230
    iput v1, p1, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    goto :goto_0

    .line 232
    :cond_0
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    .line 233
    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    iput-object v2, p1, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    .line 236
    :goto_0
    iget-object p1, p1, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    return-object p1
.end method


# virtual methods
.method available(Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;)I
    .locals 1

    .line 210
    iget-object v0, p1, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget p1, p1, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected containsAlphabetOrPad([B)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 476
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-byte v3, p1, v2

    const/16 v4, 0x3d

    if-eq v4, v3, :cond_2

    .line 477
    invoke-virtual {p0, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 354
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 355
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->decode([B)[B

    move-result-object p1

    return-object p1

    .line 356
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 357
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->decode(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 359
    :cond_1
    new-instance p1, Lcom/amazon/whispersync/org/apache/commons/codec/DecoderException;

    const-string v0, "Parameter supplied to Base-N decode is not a byte[] or a String"

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract decode([BIILcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;)V
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 0

    .line 371
    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->decode([B)[B

    move-result-object p1

    return-object p1
.end method

.method public decode([B)[B
    .locals 3

    if-eqz p1, :cond_1

    .line 383
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    .line 387
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->decode([BIILcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    const/4 v1, -0x1

    .line 388
    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->decode([BIILcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 389
    iget p1, v0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    new-array v1, p1, [B

    .line 390
    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->readResults([BIILcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;)I

    return-object v1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 312
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 315
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object p1

    return-object p1

    .line 313
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;

    const-string v0, "Parameter supplied to Base-N encode is not a byte[]"

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract encode([BIILcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;)V
.end method

.method public encode([B)[B
    .locals 3

    if-eqz p1, :cond_1

    .line 403
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    .line 407
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->encode([BIILcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    const/4 v1, -0x1

    .line 408
    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->encode([BIILcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 409
    iget p1, v0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v1, v0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    sub-int/2addr p1, v1

    new-array v1, p1, [B

    .line 410
    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->readResults([BIILcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;)I

    return-object v1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public encodeAsString([B)Ljava/lang/String;
    .locals 0

    .line 338
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 0

    .line 327
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected ensureBufferSize(ILcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;)[B
    .locals 3

    .line 246
    iget-object v0, p2, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_1

    array-length v1, v0

    iget v2, p2, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/2addr v2, p1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 247
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->resizeBuffer(Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object p1

    return-object p1
.end method

.method protected getDefaultBufferSize()I
    .locals 1

    const/16 v0, 0x2000

    return v0
.end method

.method public getEncodedLength([B)J
    .locals 6

    .line 495
    array-length p1, p1

    iget v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, v0

    int-to-long v0, p1

    iget p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->encodedBlockSize:I

    int-to-long v2, p1

    mul-long v0, v0, v2

    .line 496
    iget p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-lez p1, :cond_0

    int-to-long v2, p1

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    int-to-long v4, p1

    .line 498
    div-long/2addr v2, v4

    iget p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    int-to-long v4, p1

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method hasData(Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;)Z
    .locals 0

    .line 200
    iget-object p1, p1, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected abstract isInAlphabet(B)Z
.end method

.method public isInAlphabet(Ljava/lang/String;)Z
    .locals 1

    .line 460
    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->isInAlphabet([BZ)Z

    move-result p1

    return p1
.end method

.method public isInAlphabet([BZ)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 441
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 442
    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_0

    aget-byte v2, p1, v1

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_1

    aget-byte v2, p1, v1

    invoke-static {v2}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->isWhiteSpace(B)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method readResults([BIILcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;)I
    .locals 2

    .line 269
    iget-object v0, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {p0, p4}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->available(Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 271
    iget-object v0, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    iget v1, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    iget p1, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    add-int/2addr p1, p3

    iput p1, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    .line 273
    iget p2, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    .line 274
    iput-object p1, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    :cond_0
    return p3

    .line 278
    :cond_1
    iget-boolean p1, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
