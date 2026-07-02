.class public final Lcom/amazon/org/codehaus/jackson/io/UTF32Reader;
.super Lcom/amazon/org/codehaus/jackson/io/BaseReader;
.source "UTF32Reader.java"


# instance fields
.field final mBigEndian:Z

.field mByteCount:I

.field mCharCount:I

.field mSurrogate:C


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BIIZ)V
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p5}, Lcom/amazon/org/codehaus/jackson/io/BaseReader;-><init>(Lcom/amazon/org/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BII)V

    const/4 p1, 0x0

    .line 20
    iput-char p1, p0, Lcom/amazon/org/codehaus/jackson/io/UTF32Reader;->mSurrogate:C

    .line 25
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/io/UTF32Reader;->mCharCount:I

    .line 30
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/io/UTF32Reader;->mByteCount:I

    .line 43
    iput-boolean p6, p0, Lcom/amazon/org/codehaus/jackson/io/UTF32Reader;->mBigEndian:Z

    return-void
.end method

.method private loadMore(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/io/UTF32Reader;->mByteCount:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_length:I

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/io/UTF32Reader;->mByteCount:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_2

    .line 171
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_ptr:I

    if-lez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 173
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_buffer:[B

    iget v4, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_ptr:I

    add-int/2addr v4, v2

    aget-byte v4, v3, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_0
    iput v1, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_ptr:I

    .line 177
    :cond_1
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_length:I

    goto :goto_1

    .line 182
    :cond_2
    iput v1, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_ptr:I

    .line 183
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_buffer:[B

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ge p1, v0, :cond_4

    .line 185
    iput v1, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_length:I

    if-gez p1, :cond_3

    .line 187
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->freeBuffers()V

    return v1

    .line 191
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->reportStrangeStream()V

    .line 193
    :cond_4
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_length:I

    .line 199
    :goto_1
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_length:I

    const/4 v1, 0x4

    if-ge p1, v1, :cond_7

    .line 200
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_in:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_buffer:[B

    array-length v4, v3

    sub-int/2addr v4, p1

    invoke-virtual {v2, v3, p1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ge p1, v0, :cond_6

    if-gez p1, :cond_5

    .line 203
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->freeBuffers()V

    .line 204
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_length:I

    invoke-direct {p0, v2, v1}, Lcom/amazon/org/codehaus/jackson/io/UTF32Reader;->reportUnexpectedEOF(II)V

    .line 207
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->reportStrangeStream()V

    .line 209
    :cond_6
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_length:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_length:I

    goto :goto_1

    :cond_7
    return v0
.end method

.method private reportInvalid(IILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/io/UTF32Reader;->mByteCount:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_ptr:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 151
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/io/UTF32Reader;->mCharCount:I

    add-int/2addr v1, p2

    .line 153
    new-instance p2, Ljava/io/CharConversionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid UTF-32 character 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at char #"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", byte #"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private reportUnexpectedEOF(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/io/UTF32Reader;->mByteCount:I

    add-int/2addr v0, p1

    .line 140
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/io/UTF32Reader;->mCharCount:I

    .line 142
    new-instance v2, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected EOF in the middle of a 4-byte UTF-32 char: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", needed "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", at char #"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", byte #"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-super {p0}, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->close()V

    return-void
.end method

.method public bridge synthetic read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-super {p0}, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->read()I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_buffer:[B

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    return p3

    :cond_1
    if-ltz p2, :cond_2

    add-int v0, p2, p3

    .line 64
    array-length v2, p1

    if-le v0, v2, :cond_3

    .line 65
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->reportBounds([CII)V

    :cond_3
    add-int/2addr p3, p2

    .line 72
    iget-char v0, p0, Lcom/amazon/org/codehaus/jackson/io/UTF32Reader;->mSurrogate:C

    const/4 v2, 0x4

    if-eqz v0, :cond_4

    add-int/lit8 v1, p2, 0x1

    .line 73
    aput-char v0, p1, p2

    const/4 v0, 0x0

    .line 74
    iput-char v0, p0, Lcom/amazon/org/codehaus/jackson/io/UTF32Reader;->mSurrogate:C

    goto :goto_0

    .line 80
    :cond_4
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_length:I

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_ptr:I

    sub-int/2addr v0, v3

    if-ge v0, v2, :cond_5

    .line 82
    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/io/UTF32Reader;->loadMore(I)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    move v1, p2

    :goto_0
    if-ge v1, p3, :cond_b

    .line 90
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_ptr:I

    .line 93
    iget-boolean v3, p0, Lcom/amazon/org/codehaus/jackson/io/UTF32Reader;->mBigEndian:Z

    if-eqz v3, :cond_6

    .line 94
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_buffer:[B

    aget-byte v4, v3, v0

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_1

    .line 97
    :cond_6
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_buffer:[B

    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v3, v0

    shl-int/lit8 v0, v0, 0x18

    :goto_1
    or-int/2addr v0, v4

    .line 100
    iget v3, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_ptr:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_ptr:I

    const v3, 0xffff

    if-le v0, v3, :cond_9

    const v3, 0x10ffff

    if-le v0, v3, :cond_7

    sub-int v4, v1, p2

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(above "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v4, v3}, Lcom/amazon/org/codehaus/jackson/io/UTF32Reader;->reportInvalid(IILjava/lang/String;)V

    :cond_7
    const/high16 v3, 0x10000

    sub-int/2addr v0, v3

    add-int/lit8 v3, v1, 0x1

    const v4, 0xd800

    shr-int/lit8 v5, v0, 0xa

    add-int/2addr v5, v4

    int-to-char v4, v5

    .line 110
    aput-char v4, p1, v1

    const v1, 0xdc00

    and-int/lit16 v0, v0, 0x3ff

    or-int/2addr v0, v1

    if-lt v3, p3, :cond_8

    int-to-char p1, v0

    .line 115
    iput-char p1, p0, Lcom/amazon/org/codehaus/jackson/io/UTF32Reader;->mSurrogate:C

    goto :goto_2

    :cond_8
    move v1, v3

    :cond_9
    add-int/lit8 v3, v1, 0x1

    int-to-char v0, v0

    .line 119
    aput-char v0, p1, v1

    .line 120
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_ptr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/io/BaseReader;->_length:I

    if-lt v0, v1, :cond_a

    :goto_2
    move v1, v3

    goto :goto_3

    :cond_a
    move v1, v3

    goto/16 :goto_0

    :cond_b
    :goto_3
    sub-int/2addr v1, p2

    .line 126
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/io/UTF32Reader;->mCharCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/io/UTF32Reader;->mCharCount:I

    return v1
.end method
