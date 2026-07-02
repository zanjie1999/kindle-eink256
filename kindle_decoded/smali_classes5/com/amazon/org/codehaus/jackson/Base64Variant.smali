.class public final Lcom/amazon/org/codehaus/jackson/Base64Variant;
.super Ljava/lang/Object;
.source "Base64Variant.java"


# static fields
.field public static final BASE64_VALUE_INVALID:I = -0x1

.field public static final BASE64_VALUE_PADDING:I = -0x2

.field static final PADDING_CHAR_NONE:C


# instance fields
.field private final _asciiToBase64:[I

.field private final _base64ToAsciiB:[B

.field private final _base64ToAsciiC:[C

.field final _maxLineLength:I

.field final _name:Ljava/lang/String;

.field final _paddingChar:C

.field final _usesPadding:Z


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/Base64Variant;Ljava/lang/String;I)V
    .locals 6

    .line 147
    iget-boolean v3, p1, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_usesPadding:Z

    iget-char v4, p1, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/Base64Variant;-><init>(Lcom/amazon/org/codehaus/jackson/Base64Variant;Ljava/lang/String;ZCI)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/Base64Variant;Ljava/lang/String;ZCI)V
    .locals 3

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [I

    .line 59
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    const/16 v0, 0x40

    new-array v1, v0, [C

    .line 65
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    new-array v0, v0, [B

    .line 71
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    .line 157
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_name:Ljava/lang/String;

    .line 158
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    .line 159
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    .line 161
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    .line 163
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    array-length v0, p1

    invoke-static {p1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iput-boolean p3, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_usesPadding:Z

    .line 166
    iput-char p4, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    .line 167
    iput p5, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_maxLineLength:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZCI)V
    .locals 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [I

    .line 59
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    const/16 v0, 0x40

    new-array v1, v0, [C

    .line 65
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    new-array v1, v0, [B

    .line 71
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    .line 112
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_name:Ljava/lang/String;

    .line 113
    iput-boolean p3, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_usesPadding:Z

    .line 114
    iput-char p4, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    .line 115
    iput p5, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_maxLineLength:I

    .line 120
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 126
    iget-object p5, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1, p5, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 127
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    const/4 p5, -0x1

    invoke-static {p2, p5}, Ljava/util/Arrays;->fill([II)V

    :goto_0
    if-ge v0, p1, :cond_0

    .line 129
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    aget-char p2, p2, v0

    .line 130
    iget-object p5, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    int-to-byte v1, p2

    aput-byte v1, p5, v0

    .line 131
    iget-object p5, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    aput v0, p5, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 136
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    const/4 p2, -0x2

    aput p2, p1, p4

    :cond_1
    return-void

    .line 122
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Base64Alphabet length must be exactly 64 (was "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public decodeBase64Byte(B)I
    .locals 1

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public decodeBase64Char(C)I
    .locals 1

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public decodeBase64Char(I)I
    .locals 1

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public encode([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 341
    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->encode([BZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encode([BZ)Ljava/lang/String;
    .locals 9

    .line 357
    array-length v0, p1

    shr-int/lit8 v1, v0, 0x2

    add-int/2addr v1, v0

    shr-int/lit8 v2, v0, 0x3

    add-int/2addr v1, v2

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x22

    if-eqz p2, :cond_0

    .line 365
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->getMaxLineLength()I

    move-result v3

    const/4 v4, 0x2

    shr-int/2addr v3, v4

    const/4 v5, 0x0

    add-int/lit8 v6, v0, -0x3

    :goto_0
    if-gt v5, v6, :cond_2

    add-int/lit8 v7, v5, 0x1

    .line 376
    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v8, v7, 0x1

    .line 377
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v7, v8, 0x1

    .line 378
    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v5, v8

    .line 379
    invoke-virtual {p0, v2, v5}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->encodeBase64Chunk(Ljava/lang/StringBuilder;I)V

    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_1

    const/16 v3, 0x5c

    .line 382
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x6e

    .line 383
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->getMaxLineLength()I

    move-result v3

    shr-int/2addr v3, v4

    :cond_1
    move v5, v7

    goto :goto_0

    :cond_2
    sub-int/2addr v0, v5

    if-lez v0, :cond_4

    add-int/lit8 v3, v5, 0x1

    .line 391
    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x10

    if-ne v0, v4, :cond_3

    .line 393
    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr v5, p1

    .line 395
    :cond_3
    invoke-virtual {p0, v2, v5, v0}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->encodeBase64Partial(Ljava/lang/StringBuilder;II)V

    :cond_4
    if-eqz p2, :cond_5

    .line 399
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 401
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeBase64BitsAsByte(I)B
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public encodeBase64BitsAsChar(I)C
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    aget-char p1, v0, p1

    return p1
.end method

.method public encodeBase64Chunk(I[BI)I
    .locals 3

    add-int/lit8 v0, p3, 0x1

    .line 298
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v1, v2

    aput-byte v2, p2, p3

    add-int/lit8 p3, v0, 0x1

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    .line 299
    aget-byte v2, v1, v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    .line 300
    aget-byte v2, v1, v2

    aput-byte v2, p2, p3

    add-int/lit8 p3, v0, 0x1

    and-int/lit8 p1, p1, 0x3f

    .line 301
    aget-byte p1, v1, p1

    aput-byte p1, p2, v0

    return p3
.end method

.method public encodeBase64Chunk(I[CI)I
    .locals 3

    add-int/lit8 v0, p3, 0x1

    .line 232
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v1, v2

    aput-char v2, p2, p3

    add-int/lit8 p3, v0, 0x1

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    .line 233
    aget-char v2, v1, v2

    aput-char v2, p2, v0

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    .line 234
    aget-char v2, v1, v2

    aput-char v2, p2, p3

    add-int/lit8 p3, v0, 0x1

    and-int/lit8 p1, p1, 0x3f

    .line 235
    aget-char p1, v1, p1

    aput-char p1, p2, v0

    return p3
.end method

.method public encodeBase64Chunk(Ljava/lang/StringBuilder;I)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    and-int/lit8 p2, p2, 0x3f

    aget-char p2, v0, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public encodeBase64Partial(II[BI)I
    .locals 4

    add-int/lit8 v0, p4, 0x1

    .line 315
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v1, v2

    aput-byte v2, p3, p4

    add-int/lit8 p4, v0, 0x1

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    .line 316
    aget-byte v2, v1, v2

    aput-byte v2, p3, v0

    .line 317
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_usesPadding:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 318
    iget-char v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    int-to-byte v0, v0

    add-int/lit8 v3, p4, 0x1

    if-ne p2, v2, :cond_0

    shr-int/lit8 p1, p1, 0x6

    and-int/lit8 p1, p1, 0x3f

    .line 319
    aget-byte p1, v1, p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    aput-byte p1, p3, p4

    add-int/lit8 p4, v3, 0x1

    .line 321
    aput-byte v0, p3, v3

    goto :goto_1

    :cond_1
    if-ne p2, v2, :cond_2

    add-int/lit8 p2, p4, 0x1

    shr-int/lit8 p1, p1, 0x6

    and-int/lit8 p1, p1, 0x3f

    .line 324
    aget-byte p1, v1, p1

    aput-byte p1, p3, p4

    move p4, p2

    :cond_2
    :goto_1
    return p4
.end method

.method public encodeBase64Partial(II[CI)I
    .locals 3

    add-int/lit8 v0, p4, 0x1

    .line 257
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v1, v2

    aput-char v2, p3, p4

    add-int/lit8 p4, v0, 0x1

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    .line 258
    aget-char v2, v1, v2

    aput-char v2, p3, v0

    .line 259
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_usesPadding:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    add-int/lit8 v0, p4, 0x1

    if-ne p2, v2, :cond_0

    shr-int/lit8 p1, p1, 0x6

    and-int/lit8 p1, p1, 0x3f

    .line 260
    aget-char p1, v1, p1

    goto :goto_0

    :cond_0
    iget-char p1, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    :goto_0
    aput-char p1, p3, p4

    add-int/lit8 p4, v0, 0x1

    .line 262
    iget-char p1, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    aput-char p1, p3, v0

    goto :goto_1

    :cond_1
    if-ne p2, v2, :cond_2

    add-int/lit8 p2, p4, 0x1

    shr-int/lit8 p1, p1, 0x6

    and-int/lit8 p1, p1, 0x3f

    .line 265
    aget-char p1, v1, p1

    aput-char p1, p3, p4

    move p4, p2

    :cond_2
    :goto_1
    return p4
.end method

.method public encodeBase64Partial(Ljava/lang/StringBuilder;II)V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_usesPadding:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    if-ne p3, v1, :cond_0

    .line 276
    iget-object p3, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 p2, p2, 0x6

    and-int/lit8 p2, p2, 0x3f

    aget-char p2, p3, p2

    goto :goto_0

    :cond_0
    iget-char p2, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    iget-char p2, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-ne p3, v1, :cond_2

    .line 281
    iget-object p3, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 p2, p2, 0x6

    and-int/lit8 p2, p2, 0x3f

    aget-char p2, p3, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    return-void
.end method

.method public getMaxLineLength()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_maxLineLength:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPaddingByte()B
    .locals 1

    .line 182
    iget-char v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    int-to-byte v0, v0

    return v0
.end method

.method public getPaddingChar()C
    .locals 1

    .line 181
    iget-char v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public usesPadding()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_usesPadding:Z

    return v0
.end method

.method public usesPaddingChar(C)Z
    .locals 1

    .line 179
    iget-char v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public usesPaddingChar(I)Z
    .locals 1

    .line 180
    iget-char v0, p0, Lcom/amazon/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
