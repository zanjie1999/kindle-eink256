.class public final Lcom/fasterxml/jackson/core/Base64Variant;
.super Ljava/lang/Object;
.source "Base64Variant.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final INT_SPACE:I = 0x20

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient _asciiToBase64:[I

.field private final transient _base64ToAsciiB:[B

.field private final transient _base64ToAsciiC:[C

.field protected final transient _maxLineLength:I

.field protected final _name:Ljava/lang/String;

.field protected final transient _paddingChar:C

.field protected final transient _usesPadding:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;I)V
    .locals 6

    .line 146
    iget-boolean v3, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    iget-char v4, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/Base64Variant;-><init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;ZCI)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;ZCI)V
    .locals 3

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [I

    .line 55
    iput-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    const/16 v0, 0x40

    new-array v1, v0, [C

    .line 61
    iput-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    new-array v0, v0, [B

    .line 67
    iput-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    .line 156
    iput-object p2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    .line 157
    iget-object p2, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    .line 158
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iget-object p2, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    .line 160
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object p1, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    .line 162
    iget-object p2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    array-length v0, p1

    invoke-static {p1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    .line 165
    iput-char p4, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    .line 166
    iput p5, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZCI)V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [I

    .line 55
    iput-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    const/16 v0, 0x40

    new-array v1, v0, [C

    .line 61
    iput-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    new-array v1, v0, [B

    .line 67
    iput-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    .line 111
    iput-object p1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    .line 112
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    .line 113
    iput-char p4, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    .line 114
    iput p5, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    .line 119
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 125
    iget-object p5, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1, p5, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 126
    iget-object p2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    const/4 p5, -0x1

    invoke-static {p2, p5}, Ljava/util/Arrays;->fill([II)V

    :goto_0
    if-ge v0, p1, :cond_0

    .line 128
    iget-object p2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    aget-char p2, p2, v0

    .line 129
    iget-object p5, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    int-to-byte v1, p2

    aput-byte v1, p5, v0

    .line 130
    iget-object p5, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aput v0, p5, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 135
    iget-object p1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    const/4 p2, -0x2

    aput p2, p1, p4

    :cond_1
    return-void

    .line 121
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
.method protected _reportBase64EOF()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 590
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected end-of-String in base64 content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected _reportInvalidBase64(CILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal white space character (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") as character #"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 575
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected padding character (\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\') as character #"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 577
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->isDefined(C)Z

    move-result p2

    const-string v0, ") in base64 content"

    if-eqz p2, :cond_3

    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 581
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal character \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' (code 0x"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 579
    :cond_3
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal character (code 0x"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz p3, :cond_4

    .line 584
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 586
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public decode(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 453
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_f

    :goto_1
    add-int/lit8 v3, v2, 0x1

    .line 460
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v3, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v4, 0x20

    if-le v2, v4, :cond_e

    .line 465
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v4

    const/4 v5, 0x0

    if-ltz v4, :cond_d

    if-ge v3, v0, :cond_c

    add-int/lit8 v2, v3, 0x1

    .line 474
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 475
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v6

    if-ltz v6, :cond_b

    shl-int/lit8 v3, v4, 0x6

    or-int/2addr v3, v6

    if-lt v2, v0, :cond_2

    .line 483
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result p1

    if-nez p1, :cond_1

    shr-int/lit8 p1, v3, 0x4

    .line 485
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto/16 :goto_3

    .line 488
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportBase64EOF()V

    throw v5

    :cond_2
    add-int/lit8 v4, v2, 0x1

    .line 490
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 491
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, -0x2

    const/4 v9, 0x2

    if-gez v6, :cond_6

    if-ne v6, v8, :cond_5

    if-ge v4, v0, :cond_4

    add-int/lit8 v2, v4, 0x1

    .line 502
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 503
    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(C)Z

    move-result v6

    if-eqz v6, :cond_3

    shr-int/lit8 v3, v3, 0x4

    .line 508
    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto :goto_0

    .line 504
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "expected padding character \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, v7, p1}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportInvalidBase64(CILjava/lang/String;)V

    throw v5

    .line 500
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportBase64EOF()V

    throw v5

    .line 496
    :cond_5
    invoke-virtual {p0, v2, v9, v5}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportInvalidBase64(CILjava/lang/String;)V

    throw v5

    :cond_6
    shl-int/lit8 v2, v3, 0x6

    or-int/2addr v2, v6

    if-lt v4, v0, :cond_8

    .line 516
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result p1

    if-nez p1, :cond_7

    shr-int/lit8 p1, v2, 0x2

    .line 518
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto :goto_3

    .line 521
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportBase64EOF()V

    throw v5

    :cond_8
    add-int/lit8 v3, v4, 0x1

    .line 523
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 524
    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v6

    if-gez v6, :cond_a

    if-ne v6, v8, :cond_9

    shr-int/lit8 v2, v2, 0x2

    .line 530
    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto :goto_2

    .line 527
    :cond_9
    invoke-virtual {p0, v4, v7, v5}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportInvalidBase64(CILjava/lang/String;)V

    throw v5

    :cond_a
    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v2, v6

    .line 534
    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendThreeBytes(I)V

    :goto_2
    move v2, v3

    goto/16 :goto_0

    :cond_b
    const/4 p1, 0x1

    .line 477
    invoke-virtual {p0, v3, p1, v5}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportInvalidBase64(CILjava/lang/String;)V

    throw v5

    .line 472
    :cond_c
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportBase64EOF()V

    throw v5

    .line 467
    :cond_d
    invoke-virtual {p0, v2, v1, v5}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportInvalidBase64(CILjava/lang/String;)V

    throw v5

    :cond_e
    move v2, v3

    goto/16 :goto_1

    :cond_f
    :goto_3
    return-void
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 432
    new-instance v0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;-><init>()V

    .line 433
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->decode(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;)V

    .line 434
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public decodeBase64Char(C)I
    .locals 1

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public encode([BZ)Ljava/lang/String;
    .locals 9

    .line 372
    array-length v0, p1

    shr-int/lit8 v1, v0, 0x2

    add-int/2addr v1, v0

    shr-int/lit8 v2, v0, 0x3

    add-int/2addr v1, v2

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x22

    if-eqz p2, :cond_0

    .line 380
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v3

    const/4 v4, 0x2

    shr-int/2addr v3, v4

    const/4 v5, 0x0

    add-int/lit8 v6, v0, -0x3

    :goto_0
    if-gt v5, v6, :cond_2

    add-int/lit8 v7, v5, 0x1

    .line 391
    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v8, v7, 0x1

    .line 392
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v7, v8, 0x1

    .line 393
    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v5, v8

    .line 394
    invoke-virtual {p0, v2, v5}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(Ljava/lang/StringBuilder;I)V

    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_1

    const/16 v3, 0x5c

    .line 397
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x6e

    .line 398
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v3

    shr-int/2addr v3, v4

    :cond_1
    move v5, v7

    goto :goto_0

    :cond_2
    sub-int/2addr v0, v5

    if-lez v0, :cond_4

    add-int/lit8 v3, v5, 0x1

    .line 406
    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x10

    if-ne v0, v4, :cond_3

    .line 408
    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr v5, p1

    .line 410
    :cond_3
    invoke-virtual {p0, v2, v5, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(Ljava/lang/StringBuilder;II)V

    :cond_4
    if-eqz p2, :cond_5

    .line 414
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 416
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeBase64Chunk(I[BI)I
    .locals 3

    add-int/lit8 v0, p3, 0x1

    .line 311
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v1, v2

    aput-byte v2, p2, p3

    add-int/lit8 p3, v0, 0x1

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    .line 312
    aget-byte v2, v1, v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    .line 313
    aget-byte v2, v1, v2

    aput-byte v2, p2, p3

    add-int/lit8 p3, v0, 0x1

    and-int/lit8 p1, p1, 0x3f

    .line 314
    aget-byte p1, v1, p1

    aput-byte p1, p2, v0

    return p3
.end method

.method public encodeBase64Chunk(I[CI)I
    .locals 3

    add-int/lit8 v0, p3, 0x1

    .line 245
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v1, v2

    aput-char v2, p2, p3

    add-int/lit8 p3, v0, 0x1

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    .line 246
    aget-char v2, v1, v2

    aput-char v2, p2, v0

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    .line 247
    aget-char v2, v1, v2

    aput-char v2, p2, p3

    add-int/lit8 p3, v0, 0x1

    and-int/lit8 p1, p1, 0x3f

    .line 248
    aget-char p1, v1, p1

    aput-char p1, p2, v0

    return p3
.end method

.method public encodeBase64Chunk(Ljava/lang/StringBuilder;I)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    and-int/lit8 p2, p2, 0x3f

    aget-char p2, v0, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public encodeBase64Partial(II[BI)I
    .locals 4

    add-int/lit8 v0, p4, 0x1

    .line 328
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v1, v2

    aput-byte v2, p3, p4

    add-int/lit8 p4, v0, 0x1

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    .line 329
    aget-byte v2, v1, v2

    aput-byte v2, p3, v0

    .line 330
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 331
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    int-to-byte v0, v0

    add-int/lit8 v3, p4, 0x1

    if-ne p2, v2, :cond_0

    shr-int/lit8 p1, p1, 0x6

    and-int/lit8 p1, p1, 0x3f

    .line 332
    aget-byte p1, v1, p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    aput-byte p1, p3, p4

    add-int/lit8 p4, v3, 0x1

    .line 334
    aput-byte v0, p3, v3

    goto :goto_1

    :cond_1
    if-ne p2, v2, :cond_2

    add-int/lit8 p2, p4, 0x1

    shr-int/lit8 p1, p1, 0x6

    and-int/lit8 p1, p1, 0x3f

    .line 337
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

    .line 270
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v1, v2

    aput-char v2, p3, p4

    add-int/lit8 p4, v0, 0x1

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    .line 271
    aget-char v2, v1, v2

    aput-char v2, p3, v0

    .line 272
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    add-int/lit8 v0, p4, 0x1

    if-ne p2, v2, :cond_0

    shr-int/lit8 p1, p1, 0x6

    and-int/lit8 p1, p1, 0x3f

    .line 273
    aget-char p1, v1, p1

    goto :goto_0

    :cond_0
    iget-char p1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    :goto_0
    aput-char p1, p3, p4

    add-int/lit8 p4, v0, 0x1

    .line 275
    iget-char p1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    aput-char p1, p3, v0

    goto :goto_1

    :cond_1
    if-ne p2, v2, :cond_2

    add-int/lit8 p2, p4, 0x1

    shr-int/lit8 p1, p1, 0x6

    and-int/lit8 p1, p1, 0x3f

    .line 278
    aget-char p1, v1, p1

    aput-char p1, p3, p4

    move p4, p2

    :cond_2
    :goto_1
    return p4
.end method

.method public encodeBase64Partial(Ljava/lang/StringBuilder;II)V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 287
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    if-ne p3, v1, :cond_0

    .line 289
    iget-object p3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 p2, p2, 0x6

    and-int/lit8 p2, p2, 0x3f

    aget-char p2, p3, p2

    goto :goto_0

    :cond_0
    iget-char p2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    iget-char p2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-ne p3, v1, :cond_2

    .line 294
    iget-object p3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 p2, p2, 0x6

    and-int/lit8 p2, p2, 0x3f

    aget-char p2, p3, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getMaxLineLength()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    return v0
.end method

.method public getPaddingChar()C
    .locals 1

    .line 194
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    invoke-static {v0}, Lcom/fasterxml/jackson/core/Base64Variants;->valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public usesPadding()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    return v0
.end method

.method public usesPaddingChar(C)Z
    .locals 1

    .line 192
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

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

    .line 193
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
