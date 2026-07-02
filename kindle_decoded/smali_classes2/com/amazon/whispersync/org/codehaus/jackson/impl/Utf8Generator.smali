.class public Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;
.super Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;
.source "Utf8Generator.java"


# static fields
.field private static final BYTE_0:B = 0x30t

.field private static final BYTE_BACKSLASH:B = 0x5ct

.field private static final BYTE_COLON:B = 0x3at

.field private static final BYTE_COMMA:B = 0x2ct

.field private static final BYTE_LBRACKET:B = 0x5bt

.field private static final BYTE_LCURLY:B = 0x7bt

.field private static final BYTE_QUOTE:B = 0x22t

.field private static final BYTE_RBRACKET:B = 0x5dt

.field private static final BYTE_RCURLY:B = 0x7dt

.field private static final BYTE_SPACE:B = 0x20t

.field private static final BYTE_u:B = 0x75t

.field private static final FALSE_BYTES:[B

.field static final HEX_CHARS:[B

.field private static final MAX_BYTES_TO_BUFFER:I = 0x200

.field private static final NULL_BYTES:[B

.field protected static final SURR1_FIRST:I = 0xd800

.field protected static final SURR1_LAST:I = 0xdbff

.field protected static final SURR2_FIRST:I = 0xdc00

.field protected static final SURR2_LAST:I = 0xdfff

.field private static final TRUE_BYTES:[B

.field protected static final sOutputEscapes:[I


# instance fields
.field protected _bufferRecyclable:Z

.field protected _charBuffer:[C

.field protected final _charBufferLength:I

.field protected _characterEscapes:Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;

.field protected _entityBuffer:[B

.field protected final _ioContext:Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;

.field protected _maximumNonEscapedChar:I

.field protected _outputBuffer:[B

.field protected final _outputEnd:I

.field protected _outputEscapes:[I

.field protected final _outputMaxContiguous:I

.field protected final _outputStream:Ljava/io/OutputStream;

.field protected _outputTail:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/util/CharTypes;->copyHexBytes()[B

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->HEX_CHARS:[B

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 42
    fill-array-data v1, :array_0

    sput-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->NULL_BYTES:[B

    new-array v0, v0, [B

    .line 43
    fill-array-data v0, :array_1

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->TRUE_BYTES:[B

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 44
    fill-array-data v0, :array_2

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->FALSE_BYTES:[B

    .line 50
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/util/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->sOutputEscapes:[I

    return-void

    :array_0
    .array-data 1
        0x6et
        0x75t
        0x6ct
        0x6ct
    .end array-data

    :array_1
    .array-data 1
        0x74t
        0x72t
        0x75t
        0x65t
    .end array-data

    :array_2
    .array-data 1
        0x66t
        0x61t
        0x6ct
        0x73t
        0x65t
    .end array-data
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;ILcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;Ljava/io/OutputStream;)V
    .locals 0

    .line 162
    invoke-direct {p0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;-><init>(ILcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;)V

    .line 77
    sget-object p2, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->sOutputEscapes:[I

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEscapes:[I

    const/4 p2, 0x0

    .line 115
    iput p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 163
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_ioContext:Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;

    .line 164
    iput-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputStream:Ljava/io/OutputStream;

    const/4 p2, 0x1

    .line 165
    iput-boolean p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_bufferRecyclable:Z

    .line 166
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;->allocWriteEncodingBuffer()[B

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    .line 167
    array-length p2, p2

    iput p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    shr-int/lit8 p2, p2, 0x3

    .line 172
    iput p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputMaxContiguous:I

    .line 173
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;->allocConcatBuffer()[C

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    .line 174
    array-length p1, p1

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_charBufferLength:I

    .line 177
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x7f

    .line 178
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->setHighestNonEscapedChar(I)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;ILcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;Ljava/io/OutputStream;[BIZ)V
    .locals 0

    .line 186
    invoke-direct {p0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;-><init>(ILcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;)V

    .line 77
    sget-object p2, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->sOutputEscapes:[I

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEscapes:[I

    const/4 p2, 0x0

    .line 115
    iput p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 187
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_ioContext:Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;

    .line 188
    iput-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputStream:Ljava/io/OutputStream;

    .line 189
    iput-boolean p7, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_bufferRecyclable:Z

    .line 190
    iput p6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 191
    iput-object p5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    .line 192
    array-length p2, p5

    iput p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    shr-int/lit8 p2, p2, 0x3

    .line 194
    iput p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputMaxContiguous:I

    .line 195
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;->allocConcatBuffer()[C

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    .line 196
    array-length p1, p1

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_charBufferLength:I

    .line 198
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x7f

    .line 199
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->setHighestNonEscapedChar(I)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;

    :cond_0
    return-void
.end method

.method private _handleLongCustomEscape([BII[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1482
    array-length v0, p4

    add-int v1, p2, v0

    if-le v1, p3, :cond_1

    .line 1484
    iput p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 1485
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1486
    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 1487
    array-length v1, p1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 1488
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1, p4, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    return p2

    .line 1491
    :cond_0
    invoke-static {p4, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    :cond_1
    mul-int/lit8 p5, p5, 0x6

    add-int/2addr p5, p2

    if-le p5, p3, :cond_2

    .line 1496
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1497
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    return p1

    :cond_2
    return p2
.end method

.method private final _outputMultiByteChar(II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1686
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    const v1, 0xd800

    if-lt p1, v1, :cond_0

    const v1, 0xdfff

    if-gt p1, v1, :cond_0

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x5c

    .line 1688
    aput-byte v2, v0, p2

    add-int/lit8 p2, v1, 0x1

    const/16 v2, 0x75

    .line 1689
    aput-byte v2, v0, v1

    add-int/lit8 v1, p2, 0x1

    .line 1691
    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->HEX_CHARS:[B

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0xf

    aget-byte v3, v2, v3

    aput-byte v3, v0, p2

    add-int/lit8 p2, v1, 0x1

    shr-int/lit8 v3, p1, 0x8

    and-int/lit8 v3, v3, 0xf

    .line 1692
    aget-byte v3, v2, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v3, p1, 0x4

    and-int/lit8 v3, v3, 0xf

    .line 1693
    aget-byte v3, v2, v3

    aput-byte v3, v0, p2

    add-int/lit8 p2, v1, 0x1

    and-int/lit8 p1, p1, 0xf

    .line 1694
    aget-byte p1, v2, p1

    aput-byte p1, v0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v2, p1, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    .line 1696
    aput-byte v2, v0, p2

    add-int/lit8 p2, v1, 0x1

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 1697
    aput-byte v2, v0, v1

    add-int/lit8 v1, p2, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    .line 1698
    aput-byte p1, v0, p2

    move p2, v1

    :goto_0
    return p2
.end method

.method private final _outputRawMultiByteChar(I[CII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0xd800

    if-lt p1, v0, :cond_1

    const v0, 0xdfff

    if-gt p1, v0, :cond_1

    if-lt p3, p4, :cond_0

    const-string p4, "Split surrogate on writeRaw() input (last character)"

    .line 1647
    invoke-virtual {p0, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 1649
    :cond_0
    aget-char p2, p2, p3

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputSurrogates(II)V

    add-int/lit8 p3, p3, 0x1

    return p3

    .line 1653
    :cond_1
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    .line 1654
    iget p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v0, p4, 0x1

    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    aput-byte v1, p2, p4

    add-int/lit8 p4, v0, 0x1

    .line 1655
    iput p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p4, 0x1

    .line 1656
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, p2, p4

    return p3
.end method

.method private final _writeBytes([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1162
    array-length v0, p1

    .line 1163
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 1164
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    const/16 v1, 0x200

    if-le v0, v1, :cond_0

    .line 1167
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void

    .line 1171
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1172
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    return-void
.end method

.method private final _writeBytes([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1177
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-le v0, v1, :cond_0

    .line 1178
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    const/16 v0, 0x200

    if-le p3, v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1186
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    return-void
.end method

.method private _writeCustomEscape([BILcom/amazon/whispersync/org/codehaus/jackson/SerializableString;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1468
    invoke-interface {p3}, Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;->asUnquotedUTF8()[B

    move-result-object v4

    .line 1469
    array-length p3, v4

    const/4 v0, 0x6

    if-le p3, v0, :cond_0

    .line 1471
    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_handleLongCustomEscape([BII[BI)I

    move-result p1

    return p1

    :cond_0
    const/4 p4, 0x0

    .line 1474
    invoke-static {v4, p4, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, p3

    return p2
.end method

.method private final _writeCustomStringSegment2([CII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1411
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-le v0, v1, :cond_0

    .line 1412
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1414
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 1416
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    .line 1417
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEscapes:[I

    .line 1419
    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_maximumNonEscapedChar:I

    if-gtz v3, :cond_1

    const v3, 0xffff

    .line 1420
    :cond_1
    iget-object v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_characterEscapes:Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;

    :goto_0
    if-ge p2, p3, :cond_a

    add-int/lit8 v5, p2, 0x1

    .line 1423
    aget-char p2, p1, p2

    const/16 v6, 0x7f

    if-gt p2, v6, :cond_6

    .line 1425
    aget v6, v2, p2

    if-nez v6, :cond_2

    add-int/lit8 v6, v0, 0x1

    int-to-byte p2, p2

    .line 1426
    aput-byte p2, v1, v0

    move p2, v5

    move v0, v6

    goto :goto_0

    .line 1429
    :cond_2
    aget v6, v2, p2

    if-lez v6, :cond_3

    add-int/lit8 p2, v0, 0x1

    const/16 v7, 0x5c

    .line 1431
    aput-byte v7, v1, v0

    add-int/lit8 v0, p2, 0x1

    int-to-byte v6, v6

    .line 1432
    aput-byte v6, v1, p2

    goto :goto_1

    :cond_3
    const/4 v7, -0x2

    if-ne v6, v7, :cond_5

    .line 1434
    invoke-virtual {v4, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;->getEscapeSequence(I)Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;

    move-result-object v6

    if-eqz v6, :cond_4

    sub-int p2, p3, v5

    .line 1439
    invoke-direct {p0, v1, v0, v6, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeCustomEscape([BILcom/amazon/whispersync/org/codehaus/jackson/SerializableString;I)I

    move-result v0

    goto :goto_1

    .line 1436
    :cond_4
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid custom escape definitions; custom escape not found for character code 0x"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", although was supposed to have one"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1442
    :cond_5
    invoke-direct {p0, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeGenericEscape(II)I

    move-result v0

    goto :goto_1

    :cond_6
    if-le p2, v3, :cond_7

    .line 1447
    invoke-direct {p0, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeGenericEscape(II)I

    move-result v0

    :goto_1
    move p2, v5

    goto :goto_0

    .line 1450
    :cond_7
    invoke-virtual {v4, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;->getEscapeSequence(I)Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;

    move-result-object v6

    if-eqz v6, :cond_8

    sub-int p2, p3, v5

    .line 1452
    invoke-direct {p0, v1, v0, v6, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeCustomEscape([BILcom/amazon/whispersync/org/codehaus/jackson/SerializableString;I)I

    move-result v0

    goto :goto_1

    :cond_8
    const/16 v6, 0x7ff

    if-gt p2, v6, :cond_9

    add-int/lit8 v6, v0, 0x1

    shr-int/lit8 v7, p2, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    .line 1456
    aput-byte v7, v1, v0

    add-int/lit8 v0, v6, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 1457
    aput-byte p2, v1, v6

    goto :goto_1

    .line 1459
    :cond_9
    invoke-direct {p0, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputMultiByteChar(II)I

    move-result p2

    move v0, p2

    goto :goto_1

    .line 1462
    :cond_a
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    return-void
.end method

.method private _writeGenericEscape(II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1731
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x5c

    .line 1732
    aput-byte v2, v0, p2

    add-int/lit8 p2, v1, 0x1

    const/16 v2, 0x75

    .line 1733
    aput-byte v2, v0, v1

    const/16 v1, 0xff

    if-le p1, v1, :cond_0

    shr-int/lit8 v2, p1, 0x8

    and-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1

    .line 1736
    sget-object v3, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->HEX_CHARS:[B

    shr-int/lit8 v4, v1, 0x4

    aget-byte v4, v3, v4

    aput-byte v4, v0, p2

    add-int/lit8 p2, v2, 0x1

    and-int/lit8 v1, v1, 0xf

    .line 1737
    aget-byte v1, v3, v1

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x30

    .line 1740
    aput-byte v2, v0, p2

    add-int/lit8 p2, v1, 0x1

    .line 1741
    aput-byte v2, v0, v1

    :goto_0
    add-int/lit8 v1, p2, 0x1

    .line 1744
    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->HEX_CHARS:[B

    shr-int/lit8 v3, p1, 0x4

    aget-byte v3, v2, v3

    aput-byte v3, v0, p2

    add-int/lit8 p2, v1, 0x1

    and-int/lit8 p1, p1, 0xf

    .line 1745
    aget-byte p1, v2, p1

    aput-byte p1, v0, v1

    return p2
.end method

.method private final _writeLongString(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 577
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 578
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    .line 581
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeStringSegments(Ljava/lang/String;)V

    .line 582
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt p1, v0, :cond_1

    .line 583
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 585
    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v2, p1, v0

    return-void
.end method

.method private final _writeLongString([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 591
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt p1, p2, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 594
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v0, 0x22

    aput-byte v0, p1, p2

    .line 595
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeStringSegments([CII)V

    .line 596
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt p1, p2, :cond_1

    .line 597
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 599
    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v0, p1, p2

    return-void
.end method

.method private final _writeNull()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1716
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/4 v1, 0x4

    add-int/2addr v0, v1

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v2, :cond_0

    .line 1717
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1719
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->NULL_BYTES:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1720
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    return-void
.end method

.method private final _writeQuotedInt(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 867
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 868
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v3, 0x22

    aput-byte v3, v0, v1

    .line 871
    invoke-static {p1, v0, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/io/NumberOutput;->outputInt(I[BI)I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 872
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v3, v0, p1

    return-void
.end method

.method private final _writeQuotedLong(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 892
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 893
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v3, 0x22

    aput-byte v3, v0, v1

    .line 896
    invoke-static {p1, p2, v0, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/io/NumberOutput;->outputLong(J[BI)I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 897
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v3, p2, p1

    return-void
.end method

.method private final _writeQuotedRaw(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 976
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 977
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    .line 980
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->writeRaw(Ljava/lang/String;)V

    .line 981
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt p1, v0, :cond_1

    .line 982
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 984
    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v2, p1, v0

    return-void
.end method

.method private final _writeSegmentedRaw([CII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 787
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    .line 788
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    :goto_0
    if-ge p2, p3, :cond_5

    .line 794
    :cond_0
    aget-char v2, p1, p2

    const/16 v3, 0x80

    if-lt v2, v3, :cond_3

    .line 807
    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v2, 0x3

    iget v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v2, v4, :cond_1

    .line 808
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    :cond_1
    add-int/lit8 v2, p2, 0x1

    .line 810
    aget-char p2, p1, p2

    const/16 v4, 0x800

    if-ge p2, v4, :cond_2

    .line 812
    iget v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    shr-int/lit8 v6, p2, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    add-int/lit8 v4, v5, 0x1

    .line 813
    iput v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p2, v3

    int-to-byte p2, p2

    aput-byte p2, v1, v5

    goto :goto_1

    .line 815
    :cond_2
    invoke-direct {p0, p2, p1, v2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputRawMultiByteChar(I[CII)I

    :goto_1
    move p2, v2

    goto :goto_0

    .line 799
    :cond_3
    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    if-lt v3, v0, :cond_4

    .line 800
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 802
    :cond_4
    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_0

    :cond_5
    return-void
.end method

.method private final _writeStringSegment([CII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    add-int/2addr p3, p2

    .line 1263
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 1264
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    .line 1265
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEscapes:[I

    :goto_0
    if-ge p2, p3, :cond_1

    .line 1268
    aget-char v3, p1, p2

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_1

    .line 1270
    aget v4, v2, v3

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v0, 0x1

    int-to-byte v3, v3

    .line 1273
    aput-byte v3, v1, v0

    add-int/lit8 p2, p2, 0x1

    move v0, v4

    goto :goto_0

    .line 1276
    :cond_1
    :goto_1
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    if-ge p2, p3, :cond_4

    .line 1279
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_characterEscapes:Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;

    if-eqz v0, :cond_2

    .line 1280
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeCustomStringSegment2([CII)V

    goto :goto_2

    .line 1282
    :cond_2
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_maximumNonEscapedChar:I

    if-nez v0, :cond_3

    .line 1283
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeStringSegment2([CII)V

    goto :goto_2

    .line 1285
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeStringSegmentASCII2([CII)V

    :cond_4
    :goto_2
    return-void
.end method

.method private final _writeStringSegment2([CII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1299
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-le v0, v1, :cond_0

    .line 1300
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1303
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 1305
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    .line 1306
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEscapes:[I

    :goto_0
    if-ge p2, p3, :cond_5

    add-int/lit8 v3, p2, 0x1

    .line 1309
    aget-char p2, p1, p2

    const/16 v4, 0x7f

    if-gt p2, v4, :cond_3

    .line 1311
    aget v4, v2, p2

    if-nez v4, :cond_1

    add-int/lit8 v4, v0, 0x1

    int-to-byte p2, p2

    .line 1312
    aput-byte p2, v1, v0

    move p2, v3

    move v0, v4

    goto :goto_0

    .line 1315
    :cond_1
    aget v4, v2, p2

    if-lez v4, :cond_2

    add-int/lit8 p2, v0, 0x1

    const/16 v5, 0x5c

    .line 1317
    aput-byte v5, v1, v0

    add-int/lit8 v0, p2, 0x1

    int-to-byte v4, v4

    .line 1318
    aput-byte v4, v1, p2

    goto :goto_1

    .line 1321
    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeGenericEscape(II)I

    move-result v0

    goto :goto_1

    :cond_3
    const/16 v4, 0x7ff

    if-gt p2, v4, :cond_4

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, p2, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    .line 1326
    aput-byte v5, v1, v0

    add-int/lit8 v0, v4, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 1327
    aput-byte p2, v1, v4

    goto :goto_1

    .line 1329
    :cond_4
    invoke-direct {p0, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputMultiByteChar(II)I

    move-result p2

    move v0, p2

    :goto_1
    move p2, v3

    goto :goto_0

    .line 1332
    :cond_5
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    return-void
.end method

.method private final _writeStringSegmentASCII2([CII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1353
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-le v0, v1, :cond_0

    .line 1354
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1357
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 1359
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    .line 1360
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEscapes:[I

    .line 1361
    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_maximumNonEscapedChar:I

    :goto_0
    if-ge p2, p3, :cond_6

    add-int/lit8 v4, p2, 0x1

    .line 1364
    aget-char p2, p1, p2

    const/16 v5, 0x7f

    if-gt p2, v5, :cond_3

    .line 1366
    aget v5, v2, p2

    if-nez v5, :cond_1

    add-int/lit8 v5, v0, 0x1

    int-to-byte p2, p2

    .line 1367
    aput-byte p2, v1, v0

    move p2, v4

    move v0, v5

    goto :goto_0

    .line 1370
    :cond_1
    aget v5, v2, p2

    if-lez v5, :cond_2

    add-int/lit8 p2, v0, 0x1

    const/16 v6, 0x5c

    .line 1372
    aput-byte v6, v1, v0

    add-int/lit8 v0, p2, 0x1

    int-to-byte v5, v5

    .line 1373
    aput-byte v5, v1, p2

    goto :goto_1

    .line 1376
    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeGenericEscape(II)I

    move-result v0

    goto :goto_1

    :cond_3
    if-le p2, v3, :cond_4

    .line 1381
    invoke-direct {p0, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeGenericEscape(II)I

    move-result v0

    :goto_1
    move p2, v4

    goto :goto_0

    :cond_4
    const/16 v5, 0x7ff

    if-gt p2, v5, :cond_5

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, p2, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    .line 1385
    aput-byte v6, v1, v0

    add-int/lit8 v0, v5, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 1386
    aput-byte p2, v1, v5

    goto :goto_1

    .line 1388
    :cond_5
    invoke-direct {p0, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputMultiByteChar(II)I

    move-result p2

    move v0, p2

    goto :goto_1

    .line 1391
    :cond_6
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    return-void
.end method

.method private final _writeStringSegments(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1205
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1207
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lez v0, :cond_1

    .line 1210
    iget v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputMaxContiguous:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v5, v3, v4

    .line 1211
    invoke-virtual {p1, v3, v5, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1212
    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/2addr v3, v4

    iget v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-le v3, v6, :cond_0

    .line 1213
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1215
    :cond_0
    invoke-direct {p0, v1, v2, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeStringSegment([CII)V

    sub-int/2addr v0, v4

    move v3, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final _writeStringSegments([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1231
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputMaxContiguous:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1232
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-le v1, v2, :cond_1

    .line 1233
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1235
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeStringSegment([CII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    if-gtz p3, :cond_0

    return-void
.end method

.method private final _writeUTF8Segment([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1528
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEscapes:[I

    add-int v1, p2, p3

    move v2, p2

    :goto_0
    if-ge v2, v1, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 1532
    aget-byte v2, p1, v2

    if-ltz v2, :cond_0

    .line 1533
    aget v2, v0, v2

    if-eqz v2, :cond_0

    .line 1534
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeUTF8Segment2([BII)V

    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    .line 1540
    :cond_1
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-le v0, v1, :cond_2

    .line 1541
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1543
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1544
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    return-void
.end method

.method private final _writeUTF8Segment2([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1550
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    mul-int/lit8 v1, p3, 0x6

    add-int/2addr v1, v0

    .line 1553
    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-le v1, v2, :cond_0

    .line 1554
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1555
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 1558
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    .line 1559
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEscapes:[I

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_4

    add-int/lit8 v3, p2, 0x1

    .line 1563
    aget-byte p2, p1, p2

    if-ltz p2, :cond_3

    .line 1565
    aget v4, v2, p2

    if-nez v4, :cond_1

    goto :goto_2

    .line 1569
    :cond_1
    aget v4, v2, p2

    if-lez v4, :cond_2

    add-int/lit8 p2, v0, 0x1

    const/16 v5, 0x5c

    .line 1571
    aput-byte v5, v1, v0

    add-int/lit8 v0, p2, 0x1

    int-to-byte v4, v4

    .line 1572
    aput-byte v4, v1, p2

    goto :goto_1

    .line 1575
    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeGenericEscape(II)I

    move-result p2

    move v0, p2

    :goto_1
    move p2, v3

    goto :goto_0

    :cond_3
    :goto_2
    add-int/lit8 v4, v0, 0x1

    .line 1566
    aput-byte p2, v1, v0

    move p2, v3

    move v0, v4

    goto :goto_0

    .line 1578
    :cond_4
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    return-void
.end method

.method private final _writeUTF8Segments([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1517
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputMaxContiguous:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1518
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeUTF8Segment([BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    if-gtz p3, :cond_0

    return-void
.end method


# virtual methods
.method protected final _decodeSurrogate(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0xdc00

    if-lt p2, v0, :cond_0

    const v1, 0xdfff

    if-le p2, v1, :cond_1

    .line 1707
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incomplete surrogate pair: first char 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", second 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1708
    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    :cond_1
    const/high16 v1, 0x10000

    const v2, 0xd800

    sub-int/2addr p1, v2

    shl-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v1

    sub-int/2addr p2, v0

    add-int/2addr p1, p2

    return p1
.end method

.method protected final _flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1751
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 1753
    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 1754
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputStream:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    return-void
.end method

.method protected final _outputSurrogates(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1663
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_decodeSurrogate(II)I

    move-result p1

    .line 1664
    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 p2, p2, 0x4

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-le p2, v0, :cond_0

    .line 1665
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1667
    :cond_0
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    .line 1668
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    shr-int/lit8 v2, p1, 0x12

    or-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    .line 1669
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v1, v0, 0x1

    .line 1670
    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    .line 1671
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, p2, v1

    return-void
.end method

.method protected _releaseBuffers()V
    .locals 3

    .line 1142
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1143
    iget-boolean v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_bufferRecyclable:Z

    if-eqz v2, :cond_0

    .line 1144
    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    .line 1145
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_ioContext:Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;->releaseWriteEncodingBuffer([B)V

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    if-eqz v0, :cond_1

    .line 1149
    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    .line 1150
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_ioContext:Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;->releaseConcatBuffer([C)V

    :cond_1
    return-void
.end method

.method protected final _verifyPrettyValueWrite(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    .line 1073
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_cantHappen()V

    goto :goto_0

    .line 1062
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {p1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->writeRootValueSeparator(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 1059
    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {p1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->writeObjectFieldValueSeparator(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 1056
    :cond_2
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {p1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->writeArrayValueSeparator(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 1066
    :cond_3
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->inArray()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1067
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {p1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->beforeArrayValues(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 1068
    :cond_4
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->inObject()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1069
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {p1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->beforeObjectEntries(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected final _verifyValueWrite(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1019
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;->writeValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", expecting field name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 1023
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    if-nez v1, :cond_5

    const/4 p1, 0x1

    if-eq v0, p1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x20

    goto :goto_0

    :cond_2
    const/16 v0, 0x3a

    goto :goto_0

    :cond_3
    const/16 v0, 0x2c

    .line 1039
    :goto_0
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v1, v2, :cond_4

    .line 1040
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1042
    :cond_4
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v0, v1, v2

    add-int/2addr v2, p1

    .line 1043
    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    return-void

    .line 1047
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_verifyPrettyValueWrite(Ljava/lang/String;I)V

    return-void
.end method

.method protected _writeBinary(Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;[BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    add-int/lit8 v0, p4, -0x3

    .line 1593
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    add-int/lit8 v1, v1, -0x6

    .line 1594
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;->getMaxLineLength()I

    move-result v2

    const/4 v3, 0x2

    shr-int/2addr v2, v3

    :goto_0
    if-gt p3, v0, :cond_2

    .line 1598
    iget v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    if-le v4, v1, :cond_0

    .line 1599
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    :cond_0
    add-int/lit8 v4, p3, 0x1

    .line 1602
    aget-byte p3, p2, p3

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v5, v4, 0x1

    .line 1603
    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr p3, v4

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v4, v5, 0x1

    .line 1604
    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr p3, v5

    .line 1605
    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    invoke-virtual {p1, p3, v5, v6}, Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;->encodeBase64Chunk(I[BI)I

    move-result p3

    iput p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_1

    .line 1608
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    add-int/lit8 v5, p3, 0x1

    iput v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v6, 0x5c

    aput-byte v6, v2, p3

    add-int/lit8 p3, v5, 0x1

    .line 1609
    iput p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 p3, 0x6e

    aput-byte p3, v2, v5

    .line 1610
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;->getMaxLineLength()I

    move-result p3

    shr-int/2addr p3, v3

    move v2, p3

    :cond_1
    move p3, v4

    goto :goto_0

    :cond_2
    sub-int/2addr p4, p3

    if-lez p4, :cond_5

    .line 1617
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    if-le v0, v1, :cond_3

    .line 1618
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    :cond_3
    add-int/lit8 v0, p3, 0x1

    .line 1620
    aget-byte p3, p2, p3

    shl-int/lit8 p3, p3, 0x10

    if-ne p4, v3, :cond_4

    .line 1622
    aget-byte p2, p2, v0

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p3, p2

    .line 1624
    :cond_4
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    invoke-virtual {p1, p3, p4, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;->encodeBase64Partial(II[BI)I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    :cond_5
    return-void
.end method

.method protected final _writeFieldName(Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 440
    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;->asQuotedUTF8()[B

    move-result-object p1

    .line 441
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeBytes([B)V

    return-void

    .line 445
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v3, 0x22

    aput-byte v3, v0, v1

    .line 451
    array-length v1, p1

    add-int v4, v2, v1

    add-int/lit8 v4, v4, 0x1

    .line 452
    iget v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-ge v4, v5, :cond_2

    const/4 v4, 0x0

    .line 453
    invoke-static {p1, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 455
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v3, v0, p1

    goto :goto_0

    .line 457
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeBytes([B)V

    .line 458
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt p1, v0, :cond_3

    .line 459
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 461
    :cond_3
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v3, p1, v0

    :goto_0
    return-void
.end method

.method protected final _writeFieldName(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 405
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeStringSegments(Ljava/lang/String;)V

    return-void

    .line 409
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 410
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    .line 414
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 415
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_charBufferLength:I

    if-gt v0, v1, :cond_4

    .line 416
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 418
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputMaxContiguous:I

    if-gt v0, p1, :cond_3

    .line 419
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/2addr p1, v0

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-le p1, v1, :cond_2

    .line 420
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 422
    :cond_2
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeStringSegment([CII)V

    goto :goto_0

    .line 424
    :cond_3
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeStringSegments([CII)V

    goto :goto_0

    .line 427
    :cond_4
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeStringSegments(Ljava/lang/String;)V

    .line 431
    :goto_0
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt p1, v0, :cond_5

    .line 432
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 434
    :cond_5
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v2, p1, v0

    return-void
.end method

.method protected final _writePPFieldName(Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 511
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {p2, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->writeObjectEntrySeparator(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 513
    :cond_0
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {p2, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->beforeObjectEntries(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    .line 516
    :goto_0
    sget-object p2, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result p2

    const/16 v0, 0x22

    if-eqz p2, :cond_2

    .line 518
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v1, v2, :cond_1

    .line 519
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 521
    :cond_1
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v0, v1, v2

    .line 523
    :cond_2
    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;->asQuotedUTF8()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeBytes([B)V

    if-eqz p2, :cond_4

    .line 525
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt p1, p2, :cond_3

    .line 526
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 528
    :cond_3
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v0, p1, p2

    :cond_4
    return-void
.end method

.method protected final _writePPFieldName(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 473
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {p2, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->writeObjectEntrySeparator(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 475
    :cond_0
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {p2, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->beforeObjectEntries(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    .line 478
    :goto_0
    sget-object p2, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 479
    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt p2, v0, :cond_1

    .line 480
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 482
    :cond_1
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v1, 0x22

    aput-byte v1, p2, v0

    .line 483
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    .line 484
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_charBufferLength:I

    if-gt p2, v0, :cond_4

    .line 485
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 487
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputMaxContiguous:I

    if-gt p2, p1, :cond_3

    .line 488
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/2addr p1, p2

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-le p1, v0, :cond_2

    .line 489
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 491
    :cond_2
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    invoke-direct {p0, p1, v2, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeStringSegment([CII)V

    goto :goto_1

    .line 493
    :cond_3
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    invoke-direct {p0, p1, v2, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeStringSegments([CII)V

    goto :goto_1

    .line 496
    :cond_4
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeStringSegments(Ljava/lang/String;)V

    .line 498
    :goto_1
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt p1, p2, :cond_5

    .line 499
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 501
    :cond_5
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v1, p1, p2

    goto :goto_2

    .line 503
    :cond_6
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeStringSegments(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1100
    invoke-super {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->close()V

    .line 1106
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1109
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->getOutputContext()Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    .line 1110
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->inArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1111
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->writeEndArray()V

    goto :goto_0

    .line 1112
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->inObject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1113
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->writeEndObject()V

    goto :goto_0

    .line 1119
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1127
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_4

    .line 1128
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_ioContext:Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1130
    :cond_2
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1132
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_2

    .line 1129
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1136
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_releaseBuffers()V

    return-void
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1088
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1089
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 1090
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method

.method public getCharacterEscapes()Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_characterEscapes:Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;

    return-object v0
.end method

.method public getHighestEscapedChar()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_maximumNonEscapedChar:I

    return v0
.end method

.method public getOutputTarget()Ljava/lang/Object;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public setCharacterEscapes(Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_characterEscapes:Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;

    if-nez p1, :cond_0

    .line 225
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->sOutputEscapes:[I

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEscapes:[I

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;->getEscapeCodesForAscii()[I

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEscapes:[I

    :goto_0
    return-object p0
.end method

.method public setHighestNonEscapedChar(I)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 211
    :cond_0
    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_maximumNonEscapedChar:I

    return-object p0
.end method

.method public writeBinary(Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write binary value"

    .line 830
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 832
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 833
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    add-int/2addr p4, p3

    .line 836
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeBinary(Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;[BII)V

    .line 838
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt p1, p2, :cond_1

    .line 839
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 841
    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v2, p1, p2

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write boolean value"

    .line 991
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 992
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 993
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    :cond_0
    if-eqz p1, :cond_1

    .line 995
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->TRUE_BYTES:[B

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->FALSE_BYTES:[B

    .line 996
    :goto_0
    array-length v0, p1

    const/4 v1, 0x0

    .line 997
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 998
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    return-void
.end method

.method public final writeEndArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->inArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 357
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->writeEndArray(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;I)V

    goto :goto_0

    .line 359
    :cond_1
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 360
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    .line 364
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;->getParent()Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    return-void
.end method

.method public final writeEndObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->inObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 389
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->writeEndObject(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;I)V

    goto :goto_0

    .line 391
    :cond_1
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 392
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    .line 396
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;->getParent()Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    return-void
.end method

.method public final writeFieldName(Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v1, "Can not write a field name, expecting a value"

    .line 314
    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 317
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writePPFieldName(Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;Z)V

    return-void

    :cond_2
    if-ne v0, v2, :cond_4

    .line 321
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_3

    .line 322
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 324
    :cond_3
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    .line 326
    :cond_4
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeFieldName(Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;)V

    return-void
.end method

.method public final writeFieldName(Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v1, "Can not write a field name, expecting a value"

    .line 292
    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 295
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writePPFieldName(Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;Z)V

    return-void

    :cond_2
    if-ne v0, v2, :cond_4

    .line 299
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_3

    .line 300
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 302
    :cond_3
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    .line 304
    :cond_4
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeFieldName(Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;)V

    return-void
.end method

.method public final writeFieldName(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v1, "Can not write a field name, expecting a value"

    .line 270
    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 273
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writePPFieldName(Ljava/lang/String;Z)V

    return-void

    :cond_2
    if-ne v0, v2, :cond_4

    .line 277
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_3

    .line 278
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    .line 282
    :cond_4
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeFieldName(Ljava/lang/String;)V

    return-void
.end method

.method public writeNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write null value"

    .line 1005
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1006
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeNull()V

    return-void
.end method

.method public writeNumber(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 919
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "write number"

    .line 927
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 928
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->writeRaw(Ljava/lang/String;)V

    return-void

    .line 923
    :cond_2
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeNumber(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 935
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "write number"

    .line 943
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 944
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->writeRaw(Ljava/lang/String;)V

    return-void

    .line 939
    :cond_2
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeNumber(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write number"

    .line 854
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 856
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 857
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 859
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 860
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeQuotedInt(I)V

    return-void

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/NumberOutput;->outputInt(I[BI)I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    return-void
.end method

.method public writeNumber(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write number"

    .line 879
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 880
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 881
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeQuotedLong(J)V

    return-void

    .line 884
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 886
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/NumberOutput;->outputLong(J[BI)I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    return-void
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write number"

    .line 966
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 967
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 968
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeQuotedRaw(Ljava/lang/Object;)V

    goto :goto_0

    .line 970
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->writeRaw(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write number"

    .line 952
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 954
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeNull()V

    goto :goto_0

    .line 955
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 956
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeQuotedRaw(Ljava/lang/Object;)V

    goto :goto_0

    .line 958
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->writeRaw(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write number"

    .line 904
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 906
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeNull()V

    goto :goto_0

    .line 907
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 908
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeQuotedRaw(Ljava/lang/Object;)V

    goto :goto_0

    .line 910
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->writeRaw(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeRaw(C)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 766
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 767
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_1

    .line 771
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x800

    if-ge p1, v1, :cond_2

    .line 773
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    shr-int/lit8 v3, p1, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 774
    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 776
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputRawMultiByteChar(I[CII)I

    :goto_0
    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 691
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_1

    .line 693
    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    .line 694
    array-length v4, v3

    if-ge v0, v4, :cond_0

    move v4, v0

    :cond_0
    add-int v5, v2, v4

    .line 696
    invoke-virtual {p1, v2, v5, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 697
    invoke-virtual {p0, v3, v1, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->writeRaw([CII)V

    sub-int/2addr v0, v4

    move v2, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_1

    .line 708
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    .line 709
    array-length v1, v0

    if-ge p3, v1, :cond_0

    move v1, p3

    :cond_0
    add-int v2, p2, v1

    const/4 v3, 0x0

    .line 711
    invoke-virtual {p1, p2, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 712
    invoke-virtual {p0, v0, v3, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->writeRaw([CII)V

    sub-int/2addr p3, v1

    move p2, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final writeRaw([CII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    add-int v0, p3, p3

    add-int/2addr v0, p3

    .line 726
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-le v1, v2, :cond_1

    if-ge v2, v0, :cond_0

    .line 729
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeSegmentedRaw([CII)V

    return-void

    .line 733
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    :cond_1
    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_5

    .line 743
    :cond_2
    aget-char v0, p1, p2

    const/16 v1, 0x7f

    if-le v0, v1, :cond_4

    add-int/lit8 v0, p2, 0x1

    .line 752
    aget-char p2, p1, p2

    const/16 v1, 0x800

    if-ge p2, v1, :cond_3

    .line 754
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    shr-int/lit8 v4, p2, 0x6

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    .line 755
    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    aput-byte p2, v1, v3

    goto :goto_1

    .line 757
    :cond_3
    invoke-direct {p0, p2, p1, v0, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputRawMultiByteChar(I[CII)I

    :goto_1
    move p2, v0

    goto :goto_0

    .line 747
    :cond_4
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_2

    :cond_5
    return-void
.end method

.method public writeRawUTF8String([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write text value"

    .line 647
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 648
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 649
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    .line 652
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeBytes([BII)V

    .line 653
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt p1, p2, :cond_1

    .line 654
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 656
    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v2, p1, p2

    return-void
.end method

.method public final writeStartArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string v0, "start an array"

    .line 338
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;->createChildArrayContext()Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    .line 340
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 341
    invoke-interface {v0, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->writeStartArray(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 343
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    :goto_0
    return-void
.end method

.method public final writeStartObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string v0, "start an object"

    .line 370
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;->createChildObjectContext()Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    .line 372
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 373
    invoke-interface {v0, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->writeStartObject(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 375
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 376
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    :goto_0
    return-void
.end method

.method public final writeString(Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write text value"

    .line 631
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 632
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 633
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    .line 636
    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;->asQuotedUTF8()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeBytes([B)V

    .line 637
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt p1, v0, :cond_1

    .line 638
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 640
    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v2, p1, v0

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write text value"

    .line 542
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 544
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeNull()V

    return-void

    .line 548
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 549
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_charBufferLength:I

    if-le v0, v1, :cond_1

    .line 550
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeLongString(Ljava/lang/String;)V

    return-void

    .line 554
    :cond_1
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 556
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputMaxContiguous:I

    if-le v0, p1, :cond_2

    .line 557
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    invoke-direct {p0, p1, v2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeLongString([CII)V

    return-void

    .line 560
    :cond_2
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/2addr p1, v0

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt p1, v1, :cond_3

    .line 561
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 563
    :cond_3
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v3, 0x22

    aput-byte v3, p1, v1

    .line 564
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    invoke-direct {p0, p1, v2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeStringSegment([CII)V

    .line 568
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt p1, v0, :cond_4

    .line 569
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 571
    :cond_4
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v3, p1, v0

    return-void
.end method

.method public writeString([CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write text value"

    .line 606
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 607
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v3, 0x22

    aput-byte v3, v0, v1

    .line 612
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputMaxContiguous:I

    if-gt p3, v0, :cond_2

    add-int/2addr v2, p3

    .line 613
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-le v2, v0, :cond_1

    .line 614
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 616
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeStringSegment([CII)V

    goto :goto_0

    .line 618
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeStringSegments([CII)V

    .line 621
    :goto_0
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt p1, p2, :cond_3

    .line 622
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 624
    :cond_3
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v3, p1, p2

    return-void
.end method

.method public final writeStringField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 261
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->writeFieldName(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeUTF8String([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write text value"

    .line 663
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 664
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 665
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    .line 669
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputMaxContiguous:I

    if-gt p3, v0, :cond_1

    .line 670
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeUTF8Segment([BII)V

    goto :goto_0

    .line 672
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_writeUTF8Segments([BII)V

    .line 674
    :goto_0
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt p1, p2, :cond_2

    .line 675
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 677
    :cond_2
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v2, p1, p2

    return-void
.end method
