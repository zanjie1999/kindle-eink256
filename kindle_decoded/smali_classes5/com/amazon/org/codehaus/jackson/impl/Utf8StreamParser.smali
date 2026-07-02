.class public final Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;
.super Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;
.source "Utf8StreamParser.java"


# static fields
.field static final BYTE_LF:B = 0xat

.field private static final sInputCodesLatin1:[I

.field private static final sInputCodesUtf8:[I


# instance fields
.field protected _bufferRecyclable:Z

.field protected _inputBuffer:[B

.field protected _inputStream:Ljava/io/InputStream;

.field protected _objectCodec:Lcom/amazon/org/codehaus/jackson/ObjectCodec;

.field private _quad1:I

.field protected _quadBuffer:[I

.field protected final _symbols:Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

.field protected _tokenIncomplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/util/CharTypes;->getInputCodeUtf8()[I

    move-result-object v0

    sput-object v0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->sInputCodesUtf8:[I

    .line 25
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v0

    sput-object v0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->sInputCodesLatin1:[I

    return-void
.end method

.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/io/IOContext;ILjava/io/InputStream;Lcom/amazon/org/codehaus/jackson/ObjectCodec;Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;[BIIZ)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;-><init>(Lcom/amazon/org/codehaus/jackson/io/IOContext;I)V

    const/16 p1, 0x10

    new-array p1, p1, [I

    .line 54
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 110
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputStream:Ljava/io/InputStream;

    .line 111
    iput-object p4, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_objectCodec:Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    .line 112
    iput-object p5, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 113
    iput-object p6, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    .line 114
    iput p7, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 115
    iput p8, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    .line 116
    iput-boolean p9, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_bufferRecyclable:Z

    .line 118
    sget-object p1, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->enabledIn(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwInternal()V

    :cond_0
    return-void
.end method

.method private final _decodeUtf8_2(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 2620
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 2621
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 2623
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/16 v3, 0x80

    if-eq v1, v3, :cond_1

    and-int/lit16 v1, v0, 0xff

    .line 2625
    invoke-virtual {p0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    :cond_1
    and-int/lit8 p1, p1, 0x1f

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    return p1
.end method

.method private final _decodeUtf8_3(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 2633
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 2634
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    :cond_0
    and-int/lit8 p1, p1, 0xf

    .line 2637
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/16 v3, 0x80

    if-eq v1, v3, :cond_1

    and-int/lit16 v1, v0, 0xff

    .line 2639
    invoke-virtual {p0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    :cond_1
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    .line 2642
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_2

    .line 2643
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 2645
    :cond_2
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_3

    and-int/lit16 v1, v0, 0xff

    .line 2647
    invoke-virtual {p0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    :cond_3
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    return p1
.end method

.method private final _decodeUtf8_3fast(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0xf

    .line 2657
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/16 v3, 0x80

    if-eq v1, v3, :cond_0

    and-int/lit16 v1, v0, 0xff

    .line 2659
    invoke-virtual {p0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    :cond_0
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    .line 2662
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_1

    and-int/lit16 v1, v0, 0xff

    .line 2664
    invoke-virtual {p0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    :cond_1
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    return p1
.end method

.method private final _decodeUtf8_4(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 2677
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 2678
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 2680
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/16 v3, 0x80

    if-eq v1, v3, :cond_1

    and-int/lit16 v1, v0, 0xff

    .line 2682
    invoke-virtual {p0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    :cond_1
    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    .line 2686
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_2

    .line 2687
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 2689
    :cond_2
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_3

    and-int/lit16 v1, v0, 0xff

    .line 2691
    invoke-virtual {p0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    :cond_3
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    .line 2694
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_4

    .line 2695
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 2697
    :cond_4
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_5

    and-int/lit16 v1, v0, 0xff

    .line 2699
    invoke-virtual {p0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    :cond_5
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    const/high16 v0, 0x10000

    sub-int/2addr p1, v0

    return p1
.end method

.method private final _finishString2([CI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1914
    sget-object v0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->sInputCodesUtf8:[I

    .line 1915
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    .line 1922
    :goto_0
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1923
    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1924
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 1925
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1927
    :cond_0
    array-length v3, p1

    const/4 v4, 0x0

    if-lt p2, v3, :cond_1

    .line 1928
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    const/4 p2, 0x0

    .line 1931
    :cond_1
    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    array-length v5, p1

    sub-int/2addr v5, p2

    add-int/2addr v5, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_c

    add-int/lit8 v5, v2, 0x1

    .line 1933
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    .line 1934
    aget v6, v0, v2

    if-eqz v6, :cond_b

    .line 1935
    iput v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    const/16 v3, 0x22

    if-ne v2, v3, :cond_2

    .line 1989
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    return-void

    .line 1947
    :cond_2
    aget v3, v0, v2

    const/4 v6, 0x1

    if-eq v3, v6, :cond_9

    const/4 v6, 0x2

    if-eq v3, v6, :cond_8

    const/4 v7, 0x3

    if-eq v3, v7, :cond_6

    const/4 v5, 0x4

    if-eq v3, v5, :cond_4

    const/16 v3, 0x20

    if-ge v2, v3, :cond_3

    const-string/jumbo v3, "string value"

    .line 1975
    invoke-virtual {p0, v2, v3}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_3

    .line 1978
    :cond_3
    invoke-virtual {p0, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    goto :goto_3

    .line 1962
    :cond_4
    invoke-direct {p0, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_4(I)I

    move-result v2

    add-int/lit8 v3, p2, 0x1

    const v5, 0xd800

    shr-int/lit8 v6, v2, 0xa

    or-int/2addr v5, v6

    int-to-char v5, v5

    .line 1964
    aput-char v5, p1, p2

    .line 1965
    array-length p2, p1

    if-lt v3, p2, :cond_5

    .line 1966
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    const/4 p2, 0x0

    goto :goto_2

    :cond_5
    move p2, v3

    :goto_2
    const v3, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v3

    goto :goto_3

    .line 1955
    :cond_6
    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    sub-int/2addr v3, v5

    if-lt v3, v6, :cond_7

    .line 1956
    invoke-direct {p0, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_3fast(I)I

    move-result v2

    goto :goto_3

    .line 1958
    :cond_7
    invoke-direct {p0, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_3(I)I

    move-result v2

    goto :goto_3

    .line 1952
    :cond_8
    invoke-direct {p0, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_2(I)I

    move-result v2

    goto :goto_3

    .line 1949
    :cond_9
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    move-result v2

    .line 1982
    :goto_3
    array-length v3, p1

    if-lt p2, v3, :cond_a

    .line 1983
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    goto :goto_4

    :cond_a
    move v4, p2

    :goto_4
    add-int/lit8 p2, v4, 0x1

    int-to-char v2, v2

    .line 1987
    aput-char v2, p1, v4

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v6, p2, 0x1

    int-to-char v2, v2

    .line 1938
    aput-char v2, p1, p2

    move v2, v5

    move p2, v6

    goto/16 :goto_1

    .line 1940
    :cond_c
    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    goto/16 :goto_0
.end method

.method private final _isNextTokenNameNo(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 805
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_parseFieldName(I)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    .line 806
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/sym/Name;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 807
    sget-object p1, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 808
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I

    move-result p1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    const-string/jumbo v0, "was expecting a colon to separate field name and value"

    .line 810
    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 812
    :cond_0
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I

    move-result p1

    const/16 v0, 0x22

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 816
    iput-boolean v1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 817
    sget-object p1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-void

    :cond_1
    const/16 v0, 0x2d

    if-eq p1, v0, :cond_8

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_7

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_5

    const/16 v0, 0x66

    if-eq p1, v0, :cond_4

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x74

    if-eq p1, v0, :cond_6

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_5

    packed-switch p1, :pswitch_data_0

    .line 859
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_handleUnexpectedValue(I)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    goto :goto_0

    .line 827
    :cond_2
    sget-object p1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    goto :goto_0

    :cond_3
    const-string p1, "null"

    .line 841
    invoke-virtual {p0, p1, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 842
    sget-object p1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/org/codehaus/jackson/JsonToken;

    goto :goto_0

    :cond_4
    const-string p1, "false"

    .line 837
    invoke-virtual {p0, p1, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 838
    sget-object p1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/amazon/org/codehaus/jackson/JsonToken;

    goto :goto_0

    :cond_5
    const-string v0, "expected a value"

    .line 831
    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_6
    const-string/jumbo p1, "true"

    .line 833
    invoke-virtual {p0, p1, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 834
    sget-object p1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/amazon/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 824
    :cond_7
    sget-object p1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 856
    :cond_8
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->parseNumberText(I)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    .line 861
    :goto_0
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final _isNextTokenNameYes()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 733
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    const/16 v2, 0x7b

    const/16 v3, 0x5b

    const/16 v4, 0x22

    const/4 v5, 0x1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    aget-byte v6, v1, v0

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_4

    add-int/2addr v0, v5

    .line 734
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v6, v0, 0x1

    .line 735
    iput v6, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v1, v0

    if-ne v0, v4, :cond_0

    .line 737
    iput-boolean v5, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 738
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-void

    :cond_0
    if-ne v0, v2, :cond_1

    .line 742
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-void

    :cond_1
    if-ne v0, v3, :cond_2

    .line 746
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-void

    :cond_2
    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x20

    if-le v0, v1, :cond_3

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_5

    .line 751
    :cond_3
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 752
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I

    move-result v0

    goto :goto_0

    .line 755
    :cond_4
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipColon()I

    move-result v0

    :cond_5
    :goto_0
    if-eq v0, v4, :cond_d

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_c

    if-eq v0, v3, :cond_b

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_9

    const/16 v1, 0x66

    if-eq v0, v1, :cond_8

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_7

    const/16 v1, 0x74

    if-eq v0, v1, :cond_a

    if-eq v0, v2, :cond_6

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_9

    packed-switch v0, :pswitch_data_0

    .line 797
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_handleUnexpectedValue(I)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-void

    .line 766
    :cond_6
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-void

    :cond_7
    const-string v0, "null"

    .line 780
    invoke-virtual {p0, v0, v5}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 781
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-void

    :cond_8
    const-string v0, "false"

    .line 776
    invoke-virtual {p0, v0, v5}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 777
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-void

    :cond_9
    const-string v1, "expected a value"

    .line 770
    invoke-virtual {p0, v0, v1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_a
    const-string/jumbo v0, "true"

    .line 772
    invoke-virtual {p0, v0, v5}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 773
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-void

    .line 763
    :cond_b
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-void

    .line 794
    :cond_c
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->parseNumberText(I)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-void

    .line 759
    :cond_d
    iput-boolean v5, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 760
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final _nextAfterName()Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 4

    const/4 v0, 0x0

    .line 611
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    .line 612
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    const/4 v1, 0x0

    .line 613
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 615
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 616
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 617
    :cond_0
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 618
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    .line 620
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method private final _nextTokenNotInObject(I)Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x22

    if-ne p1, v1, :cond_0

    .line 565
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 566
    sget-object p1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object p1

    :cond_0
    const/16 v1, 0x2d

    if-eq p1, v1, :cond_7

    const/16 v1, 0x5b

    if-eq p1, v1, :cond_6

    const/16 v1, 0x5d

    if-eq p1, v1, :cond_4

    const/16 v1, 0x66

    if-eq p1, v1, :cond_3

    const/16 v1, 0x6e

    if-eq p1, v1, :cond_2

    const/16 v1, 0x74

    if-eq p1, v1, :cond_5

    const/16 v1, 0x7b

    if-eq p1, v1, :cond_1

    const/16 v1, 0x7d

    if-eq p1, v1, :cond_4

    packed-switch p1, :pswitch_data_0

    .line 606
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_handleUnexpectedValue(I)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object p1

    .line 573
    :cond_1
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {p1, v0, v1}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    .line 574
    sget-object p1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object p1

    :cond_2
    const-string p1, "null"

    .line 587
    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 588
    sget-object p1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object p1

    :cond_3
    const-string p1, "false"

    .line 584
    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 585
    sget-object p1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object p1

    :cond_4
    const-string v1, "expected a value"

    .line 579
    invoke-virtual {p0, p1, v1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_5
    const-string/jumbo p1, "true"

    .line 581
    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 582
    sget-object p1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object p1

    .line 570
    :cond_6
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {p1, v0, v1}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    .line 571
    sget-object p1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object p1

    .line 604
    :cond_7
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->parseNumberText(I)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final _parseFloatText([CIIZI)Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/16 v0, 0x39

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2e

    if-ne p3, v4, :cond_4

    add-int/lit8 v4, p2, 0x1

    int-to-char v5, p3

    .line 1136
    aput-char v5, p1, p2

    move p2, v4

    const/4 v4, 0x0

    .line 1140
    :goto_0
    iget v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v6, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    .line 1144
    :cond_0
    iget-object p3, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte p3, p3, v5

    and-int/lit16 p3, p3, 0xff

    if-lt p3, v1, :cond_3

    if-le p3, v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 1149
    array-length v5, p1

    if-lt p2, v5, :cond_2

    .line 1150
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    const/4 p2, 0x0

    :cond_2
    add-int/lit8 v5, p2, 0x1

    int-to-char v6, p3

    .line 1153
    aput-char v6, p1, p2

    move p2, v5

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-nez v4, :cond_5

    const-string v6, "Decimal point not followed by a digit"

    .line 1157
    invoke-virtual {p0, p3, v6}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_5
    :goto_3
    const/16 v6, 0x65

    if-eq p3, v6, :cond_6

    const/16 v6, 0x45

    if-ne p3, v6, :cond_11

    .line 1163
    :cond_6
    array-length v6, p1

    if-lt p2, v6, :cond_7

    .line 1164
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    const/4 p2, 0x0

    :cond_7
    add-int/lit8 v6, p2, 0x1

    int-to-char p3, p3

    .line 1167
    aput-char p3, p1, p2

    .line 1169
    iget p2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget p3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt p2, p3, :cond_8

    .line 1170
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 1172
    :cond_8
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget p3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v7, p3, 0x1

    iput v7, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte p2, p2, p3

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0x2d

    if-eq p2, p3, :cond_a

    const/16 p3, 0x2b

    if-ne p2, p3, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    const/4 p3, 0x0

    goto :goto_6

    .line 1175
    :cond_a
    :goto_5
    array-length p3, p1

    if-lt v6, p3, :cond_b

    .line 1176
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    const/4 v6, 0x0

    :cond_b
    add-int/lit8 p3, v6, 0x1

    int-to-char p2, p2

    .line 1179
    aput-char p2, p1, v6

    .line 1181
    iget p2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v6, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt p2, v6, :cond_c

    .line 1182
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 1184
    :cond_c
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v6, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte p2, p2, v6

    and-int/lit16 p2, p2, 0xff

    move v6, p3

    goto :goto_4

    :goto_6
    if-gt p2, v0, :cond_f

    if-lt p2, v1, :cond_f

    add-int/lit8 p3, p3, 0x1

    .line 1190
    array-length v7, p1

    if-lt v6, v7, :cond_d

    .line 1191
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    const/4 v6, 0x0

    :cond_d
    add-int/lit8 v7, v6, 0x1

    int-to-char v8, p2

    .line 1194
    aput-char v8, p1, v6

    .line 1195
    iget v6, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v8, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v6, v8, :cond_e

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v6

    if-nez v6, :cond_e

    move v2, p3

    move v6, v7

    const/4 v5, 0x1

    goto :goto_7

    .line 1199
    :cond_e
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v6, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte p2, p2, v6

    and-int/lit16 p2, p2, 0xff

    move v6, v7

    goto :goto_6

    :cond_f
    move v2, p3

    :goto_7
    if-nez v2, :cond_10

    const-string p1, "Exponent indicator not followed by a digit"

    .line 1203
    invoke-virtual {p0, p2, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_10
    move p2, v6

    :cond_11
    if-nez v5, :cond_12

    .line 1209
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1211
    :cond_12
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1214
    invoke-virtual {p0, p4, p5, v4, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->resetFloat(ZIII)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method private final _parserNumber2([CIZI)Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    move-object v1, p1

    move v2, p2

    move v5, p4

    .line 1064
    :goto_0
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget p2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1065
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1, v2}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1066
    invoke-virtual {p0, p3, v5}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->resetInt(ZI)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1

    .line 1068
    :cond_0
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget p2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 p4, p2, 0x1

    iput p4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte p1, p1, p2

    and-int/lit16 v3, p1, 0xff

    const/16 p1, 0x39

    if-gt v3, p1, :cond_3

    const/16 p1, 0x30

    if-ge v3, p1, :cond_1

    goto :goto_1

    .line 1075
    :cond_1
    array-length p1, v1

    if-lt v2, p1, :cond_2

    .line 1076
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    const/4 v2, 0x0

    move-object v1, p1

    :cond_2
    add-int/lit8 p1, v2, 0x1

    int-to-char p2, v3

    .line 1079
    aput-char p2, v1, v2

    add-int/lit8 v5, v5, 0x1

    move v2, p1

    goto :goto_0

    :cond_3
    :goto_1
    const/16 p1, 0x2e

    if-eq v3, p1, :cond_5

    const/16 p1, 0x65

    if-eq v3, p1, :cond_5

    const/16 p1, 0x45

    if-ne v3, p1, :cond_4

    goto :goto_2

    .line 1082
    :cond_4
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1083
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1, v2}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1086
    invoke-virtual {p0, p3, v5}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->resetInt(ZI)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_2
    move-object v0, p0

    move v4, p3

    .line 1071
    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_parseFloatText([CIIZI)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method private final _skipCComment()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 2432
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/util/CharTypes;->getInputCodeComment()[I

    move-result-object v0

    .line 2436
    :cond_0
    :goto_0
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2437
    :cond_1
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 2438
    aget v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_9

    const/4 v4, 0x3

    if-eq v2, v4, :cond_8

    const/4 v4, 0x4

    if-eq v2, v4, :cond_7

    const/16 v4, 0xa

    if-eq v2, v4, :cond_6

    const/16 v4, 0xd

    if-eq v2, v4, :cond_5

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_2

    .line 2467
    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    goto :goto_0

    .line 2442
    :cond_2
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v3, v1, :cond_4

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-string v0, " in a comment"

    .line 2471
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    return-void

    .line 2445
    :cond_4
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v1, v1, v2

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 2446
    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    return-void

    .line 2454
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    goto :goto_0

    .line 2451
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    goto :goto_0

    .line 2463
    :cond_7
    invoke-direct {p0, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_4(I)V

    goto :goto_0

    .line 2460
    :cond_8
    invoke-direct {p0, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_3(I)V

    goto :goto_0

    .line 2457
    :cond_9
    invoke-direct {p0, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_2(I)V

    goto :goto_0
.end method

.method private final _skipColon()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 2340
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 2341
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 2344
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v1, v0, v1

    const/16 v3, 0xd

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/16 v6, 0x3a

    const/16 v7, 0x2f

    const/16 v8, 0x20

    if-ne v1, v6, :cond_1

    .line 2346
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-ge v2, v1, :cond_4

    .line 2347
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-le v0, v8, :cond_4

    if-eq v0, v7, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 2349
    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    return v0

    :cond_1
    and-int/lit16 v0, v1, 0xff

    :goto_0
    if-eq v0, v5, :cond_d

    if-eq v0, v4, :cond_c

    if-eq v0, v3, :cond_d

    if-eq v0, v8, :cond_d

    if-eq v0, v7, :cond_b

    if-ge v0, v8, :cond_2

    .line 2373
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwInvalidSpace(I)V

    .line 2378
    :cond_2
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_3

    .line 2379
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 2381
    :cond_3
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v6, :cond_4

    const-string/jumbo v1, "was expecting a colon to separate field name and value"

    .line 2383
    invoke-virtual {p0, v0, v1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2388
    :cond_4
    :goto_1
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 2405
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end-of-input within/between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/JsonParser;->_constructError(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0

    .line 2389
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v8, :cond_8

    if-eq v0, v7, :cond_7

    return v0

    .line 2394
    :cond_7
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipComment()V

    goto :goto_1

    :cond_8
    if-eq v0, v8, :cond_4

    if-ne v0, v4, :cond_9

    .line 2397
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    goto :goto_1

    :cond_9
    if-ne v0, v3, :cond_a

    .line 2399
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    goto :goto_1

    :cond_a
    if-eq v0, v5, :cond_4

    .line 2401
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwInvalidSpace(I)V

    goto :goto_1

    .line 2369
    :cond_b
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipComment()V

    goto/16 :goto_0

    .line 2366
    :cond_c
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    goto/16 :goto_0

    .line 2363
    :cond_d
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    goto/16 :goto_0
.end method

.method private final _skipComment()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 2411
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    const/16 v1, 0x2f

    if-nez v0, :cond_0

    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    .line 2412
    invoke-virtual {p0, v1, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2415
    :cond_0
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, " in a comment"

    .line 2416
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2418
    :cond_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v1, :cond_2

    .line 2420
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipCppComment()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 2422
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipCComment()V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "was expecting either \'*\' or \'/\' for a comment"

    .line 2424
    invoke-virtual {p0, v0, v1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final _skipCppComment()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 2478
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/util/CharTypes;->getInputCodeComment()[I

    move-result-object v0

    .line 2479
    :cond_0
    :goto_0
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return-void

    .line 2480
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 2481
    aget v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4

    const/16 v3, 0xd

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_0

    .line 2503
    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    goto :goto_0

    .line 2488
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    return-void

    .line 2485
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    return-void

    .line 2499
    :cond_5
    invoke-direct {p0, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_4(I)V

    goto :goto_0

    .line 2496
    :cond_6
    invoke-direct {p0, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_3(I)V

    goto :goto_0

    .line 2493
    :cond_7
    invoke-direct {p0, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_2(I)V

    goto :goto_0
.end method

.method private final _skipUtf8_2(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 2711
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt p1, v0, :cond_0

    .line 2712
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 2714
    :cond_0
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte p1, p1, v0

    and-int/lit16 v0, p1, 0xc0

    const/16 v2, 0x80

    if-eq v0, v2, :cond_1

    and-int/lit16 p1, p1, 0xff

    .line 2716
    invoke-virtual {p0, p1, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    :cond_1
    return-void
.end method

.method private final _skipUtf8_3(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 2726
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt p1, v0, :cond_0

    .line 2727
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 2730
    :cond_0
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte p1, p1, v0

    and-int/lit16 v0, p1, 0xc0

    const/16 v2, 0x80

    if-eq v0, v2, :cond_1

    and-int/lit16 p1, p1, 0xff

    .line 2732
    invoke-virtual {p0, p1, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 2734
    :cond_1
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt p1, v0, :cond_2

    .line 2735
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 2737
    :cond_2
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte p1, p1, v0

    and-int/lit16 v0, p1, 0xc0

    if-eq v0, v2, :cond_3

    and-int/lit16 p1, p1, 0xff

    .line 2739
    invoke-virtual {p0, p1, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    :cond_3
    return-void
.end method

.method private final _skipUtf8_4(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 2746
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt p1, v0, :cond_0

    .line 2747
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 2749
    :cond_0
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte p1, p1, v0

    and-int/lit16 v0, p1, 0xc0

    const/16 v2, 0x80

    if-eq v0, v2, :cond_1

    and-int/lit16 p1, p1, 0xff

    .line 2751
    invoke-virtual {p0, p1, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 2753
    :cond_1
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt p1, v0, :cond_2

    .line 2754
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 2756
    :cond_2
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte p1, p1, v0

    and-int/lit16 v0, p1, 0xc0

    if-eq v0, v2, :cond_3

    and-int/lit16 p1, p1, 0xff

    .line 2758
    invoke-virtual {p0, p1, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 2760
    :cond_3
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt p1, v0, :cond_4

    .line 2761
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 2763
    :cond_4
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte p1, p1, v0

    and-int/lit16 v0, p1, 0xc0

    if-eq v0, v2, :cond_5

    and-int/lit16 p1, p1, 0xff

    .line 2765
    invoke-virtual {p0, p1, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    :cond_5
    return-void
.end method

.method private final _skipWS()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 2286
    :cond_0
    :goto_0
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2303
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end-of-input within/between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/JsonParser;->_constructError(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0

    .line 2287
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x20

    if-le v0, v1, :cond_4

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3

    return v0

    .line 2292
    :cond_3
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipComment()V

    goto :goto_0

    :cond_4
    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 2295
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    goto :goto_0

    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 2297
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    goto :goto_0

    :cond_6
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2299
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final _skipWSOrEnd()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 2309
    :cond_0
    :goto_0
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2327
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_handleEOF()V

    const/4 v0, -0x1

    return v0

    .line 2310
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x20

    if-le v0, v1, :cond_4

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3

    return v0

    .line 2315
    :cond_3
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipComment()V

    goto :goto_0

    :cond_4
    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 2318
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    goto :goto_0

    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 2320
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    goto :goto_0

    :cond_6
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2322
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final _verifyNoLeadingZeroes()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1098
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    const/16 v2, 0x30

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v2, :cond_8

    const/16 v1, 0x39

    if-le v0, v1, :cond_1

    goto :goto_2

    .line 1107
    :cond_1
    sget-object v3, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v3}, Lcom/amazon/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Leading zeroes not allowed"

    .line 1108
    invoke-virtual {p0, v3}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportInvalidNumber(Ljava/lang/String;)V

    .line 1111
    :cond_2
    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    if-ne v0, v2, :cond_7

    .line 1113
    :cond_3
    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1114
    :cond_4
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v2, :cond_6

    if-le v0, v1, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 1118
    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    if-eq v0, v2, :cond_3

    goto :goto_1

    :cond_6
    :goto_0
    return v2

    :cond_7
    :goto_1
    return v0

    :cond_8
    :goto_2
    return v2
.end method

.method private final addName([III)Lcom/amazon/org/codehaus/jackson/sym/Name;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    shl-int/lit8 v4, v2, 0x2

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    const/4 v7, 0x3

    if-ge v3, v5, :cond_0

    add-int/lit8 v8, v2, -0x1

    .line 1778
    aget v9, v1, v8

    rsub-int/lit8 v10, v3, 0x4

    shl-int/2addr v10, v7

    shl-int v10, v9, v10

    .line 1780
    aput v10, v1, v8

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 1786
    :goto_0
    iget-object v8, v0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v4, :cond_d

    shr-int/lit8 v12, v10, 0x2

    .line 1790
    aget v12, v1, v12

    and-int/lit8 v13, v10, 0x3

    rsub-int/lit8 v13, v13, 0x3

    shl-int/2addr v13, v7

    shr-int/2addr v12, v13

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v10, v10, 0x1

    const/16 v13, 0x7f

    if-le v12, v13, :cond_b

    and-int/lit16 v13, v12, 0xe0

    const/16 v14, 0xc0

    const/4 v5, 0x1

    if-ne v13, v14, :cond_1

    and-int/lit8 v12, v12, 0x1f

    :goto_2
    const/4 v13, 0x1

    goto :goto_3

    :cond_1
    and-int/lit16 v13, v12, 0xf0

    const/16 v14, 0xe0

    if-ne v13, v14, :cond_2

    and-int/lit8 v12, v12, 0xf

    const/4 v13, 0x2

    goto :goto_3

    :cond_2
    and-int/lit16 v13, v12, 0xf8

    const/16 v14, 0xf0

    if-ne v13, v14, :cond_3

    and-int/lit8 v12, v12, 0x7

    const/4 v13, 0x3

    goto :goto_3

    .line 1807
    :cond_3
    invoke-virtual {v0, v12}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidInitial(I)V

    const/4 v12, 0x1

    goto :goto_2

    :goto_3
    add-int v14, v10, v13

    if-le v14, v4, :cond_4

    const-string v14, " in field name"

    .line 1811
    invoke-virtual {v0, v14}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_4
    shr-int/lit8 v14, v10, 0x2

    .line 1815
    aget v14, v1, v14

    and-int/lit8 v16, v10, 0x3

    rsub-int/lit8 v16, v16, 0x3

    shl-int/lit8 v16, v16, 0x3

    shr-int v14, v14, v16

    add-int/lit8 v10, v10, 0x1

    and-int/lit16 v6, v14, 0xc0

    const/16 v15, 0x80

    if-eq v6, v15, :cond_5

    .line 1821
    invoke-virtual {v0, v14}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    :cond_5
    shl-int/lit8 v6, v12, 0x6

    and-int/lit8 v12, v14, 0x3f

    or-int/2addr v6, v12

    if-le v13, v5, :cond_9

    shr-int/lit8 v5, v10, 0x2

    .line 1825
    aget v5, v1, v5

    and-int/lit8 v12, v10, 0x3

    rsub-int/lit8 v12, v12, 0x3

    shl-int/2addr v12, v7

    shr-int/2addr v5, v12

    add-int/lit8 v10, v10, 0x1

    and-int/lit16 v12, v5, 0xc0

    if-eq v12, v15, :cond_6

    .line 1831
    invoke-virtual {v0, v5}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    :cond_6
    shl-int/lit8 v6, v6, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    const/4 v6, 0x2

    if-le v13, v6, :cond_8

    shr-int/lit8 v6, v10, 0x2

    .line 1835
    aget v6, v1, v6

    and-int/lit8 v12, v10, 0x3

    rsub-int/lit8 v12, v12, 0x3

    shl-int/2addr v12, v7

    shr-int/2addr v6, v12

    add-int/lit8 v10, v10, 0x1

    and-int/lit16 v12, v6, 0xc0

    if-eq v12, v15, :cond_7

    and-int/lit16 v12, v6, 0xff

    .line 1840
    invoke-virtual {v0, v12}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    :cond_7
    shl-int/lit8 v5, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v5, v6

    :cond_8
    move v12, v5

    goto :goto_4

    :cond_9
    move v12, v6

    :goto_4
    const/4 v5, 0x2

    if-le v13, v5, :cond_b

    const/high16 v5, 0x10000

    sub-int/2addr v12, v5

    .line 1847
    array-length v5, v8

    if-lt v11, v5, :cond_a

    .line 1848
    iget-object v5, v0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v5

    move-object v8, v5

    :cond_a
    add-int/lit8 v5, v11, 0x1

    const v6, 0xd800

    shr-int/lit8 v13, v12, 0xa

    add-int/2addr v13, v6

    int-to-char v6, v13

    .line 1850
    aput-char v6, v8, v11

    const v6, 0xdc00

    and-int/lit16 v11, v12, 0x3ff

    or-int v12, v11, v6

    move v11, v5

    .line 1854
    :cond_b
    array-length v5, v8

    if-lt v11, v5, :cond_c

    .line 1855
    iget-object v5, v0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v5

    move-object v8, v5

    :cond_c
    add-int/lit8 v5, v11, 0x1

    int-to-char v6, v12

    .line 1857
    aput-char v6, v8, v11

    move v11, v5

    const/4 v5, 0x4

    goto/16 :goto_1

    .line 1861
    :cond_d
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v8, v5, v11}, Ljava/lang/String;-><init>([CII)V

    const/4 v5, 0x4

    if-ge v3, v5, :cond_e

    add-int/lit8 v3, v2, -0x1

    .line 1864
    aput v9, v1, v3

    .line 1866
    :cond_e
    iget-object v3, v0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v3, v4, v1, v2}, Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->addName(Ljava/lang/String;[II)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object v1

    return-object v1
.end method

.method private final findName(II)Lcom/amazon/org/codehaus/jackson/sym/Name;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1717
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName(I)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1722
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 1723
    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1
.end method

.method private final findName(III)Lcom/amazon/org/codehaus/jackson/sym/Name;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1730
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName(II)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1735
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 1736
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 1737
    invoke-direct {p0, v0, p1, p3}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1
.end method

.method private final findName([IIII)Lcom/amazon/org/codehaus/jackson/sym/Name;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1743
    array-length v0, p1

    if-lt p2, v0, :cond_0

    .line 1744
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 1746
    aput p3, p1, p2

    .line 1747
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p2

    if-nez p2, :cond_1

    .line 1749
    invoke-direct {p0, p1, v0, p4}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public static growArrayBy([II)[I
    .locals 2

    if-nez p0, :cond_0

    .line 2843
    new-array p0, p1, [I

    return-object p0

    .line 2846
    :cond_0
    array-length v0, p0

    add-int/2addr p1, v0

    .line 2847
    new-array p1, p1, [I

    const/4 v1, 0x0

    .line 2848
    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private nextByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 2799
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 2800
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 2802
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private final parseFieldName(III)Lcom/amazon/org/codehaus/jackson/sym/Name;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1410
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1
.end method

.method private final parseFieldName(IIII)Lcom/amazon/org/codehaus/jackson/sym/Name;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1416
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v0, 0x0

    aput p1, v1, v0

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1417
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected _closeInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/amazon/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 239
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputStream:Ljava/io/InputStream;

    :cond_2
    return-void
.end method

.method protected _decodeBase64(Lcom/amazon/org/codehaus/jackson/Base64Variant;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 2865
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_getByteArrayBuilder()Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;

    move-result-object v0

    .line 2872
    :cond_0
    :goto_0
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v1, v2, :cond_1

    .line 2873
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 2875
    :cond_1
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    .line 2877
    invoke-virtual {p1, v1}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I

    move-result v2

    const/16 v3, 0x22

    if-gez v2, :cond_3

    if-ne v1, v3, :cond_2

    .line 2880
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v2, 0x0

    .line 2882
    invoke-virtual {p0, p1, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_decodeBase64Escape(Lcom/amazon/org/codehaus/jackson/Base64Variant;II)I

    move-result v2

    if-gez v2, :cond_3

    goto :goto_0

    .line 2891
    :cond_3
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v1, v4, :cond_4

    .line 2892
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 2894
    :cond_4
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    .line 2895
    invoke-virtual {p1, v1}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I

    move-result v4

    if-gez v4, :cond_5

    const/4 v4, 0x1

    .line 2897
    invoke-virtual {p0, p1, v1, v4}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_decodeBase64Escape(Lcom/amazon/org/codehaus/jackson/Base64Variant;II)I

    move-result v4

    :cond_5
    shl-int/lit8 v1, v2, 0x6

    or-int/2addr v1, v4

    .line 2902
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v2, v4, :cond_6

    .line 2903
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 2905
    :cond_6
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    .line 2906
    invoke-virtual {p1, v2}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x2

    if-gez v4, :cond_b

    if-eq v4, v7, :cond_8

    if-ne v2, v3, :cond_7

    .line 2912
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->usesPadding()Z

    move-result v4

    if-nez v4, :cond_7

    shr-int/lit8 p1, v1, 0x4

    .line 2914
    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 2915
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object p1

    return-object p1

    .line 2917
    :cond_7
    invoke-virtual {p0, p1, v2, v6}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_decodeBase64Escape(Lcom/amazon/org/codehaus/jackson/Base64Variant;II)I

    move-result v2

    move v4, v2

    :cond_8
    if-ne v4, v7, :cond_b

    .line 2921
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v2, v3, :cond_9

    .line 2922
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 2924
    :cond_9
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 2925
    invoke-virtual {p1, v2}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->usesPaddingChar(I)Z

    move-result v3

    if-eqz v3, :cond_a

    shr-int/lit8 v1, v1, 0x4

    .line 2930
    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto/16 :goto_0

    .line 2926
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected padding character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->getPaddingChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v5, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportInvalidBase64Char(Lcom/amazon/org/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_b
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v4

    .line 2937
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v2, v4, :cond_c

    .line 2938
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 2940
    :cond_c
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v8, v4, 0x1

    iput v8, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    .line 2941
    invoke-virtual {p1, v2}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I

    move-result v4

    if-gez v4, :cond_f

    if-eq v4, v7, :cond_e

    if-ne v2, v3, :cond_d

    .line 2945
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->usesPadding()Z

    move-result v3

    if-nez v3, :cond_d

    shr-int/lit8 p1, v1, 0x2

    .line 2947
    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->appendTwoBytes(I)V

    .line 2948
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object p1

    return-object p1

    .line 2950
    :cond_d
    invoke-virtual {p0, p1, v2, v5}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_decodeBase64Escape(Lcom/amazon/org/codehaus/jackson/Base64Variant;II)I

    move-result v2

    move v4, v2

    :cond_e
    if-ne v4, v7, :cond_f

    shr-int/lit8 v1, v1, 0x2

    .line 2960
    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto/16 :goto_0

    :cond_f
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v4

    .line 2966
    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->appendThreeBytes(I)V

    goto/16 :goto_0
.end method

.method protected _decodeCharForError(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    if-gez p1, :cond_6

    and-int/lit16 v0, p1, 0xe0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0xc0

    if-ne v0, v3, :cond_0

    and-int/lit8 p1, p1, 0x1f

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    and-int/lit16 v0, p1, 0xf0

    const/16 v3, 0xe0

    if-ne v0, v3, :cond_1

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit16 v0, p1, 0xf8

    const/16 v3, 0xf0

    if-ne v0, v3, :cond_2

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    and-int/lit16 v0, p1, 0xff

    .line 2583
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidInitial(I)V

    goto :goto_0

    .line 2587
    :goto_1
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->nextByte()I

    move-result v3

    and-int/lit16 v4, v3, 0xc0

    const/16 v5, 0x80

    if-eq v4, v5, :cond_3

    and-int/lit16 v4, v3, 0xff

    .line 2589
    invoke-virtual {p0, v4}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    :cond_3
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr p1, v3

    if-le v0, v2, :cond_6

    .line 2594
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->nextByte()I

    move-result v2

    and-int/lit16 v3, v2, 0xc0

    if-eq v3, v5, :cond_4

    and-int/lit16 v3, v2, 0xff

    .line 2596
    invoke-virtual {p0, v3}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    :cond_4
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr p1, v2

    if-le v0, v1, :cond_6

    .line 2600
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->nextByte()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v5, :cond_5

    and-int/lit16 v1, v0, 0xff

    .line 2602
    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    :cond_5
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    :cond_6
    return p1
.end method

.method protected final _decodeEscaped()C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 2513
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    const-string v2, " in character escape sequence"

    if-lt v0, v1, :cond_0

    .line 2514
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2515
    invoke-virtual {p0, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2518
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_a

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_a

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_a

    const/16 v1, 0x62

    if-eq v0, v1, :cond_9

    const/16 v1, 0x66

    if-eq v0, v1, :cond_8

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_7

    const/16 v1, 0x72

    if-eq v0, v1, :cond_6

    const/16 v1, 0x74

    if-eq v0, v1, :cond_5

    const/16 v1, 0x75

    if-eq v0, v1, :cond_1

    .line 2543
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeCharForError(I)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_handleUnrecognizedCharacterEscape(C)C

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_4

    .line 2549
    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v3, v4, :cond_2

    .line 2550
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2551
    invoke-virtual {p0, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2554
    :cond_2
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v3, v3, v4

    .line 2555
    invoke-static {v3}, Lcom/amazon/org/codehaus/jackson/util/CharTypes;->charToHex(I)I

    move-result v4

    if-gez v4, :cond_3

    const-string v5, "expected a hex-digit for character escape sequence"

    .line 2557
    invoke-virtual {p0, v3, v5}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_3
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    int-to-char v0, v1

    return v0

    :cond_5
    const/16 v0, 0x9

    return v0

    :cond_6
    const/16 v0, 0xd

    return v0

    :cond_7
    const/16 v0, 0xa

    return v0

    :cond_8
    const/16 v0, 0xc

    return v0

    :cond_9
    const/16 v0, 0x8

    return v0

    :cond_a
    int-to-char v0, v0

    return v0
.end method

.method protected _finishString()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1880
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1881
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 1882
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 1883
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    :cond_0
    const/4 v1, 0x0

    .line 1886
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v2

    .line 1887
    sget-object v3, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->sInputCodesUtf8:[I

    .line 1889
    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    array-length v5, v2

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1890
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    :goto_0
    if-ge v0, v4, :cond_2

    .line 1892
    aget-byte v6, v5, v0

    and-int/lit16 v6, v6, 0xff

    .line 1893
    aget v7, v3, v6

    if-eqz v7, :cond_1

    const/16 v3, 0x22

    if-ne v6, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 1895
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1896
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v7, v1, 0x1

    int-to-char v6, v6

    .line 1902
    aput-char v6, v2, v1

    move v1, v7

    goto :goto_0

    .line 1904
    :cond_2
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1905
    invoke-direct {p0, v2, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_finishString2([CI)V

    return-void
.end method

.method protected final _getText2(Lcom/amazon/org/codehaus/jackson/JsonToken;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 288
    :cond_0
    sget-object v0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 298
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 296
    :cond_1
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 290
    :cond_2
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected _handleApostropheValue()Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 2100
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v0

    .line 2103
    sget-object v1, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->sInputCodesUtf8:[I

    .line 2104
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2111
    :cond_0
    :goto_0
    iget v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v6, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v5, v6, :cond_1

    .line 2112
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 2114
    :cond_1
    array-length v5, v0

    if-lt v4, v5, :cond_2

    .line 2115
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    const/4 v4, 0x0

    .line 2118
    :cond_2
    iget v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    .line 2120
    iget v6, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    array-length v7, v0

    sub-int/2addr v7, v4

    add-int/2addr v6, v7

    if-ge v6, v5, :cond_3

    move v5, v6

    .line 2125
    :cond_3
    :goto_1
    iget v6, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    if-ge v6, v5, :cond_0

    add-int/lit8 v7, v6, 0x1

    .line 2126
    iput v7, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x27

    if-eq v6, v7, :cond_5

    .line 2127
    aget v8, v1, v6

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v4, 0x1

    int-to-char v6, v6

    .line 2130
    aput-char v6, v0, v4

    move v4, v7

    goto :goto_1

    :cond_5
    :goto_2
    if-ne v6, v7, :cond_6

    .line 2181
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, v4}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 2183
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object v0

    .line 2139
    :cond_6
    aget v5, v1, v6

    const/4 v7, 0x1

    if-eq v5, v7, :cond_d

    const/4 v7, 0x2

    if-eq v5, v7, :cond_c

    const/4 v8, 0x3

    if-eq v5, v8, :cond_a

    const/4 v7, 0x4

    if-eq v5, v7, :cond_8

    const/16 v5, 0x20

    if-ge v6, v5, :cond_7

    const-string/jumbo v5, "string value"

    .line 2168
    invoke-virtual {p0, v6, v5}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 2171
    :cond_7
    invoke-virtual {p0, v6}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    goto :goto_4

    .line 2156
    :cond_8
    invoke-direct {p0, v6}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_4(I)I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    const v7, 0xd800

    shr-int/lit8 v8, v5, 0xa

    or-int/2addr v7, v8

    int-to-char v7, v7

    .line 2158
    aput-char v7, v0, v4

    .line 2159
    array-length v4, v0

    if-lt v6, v4, :cond_9

    .line 2160
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    const/4 v4, 0x0

    goto :goto_3

    :cond_9
    move v4, v6

    :goto_3
    const v6, 0xdc00

    and-int/lit16 v5, v5, 0x3ff

    or-int/2addr v6, v5

    goto :goto_4

    .line 2149
    :cond_a
    iget v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    iget v8, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    sub-int/2addr v5, v8

    if-lt v5, v7, :cond_b

    .line 2150
    invoke-direct {p0, v6}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_3fast(I)I

    move-result v6

    goto :goto_4

    .line 2152
    :cond_b
    invoke-direct {p0, v6}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_3(I)I

    move-result v6

    goto :goto_4

    .line 2146
    :cond_c
    invoke-direct {p0, v6}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_2(I)I

    move-result v6

    goto :goto_4

    :cond_d
    const/16 v5, 0x22

    if-eq v6, v5, :cond_e

    .line 2142
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    move-result v6

    .line 2174
    :cond_e
    :goto_4
    array-length v5, v0

    if-lt v4, v5, :cond_f

    .line 2175
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    const/4 v4, 0x0

    :cond_f
    add-int/lit8 v5, v4, 0x1

    int-to-char v6, v6

    .line 2179
    aput-char v6, v0, v4

    move v4, v5

    goto/16 :goto_0
.end method

.method protected _handleInvalidNumberStart(IZ)Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/16 v0, 0x49

    if-ne p1, v0, :cond_8

    .line 2194
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt p1, v0, :cond_0

    .line 2195
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2196
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOFInValue()V

    .line 2199
    :cond_0
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte p1, p1, v0

    const/16 v0, 0x4e

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-string v5, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    const-string v6, "Non-standard token \'"

    const/4 v7, 0x3

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_1

    const-string v0, "-INF"

    goto :goto_0

    :cond_1
    const-string v0, "+INF"

    .line 2202
    :goto_0
    invoke-virtual {p0, v0, v7}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 2203
    sget-object v7, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v7}, Lcom/amazon/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v1, v3

    .line 2204
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->resetAsNaN(Ljava/lang/String;D)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1

    .line 2206
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_8

    if-eqz p2, :cond_5

    const-string v0, "-Infinity"

    goto :goto_2

    :cond_5
    const-string v0, "+Infinity"

    .line 2209
    :goto_2
    invoke-virtual {p0, v0, v7}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 2210
    sget-object v7, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v7}, Lcom/amazon/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    move-wide v1, v3

    .line 2211
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->resetAsNaN(Ljava/lang/String;D)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1

    .line 2213
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    :cond_8
    :goto_4
    const-string p2, "expected digit (0-9) to follow minus sign, for valid numeric value"

    .line 2216
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected _handleUnexpectedValue(I)Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/16 v0, 0x27

    if-eq p1, v0, :cond_4

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4e

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const-string v1, "NaN"

    .line 2075
    invoke-virtual {p0, v1, v0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 2076
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 2077
    invoke-virtual {p0, v1, v2, v3}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->resetAsNaN(Ljava/lang/String;D)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    .line 2079
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 2082
    :cond_2
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt p1, v0, :cond_3

    .line 2083
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2084
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOFInValue()V

    .line 2087
    :cond_3
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_handleInvalidNumberStart(IZ)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1

    .line 2070
    :cond_4
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2071
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_handleApostropheValue()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    .line 2090
    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final _handleUnusualFieldName(I)Lcom/amazon/org/codehaus/jackson/sym/Name;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/16 v0, 0x27

    if-ne p1, v0, :cond_0

    .line 1532
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1533
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_parseApostropheFieldName()Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    .line 1536
    :cond_0
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "was expecting double-quote to start field name"

    .line 1537
    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1543
    :cond_1
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/util/CharTypes;->getInputCodeUtf8JsNames()[I

    move-result-object v0

    .line 1545
    aget v1, v0, p1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    .line 1546
    invoke-virtual {p0, p1, v1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1553
    :cond_2
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x4

    if-ge v2, v5, :cond_3

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr p1, v4

    move v4, p1

    goto :goto_1

    .line 1564
    :cond_3
    array-length v2, v1

    if-lt v3, v2, :cond_4

    .line 1565
    array-length v2, v1

    invoke-static {v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    :cond_4
    add-int/lit8 v2, v3, 0x1

    .line 1567
    aput v4, v1, v3

    const/4 v3, 0x1

    move v4, p1

    move v3, v2

    const/4 v2, 0x1

    .line 1571
    :goto_1
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt p1, v5, :cond_5

    .line 1572
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, " in field name"

    .line 1573
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1576
    :cond_5
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte p1, p1, v5

    and-int/lit16 p1, p1, 0xff

    .line 1577
    aget v6, v0, p1

    if-eqz v6, :cond_9

    if-lez v2, :cond_7

    .line 1584
    array-length p1, v1

    if-lt v3, p1, :cond_6

    .line 1585
    array-length p1, v1

    invoke-static {v1, p1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    move-object v1, p1

    :cond_6
    add-int/lit8 p1, v3, 0x1

    .line 1587
    aput v4, v1, v3

    move v3, p1

    .line 1589
    :cond_7
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {p1, v1, v3}, Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    if-nez p1, :cond_8

    .line 1591
    invoke-direct {p0, v1, v3, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    :cond_8
    return-object p1

    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 1580
    iput v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    goto :goto_0
.end method

.method protected final _loadToHaveAtLeast(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 202
    :cond_0
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_1

    if-lez v2, :cond_1

    .line 204
    iget-wide v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    .line 205
    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    .line 206
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    invoke-static {v3, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    goto :goto_0

    .line 209
    :cond_1
    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    .line 211
    :goto_0
    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 212
    :goto_1
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    const/4 v3, 0x1

    if-ge v2, p1, :cond_4

    .line 213
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputStream:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    array-length v6, v5

    sub-int/2addr v6, v2

    invoke-virtual {v4, v5, v2, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ge v2, v3, :cond_3

    .line 216
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_closeInput()V

    if-eqz v2, :cond_2

    return v1

    .line 219
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 223
    :cond_3
    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    goto :goto_1

    :cond_4
    return v3
.end method

.method protected final _matchToken(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 2223
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2226
    :cond_0
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v1, v2, :cond_1

    .line 2227
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " in a value"

    .line 2228
    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2231
    :cond_1
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v3, "\'null\', \'true\', \'false\' or NaN"

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    .line 2232
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 2234
    :cond_2
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_0

    .line 2238
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v1, v0, :cond_3

    .line 2239
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 2243
    :cond_3
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x30

    if-lt v0, v1, :cond_5

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_5

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 2248
    :cond_4
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeCharForError(I)I

    move-result v0

    int-to-char v0, v0

    .line 2249
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2250
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 2251
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected final _parseApostropheFieldName()Lcom/amazon/org/codehaus/jackson/sym/Name;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1604
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 1605
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ": was expecting closing \'\'\' for name"

    .line 1606
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1609
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x27

    if-ne v0, v1, :cond_1

    .line 1611
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->getEmptyName()Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object v0

    return-object v0

    .line 1613
    :cond_1
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 1620
    sget-object v3, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->sInputCodesLatin1:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ne v0, v1, :cond_5

    if-lez v5, :cond_3

    .line 1695
    array-length v0, v2

    if-lt v6, v0, :cond_2

    .line 1696
    array-length v0, v2

    invoke-static {v2, v0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    move-object v2, v0

    :cond_2
    add-int/lit8 v0, v6, 0x1

    .line 1698
    aput v7, v2, v6

    move v6, v0

    .line 1700
    :cond_3
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0, v2, v6}, Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1702
    invoke-direct {p0, v2, v6, v5}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object v0

    :cond_4
    return-object v0

    :cond_5
    const/16 v8, 0x22

    const/4 v9, 0x4

    const/4 v10, 0x1

    if-eq v0, v8, :cond_c

    .line 1627
    aget v8, v3, v0

    if-eqz v8, :cond_c

    const/16 v8, 0x5c

    if-eq v0, v8, :cond_6

    const-string v8, "name"

    .line 1631
    invoke-virtual {p0, v0, v8}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_1

    .line 1634
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    move-result v0

    :goto_1
    const/16 v8, 0x7f

    if-le v0, v8, :cond_c

    if-lt v5, v9, :cond_8

    .line 1644
    array-length v5, v2

    if-lt v6, v5, :cond_7

    .line 1645
    array-length v5, v2

    invoke-static {v2, v5}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    :cond_7
    add-int/lit8 v5, v6, 0x1

    .line 1647
    aput v7, v2, v6

    move v6, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    :cond_8
    const/16 v8, 0x800

    if-ge v0, v8, :cond_9

    shl-int/lit8 v7, v7, 0x8

    shr-int/lit8 v8, v0, 0x6

    or-int/lit16 v8, v8, 0xc0

    or-int/2addr v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    shl-int/lit8 v7, v7, 0x8

    shr-int/lit8 v8, v0, 0xc

    or-int/lit16 v8, v8, 0xe0

    or-int/2addr v7, v8

    add-int/lit8 v5, v5, 0x1

    if-lt v5, v9, :cond_b

    .line 1660
    array-length v5, v2

    if-lt v6, v5, :cond_a

    .line 1661
    array-length v5, v2

    invoke-static {v2, v5}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    :cond_a
    add-int/lit8 v5, v6, 0x1

    .line 1663
    aput v7, v2, v6

    move v6, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    :cond_b
    shl-int/lit8 v7, v7, 0x8

    shr-int/lit8 v8, v0, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    or-int/2addr v7, v8

    add-int/2addr v5, v10

    :goto_2
    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    :cond_c
    if-ge v5, v9, :cond_d

    add-int/lit8 v5, v5, 0x1

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v0, v7

    move v7, v0

    goto :goto_3

    .line 1679
    :cond_d
    array-length v5, v2

    if-lt v6, v5, :cond_e

    .line 1680
    array-length v5, v2

    invoke-static {v2, v5}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    :cond_e
    add-int/lit8 v5, v6, 0x1

    .line 1682
    aput v7, v2, v6

    move v7, v0

    move v6, v5

    const/4 v5, 0x1

    .line 1686
    :goto_3
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v8, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v8, :cond_f

    .line 1687
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, " in field name"

    .line 1688
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1691
    :cond_f
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v8, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v0, v8

    and-int/lit16 v0, v0, 0xff

    goto/16 :goto_0
.end method

.method protected final _parseFieldName(I)Lcom/amazon/org/codehaus/jackson/sym/Name;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/16 v0, 0x22

    if-eq p1, v0, :cond_0

    .line 1227
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_handleUnusualFieldName(I)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    .line 1230
    :cond_0
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v1, p1, 0x9

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-le v1, v2, :cond_1

    .line 1231
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->slowParseFieldName()Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    .line 1240
    :cond_1
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    .line 1241
    sget-object v2, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->sInputCodesLatin1:[I

    add-int/lit8 v3, p1, 0x1

    .line 1243
    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    .line 1245
    aget v4, v2, p1

    if-nez v4, :cond_a

    add-int/lit8 v4, v3, 0x1

    .line 1246
    iput v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    .line 1247
    aget v5, v2, v3

    if-nez v5, :cond_8

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v3

    add-int/lit8 v3, v4, 0x1

    .line 1249
    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    .line 1250
    aget v5, v2, v4

    if-nez v5, :cond_6

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v4

    add-int/lit8 v4, v3, 0x1

    .line 1252
    iput v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    .line 1253
    aget v5, v2, v3

    if-nez v5, :cond_4

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v3

    add-int/lit8 v3, v4, 0x1

    .line 1255
    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    .line 1256
    aget v3, v2, v1

    if-nez v3, :cond_2

    .line 1257
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quad1:I

    .line 1258
    invoke-virtual {p0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->parseMediumFieldName(I[I)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v2, 0x4

    if-ne v1, v0, :cond_3

    .line 1261
    invoke-direct {p0, p1, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    .line 1263
    :cond_3
    invoke-direct {p0, p1, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 v1, 0x3

    if-ne v3, v0, :cond_5

    .line 1266
    invoke-direct {p0, p1, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    .line 1268
    :cond_5
    invoke-direct {p0, p1, v3, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 v1, 0x2

    if-ne v4, v0, :cond_7

    .line 1271
    invoke-direct {p0, p1, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    .line 1273
    :cond_7
    invoke-direct {p0, p1, v4, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    :cond_8
    const/4 v1, 0x1

    if-ne v3, v0, :cond_9

    .line 1276
    invoke-direct {p0, p1, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    .line 1278
    :cond_9
    invoke-direct {p0, p1, v3, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    :cond_a
    if-ne p1, v0, :cond_b

    .line 1281
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->getEmptyName()Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 v0, 0x0

    .line 1283
    invoke-direct {p0, v0, p1, v0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1
.end method

.method protected _releaseBuffers()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-super {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_releaseBuffers()V

    .line 253
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_bufferRecyclable:Z

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 256
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    .line 257
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/amazon/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/amazon/org/codehaus/jackson/io/IOContext;->releaseReadIOBuffer([B)V

    :cond_0
    return-void
.end method

.method protected _reportInvalidChar(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 2816
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwInvalidSpace(I)V

    .line 2818
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidInitial(I)V

    return-void
.end method

.method protected _reportInvalidInitial(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 2824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method protected _reportInvalidOther(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 2830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method protected _reportInvalidOther(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 2836
    iput p2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 2837
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    return-void
.end method

.method protected _reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 2258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2264
    :goto_0
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 2267
    :cond_0
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte p1, p1, v1

    .line 2268
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeCharForError(I)I

    move-result p1

    int-to-char p1, p1

    .line 2269
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2274
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized token \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\': was expecting "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    return-void

    .line 2272
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected final _skipCR()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2781
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2782
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 2783
    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 2786
    :cond_1
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    .line 2787
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    return-void
.end method

.method protected final _skipLF()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2792
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    .line 2793
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    return-void
.end method

.method protected _skipString()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2000
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 2003
    sget-object v0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->sInputCodesUtf8:[I

    .line 2004
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    .line 2012
    :goto_0
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 2013
    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 2015
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 2016
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 2017
    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    :cond_0
    :goto_1
    if-ge v2, v3, :cond_8

    add-int/lit8 v4, v2, 0x1

    .line 2020
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    .line 2021
    aget v5, v0, v2

    if-eqz v5, :cond_7

    .line 2022
    iput v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    return-void

    .line 2033
    :cond_1
    aget v3, v0, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    const/16 v3, 0x20

    if-ge v2, v3, :cond_2

    const-string/jumbo v3, "string value"

    .line 2049
    invoke-virtual {p0, v2, v3}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_0

    .line 2052
    :cond_2
    invoke-virtual {p0, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    goto :goto_0

    .line 2044
    :cond_3
    invoke-direct {p0, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_4(I)V

    goto :goto_0

    .line 2041
    :cond_4
    invoke-direct {p0, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_3(I)V

    goto :goto_0

    .line 2038
    :cond_5
    invoke-direct {p0, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_2(I)V

    goto :goto_0

    .line 2035
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    goto :goto_0

    :cond_7
    move v2, v4

    goto :goto_1

    .line 2026
    :cond_8
    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    invoke-super {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->close()V

    .line 628
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->release()V

    return-void
.end method

.method public getBinaryValue(Lcom/amazon/org/codehaus/jackson/Base64Variant;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_binaryValue:[B

    if-nez v0, :cond_1

    .line 393
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    .line 398
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_2

    .line 400
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeBase64(Lcom/amazon/org/codehaus/jackson/Base64Variant;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_binaryValue:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    .line 407
    iput-boolean p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    goto :goto_0

    :catch_0
    move-exception v0

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->_constructError(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/JsonParseException;

    move-result-object p1

    throw p1

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_binaryValue:[B

    if-nez v0, :cond_3

    .line 410
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_getByteArrayBuilder()Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;

    move-result-object v0

    .line 411
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_decodeBase64(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;Lcom/amazon/org/codehaus/jackson/Base64Variant;)V

    .line 412
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_binaryValue:[B

    .line 415
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_binaryValue:[B

    return-object p1
.end method

.method public getCodec()Lcom/amazon/org/codehaus/jackson/ObjectCodec;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_objectCodec:Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 273
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 274
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 275
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 276
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_finishString()V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 280
    :cond_1
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_getText2(Lcom/amazon/org/codehaus/jackson/JsonToken;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextCharacters()[C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_6

    .line 306
    sget-object v1, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 333
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v0

    return-object v0

    .line 323
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_1

    .line 324
    iput-boolean v2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 325
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_finishString()V

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object v0

    return-object v0

    .line 309
    :cond_2
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    if-nez v0, :cond_5

    .line 310
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 312
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    if-nez v4, :cond_3

    .line 313
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/amazon/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v4, v3}, Lcom/amazon/org/codehaus/jackson/io/IOContext;->allocNameCopyBuffer(I)[C

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    goto :goto_0

    .line 314
    :cond_3
    array-length v4, v4

    if-ge v4, v3, :cond_4

    .line 315
    new-array v4, v3, [C

    iput-object v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    .line 317
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    invoke-virtual {v0, v2, v3, v4, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 318
    iput-boolean v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    .line 320
    :cond_5
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    return-object v0

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 344
    sget-object v2, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 359
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    return v0

    .line 349
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_1

    .line 350
    iput-boolean v1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 351
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_finishString()V

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->size()I

    move-result v0

    return v0

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    :cond_3
    return v1
.end method

.method public getTextOffset()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 370
    sget-object v2, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 374
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_1

    .line 375
    iput-boolean v1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 376
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_finishString()V

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->getTextOffset()I

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method protected final loadMore()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    .line 169
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    .line 171
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 172
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    .line 174
    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 175
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    const/4 v0, 0x1

    return v0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_closeInput()V

    if-eqz v0, :cond_1

    goto :goto_0

    .line 182
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return v1
.end method

.method public nextBooleanValue()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 945
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    .line 946
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    .line 947
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 948
    iput-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 949
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 950
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 951
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 953
    :cond_0
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 954
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 956
    :cond_1
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    .line 957
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {v0, v1, v3}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 958
    :cond_2
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 959
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {v0, v1, v3}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    :cond_3
    :goto_0
    return-object v2

    .line 963
    :cond_4
    sget-object v0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    return-object v2

    .line 967
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 965
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public nextFieldName(Lcom/amazon/org/codehaus/jackson/SerializableString;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 643
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 644
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    sget-object v2, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_0

    .line 645
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_nextAfterName()Lcom/amazon/org/codehaus/jackson/JsonToken;

    return v0

    .line 648
    :cond_0
    iget-boolean v1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_1

    .line 649
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipString()V

    .line 651
    :cond_1
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipWSOrEnd()I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_2

    .line 653
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->close()V

    .line 654
    iput-object v2, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return v0

    .line 657
    :cond_2
    iget-wide v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    iget v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    int-to-long v6, v5

    add-long/2addr v3, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v3, v6

    iput-wide v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputTotal:J

    .line 658
    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    .line 659
    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    sub-int/2addr v5, v3

    const/4 v3, 0x1

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    .line 662
    iput-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_binaryValue:[B

    const/16 v2, 0x7d

    const/16 v4, 0x5d

    if-ne v1, v4, :cond_4

    .line 666
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->inArray()Z

    move-result p1

    if-nez p1, :cond_3

    .line 667
    invoke-virtual {p0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_reportMismatchedEndMarker(IC)V

    .line 669
    :cond_3
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->getParent()Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    .line 670
    sget-object p1, Lcom/amazon/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return v0

    :cond_4
    if-ne v1, v2, :cond_6

    .line 674
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->inObject()Z

    move-result p1

    if-nez p1, :cond_5

    .line 675
    invoke-virtual {p0, v1, v4}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_reportMismatchedEndMarker(IC)V

    .line 677
    :cond_5
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->getParent()Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    .line 678
    sget-object p1, Lcom/amazon/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return v0

    .line 683
    :cond_6
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->expectComma()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_7

    .line 685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "was expecting comma to separate "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " entries"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 687
    :cond_7
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I

    move-result v1

    .line 690
    :cond_8
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->inObject()Z

    move-result v2

    if-nez v2, :cond_9

    .line 691
    invoke-direct {p0, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_nextTokenNotInObject(I)Lcom/amazon/org/codehaus/jackson/JsonToken;

    return v0

    :cond_9
    const/16 v2, 0x22

    if-ne v1, v2, :cond_c

    .line 698
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/SerializableString;->asQuotedUTF8()[B

    move-result-object v4

    .line 699
    array-length v5, v4

    .line 700
    iget v6, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int v7, v6, v5

    iget v8, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-ge v7, v8, :cond_c

    add-int v7, v6, v5

    .line 703
    iget-object v8, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    aget-byte v8, v8, v7

    if-ne v8, v2, :cond_c

    const/4 v2, 0x0

    :goto_0
    if-ne v2, v5, :cond_a

    add-int/2addr v7, v3

    .line 708
    iput v7, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 710
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 711
    sget-object p1, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 713
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_isNextTokenNameYes()V

    return v3

    .line 716
    :cond_a
    aget-byte v8, v4, v2

    iget-object v9, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    add-int v10, v6, v2

    aget-byte v9, v9, v10

    if-eq v8, v9, :cond_b

    goto :goto_1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 724
    :cond_c
    :goto_1
    invoke-direct {p0, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_isNextTokenNameNo(I)V

    return v0
.end method

.method public nextIntValue(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 897
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 898
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    .line 899
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    const/4 v1, 0x0

    .line 900
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 901
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 902
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 903
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->getIntValue()I

    move-result p1

    return p1

    .line 905
    :cond_0
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 906
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 907
    :cond_1
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    .line 908
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    :cond_2
    :goto_0
    return p1

    .line 913
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->getIntValue()I

    move-result p1

    :cond_4
    return p1
.end method

.method public nextLongValue(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 921
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 922
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    .line 923
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    const/4 v1, 0x0

    .line 924
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 925
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 926
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 927
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->getLongValue()J

    move-result-wide p1

    return-wide p1

    .line 929
    :cond_0
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 930
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 931
    :cond_1
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    .line 932
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    :cond_2
    :goto_0
    return-wide p1

    .line 937
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->getLongValue()J

    move-result-wide p1

    :cond_4
    return-wide p1
.end method

.method public nextTextValue()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 869
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    .line 870
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    .line 871
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 872
    iput-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 873
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 874
    sget-object v3, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v1, v3, :cond_1

    .line 875
    iget-boolean v1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_0

    .line 876
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 877
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_finishString()V

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 881
    :cond_1
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v1, v0, :cond_2

    .line 882
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {v0, v1, v3}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 883
    :cond_2
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v1, v0, :cond_3

    .line 884
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {v0, v1, v3}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    :cond_3
    :goto_0
    return-object v2

    .line 889
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->getText()Ljava/lang/String;

    move-result-object v2

    :cond_5
    return-object v2
.end method

.method public nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 432
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 437
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_nextAfterName()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0

    .line 440
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_1

    .line 441
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipString()V

    .line 444
    :cond_1
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipWSOrEnd()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_2

    .line 449
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->close()V

    .line 450
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object v1

    .line 456
    :cond_2
    iget-wide v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    int-to-long v5, v4

    add-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputTotal:J

    .line 457
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    .line 458
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    sub-int/2addr v4, v2

    const/4 v2, 0x1

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    .line 461
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_binaryValue:[B

    const/16 v1, 0x7d

    const/16 v3, 0x5d

    if-ne v0, v3, :cond_4

    .line 465
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->inArray()Z

    move-result v2

    if-nez v2, :cond_3

    .line 466
    invoke-virtual {p0, v0, v1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_reportMismatchedEndMarker(IC)V

    .line 468
    :cond_3
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->getParent()Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    .line 469
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object v0

    :cond_4
    if-ne v0, v1, :cond_6

    .line 472
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->inObject()Z

    move-result v1

    if-nez v1, :cond_5

    .line 473
    invoke-virtual {p0, v0, v3}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_reportMismatchedEndMarker(IC)V

    .line 475
    :cond_5
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->getParent()Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    .line 476
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object v0

    .line 480
    :cond_6
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->expectComma()Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x2c

    if-eq v0, v4, :cond_7

    .line 482
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "was expecting comma to separate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v5}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " entries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 484
    :cond_7
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I

    move-result v0

    .line 491
    :cond_8
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->inObject()Z

    move-result v4

    if-nez v4, :cond_9

    .line 492
    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_nextTokenNotInObject(I)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0

    .line 495
    :cond_9
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_parseFieldName(I)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 496
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/sym/Name;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 497
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 498
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I

    move-result v0

    const/16 v4, 0x3a

    if-eq v0, v4, :cond_a

    const-string/jumbo v4, "was expecting a colon to separate field name and value"

    .line 500
    invoke-virtual {p0, v0, v4}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 502
    :cond_a
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I

    move-result v0

    const/16 v4, 0x22

    if-ne v0, v4, :cond_b

    .line 506
    iput-boolean v2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 507
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 508
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object v0

    :cond_b
    const/16 v4, 0x2d

    if-eq v0, v4, :cond_12

    const/16 v4, 0x5b

    if-eq v0, v4, :cond_11

    if-eq v0, v3, :cond_f

    const/16 v3, 0x66

    if-eq v0, v3, :cond_e

    const/16 v3, 0x6e

    if-eq v0, v3, :cond_d

    const/16 v3, 0x74

    if-eq v0, v3, :cond_10

    const/16 v3, 0x7b

    if-eq v0, v3, :cond_c

    if-eq v0, v1, :cond_f

    packed-switch v0, :pswitch_data_0

    .line 555
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_handleUnexpectedValue(I)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 517
    :cond_c
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    goto :goto_0

    :cond_d
    const-string v0, "null"

    .line 533
    invoke-virtual {p0, v0, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 534
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/org/codehaus/jackson/JsonToken;

    goto :goto_0

    :cond_e
    const-string v0, "false"

    .line 529
    invoke-virtual {p0, v0, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 530
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/amazon/org/codehaus/jackson/JsonToken;

    goto :goto_0

    :cond_f
    const-string v1, "expected a value"

    .line 523
    invoke-virtual {p0, v0, v1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_10
    const-string/jumbo v0, "true"

    .line 525
    invoke-virtual {p0, v0, v2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Ljava/lang/String;I)V

    .line 526
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/amazon/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 514
    :cond_11
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 552
    :cond_12
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->parseNumberText(I)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 557
    :goto_0
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 558
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected parseEscapedFieldName([IIIII)Lcom/amazon/org/codehaus/jackson/sym/Name;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1436
    sget-object v0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->sInputCodesLatin1:[I

    .line 1439
    :goto_0
    aget v1, v0, p4

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v1, :cond_a

    const/16 v1, 0x22

    if-ne p4, v1, :cond_3

    if-lez p5, :cond_1

    .line 1510
    array-length p4, p1

    if-lt p2, p4, :cond_0

    .line 1511
    array-length p4, p1

    invoke-static {p1, p4}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    :cond_0
    add-int/lit8 p4, p2, 0x1

    .line 1513
    aput p3, p1, p2

    move p2, p4

    .line 1515
    :cond_1
    iget-object p3, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {p3, p1, p2}, Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p3

    if-nez p3, :cond_2

    .line 1517
    invoke-direct {p0, p1, p2, p5}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p3

    :cond_2
    return-object p3

    :cond_3
    const/16 v1, 0x5c

    if-eq p4, v1, :cond_4

    const-string v1, "name"

    .line 1446
    invoke-virtual {p0, p4, v1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_1

    .line 1449
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    move-result p4

    :goto_1
    const/16 v1, 0x7f

    if-le p4, v1, :cond_a

    const/4 v1, 0x0

    if-lt p5, v2, :cond_6

    .line 1459
    array-length p5, p1

    if-lt p2, p5, :cond_5

    .line 1460
    array-length p5, p1

    invoke-static {p1, p5}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    :cond_5
    add-int/lit8 p5, p2, 0x1

    .line 1462
    aput p3, p1, p2

    move p2, p5

    const/4 p3, 0x0

    const/4 p5, 0x0

    :cond_6
    const/16 v4, 0x800

    if-ge p4, v4, :cond_7

    shl-int/lit8 p3, p3, 0x8

    shr-int/lit8 v1, p4, 0x6

    or-int/lit16 v1, v1, 0xc0

    or-int/2addr p3, v1

    add-int/lit8 p5, p5, 0x1

    goto :goto_3

    :cond_7
    shl-int/lit8 p3, p3, 0x8

    shr-int/lit8 v4, p4, 0xc

    or-int/lit16 v4, v4, 0xe0

    or-int/2addr p3, v4

    add-int/lit8 p5, p5, 0x1

    if-lt p5, v2, :cond_9

    .line 1475
    array-length p5, p1

    if-lt p2, p5, :cond_8

    .line 1476
    array-length p5, p1

    invoke-static {p1, p5}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    :cond_8
    add-int/lit8 p5, p2, 0x1

    .line 1478
    aput p3, p1, p2

    move p2, p5

    const/4 p5, 0x0

    goto :goto_2

    :cond_9
    move v1, p3

    :goto_2
    shl-int/lit8 p3, v1, 0x8

    shr-int/lit8 v1, p4, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    or-int/2addr p3, v1

    add-int/2addr p5, v3

    :goto_3
    and-int/lit8 p4, p4, 0x3f

    or-int/lit16 p4, p4, 0x80

    :cond_a
    if-ge p5, v2, :cond_b

    add-int/lit8 p5, p5, 0x1

    shl-int/lit8 p3, p3, 0x8

    or-int/2addr p3, p4

    goto :goto_4

    .line 1494
    :cond_b
    array-length p5, p1

    if-lt p2, p5, :cond_c

    .line 1495
    array-length p5, p1

    invoke-static {p1, p5}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    :cond_c
    add-int/lit8 p5, p2, 0x1

    .line 1497
    aput p3, p1, p2

    move p3, p4

    move p2, p5

    const/4 p5, 0x1

    .line 1501
    :goto_4
    iget p4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt p4, v1, :cond_d

    .line 1502
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result p4

    if-nez p4, :cond_d

    const-string p4, " in field name"

    .line 1503
    invoke-virtual {p0, p4}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1506
    :cond_d
    iget-object p4, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte p4, p4, v1

    and-int/lit16 p4, p4, 0xff

    goto/16 :goto_0
.end method

.method protected parseLongFieldName(I)Lcom/amazon/org/codehaus/jackson/sym/Name;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1330
    sget-object v0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->sInputCodesLatin1:[I

    const/4 v1, 0x2

    const/4 v4, 0x2

    .line 1338
    :goto_0
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    sub-int/2addr v2, v3

    const/4 v5, 0x4

    if-ge v2, v5, :cond_0

    .line 1339
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    .line 1343
    :cond_0
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v3, v2, v3

    and-int/lit16 v7, v3, 0xff

    .line 1344
    aget v3, v0, v7

    const/16 v8, 0x22

    if-eqz v3, :cond_2

    if-ne v7, v8, :cond_1

    .line 1346
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v4, p1, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    .line 1348
    :cond_1
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v0, 0x1

    move-object v2, p0

    move v5, p1

    move v6, v7

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    :cond_2
    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v7

    add-int/lit8 v3, v6, 0x1

    .line 1352
    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    .line 1353
    aget v7, v0, v6

    if-eqz v7, :cond_4

    if-ne v6, v8, :cond_3

    .line 1355
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v4, p1, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    .line 1357
    :cond_3
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v7, 0x2

    move-object v2, p0

    move v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    :cond_4
    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v6

    add-int/lit8 v6, v3, 0x1

    .line 1361
    iput v6, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v3, v2, v3

    and-int/lit16 v7, v3, 0xff

    .line 1362
    aget v3, v0, v7

    if-eqz v3, :cond_6

    if-ne v7, v8, :cond_5

    .line 1364
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v4, p1, v1}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    .line 1366
    :cond_5
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v0, 0x3

    move-object v2, p0

    move v5, p1

    move v6, v7

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    :cond_6
    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v7

    add-int/lit8 v3, v6, 0x1

    .line 1370
    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v2, v2, v6

    and-int/lit16 v6, v2, 0xff

    .line 1371
    aget v2, v0, v6

    if-eqz v2, :cond_8

    if-ne v6, v8, :cond_7

    .line 1373
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v4, p1, v5}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    .line 1375
    :cond_7
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v7, 0x4

    move-object v2, p0

    move v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    .line 1379
    :cond_8
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    array-length v3, v2

    if-lt v4, v3, :cond_9

    .line 1380
    invoke-static {v2, v4}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 1382
    :cond_9
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    add-int/lit8 v3, v4, 0x1

    aput p1, v2, v4

    move v4, v3

    move p1, v6

    goto/16 :goto_0
.end method

.method protected final parseMediumFieldName(I[I)Lcom/amazon/org/codehaus/jackson/sym/Name;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1290
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 1291
    aget v3, p2, v1

    const/16 v4, 0x22

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-ne v1, v4, :cond_0

    .line 1293
    iget p2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quad1:I

    invoke-direct {p0, p2, p1, v5}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    .line 1295
    :cond_0
    iget p2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quad1:I

    invoke-direct {p0, p2, p1, v1, v5}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    :cond_1
    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v1

    add-int/lit8 v1, v2, 0x1

    .line 1298
    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    .line 1299
    aget v3, p2, v2

    if-eqz v3, :cond_3

    const/4 p2, 0x2

    if-ne v2, v4, :cond_2

    .line 1301
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quad1:I

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    .line 1303
    :cond_2
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quad1:I

    invoke-direct {p0, v0, p1, v2, p2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    :cond_3
    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v2

    add-int/lit8 v2, v1, 0x1

    .line 1306
    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 1307
    aget v3, p2, v1

    if-eqz v3, :cond_5

    const/4 p2, 0x3

    if-ne v1, v4, :cond_4

    .line 1309
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quad1:I

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    .line 1311
    :cond_4
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quad1:I

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    :cond_5
    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v1

    add-int/lit8 v1, v2, 0x1

    .line 1314
    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 1315
    aget p2, p2, v0

    if-eqz p2, :cond_7

    const/4 p2, 0x4

    if-ne v0, v4, :cond_6

    .line 1317
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quad1:I

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    .line 1319
    :cond_6
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quad1:I

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1

    .line 1321
    :cond_7
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quad1:I

    aput v2, p2, v1

    .line 1322
    aput p1, p2, v5

    .line 1323
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->parseLongFieldName(I)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object p1

    return-object p1
.end method

.method protected final parseNumberText(I)Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 997
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v2

    const/16 v0, 0x2d

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/16 v4, 0x39

    const/16 v6, 0x30

    if-eqz v5, :cond_4

    .line 1003
    aput-char v0, v2, v1

    .line 1005
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt p1, v0, :cond_1

    .line 1006
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 1008
    :cond_1
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    if-lt p1, v6, :cond_3

    if-le p1, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    .line 1011
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_handleInvalidNumberStart(IZ)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    if-ne p1, v6, :cond_5

    .line 1017
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_verifyNoLeadingZeroes()I

    move-result p1

    :cond_5
    add-int/lit8 v0, v1, 0x1

    int-to-char p1, p1

    .line 1021
    aput-char p1, v2, v1

    .line 1025
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    array-length v1, v2

    add-int/2addr p1, v1

    .line 1026
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-le p1, v1, :cond_6

    move p1, v1

    :cond_6
    const/4 v7, 0x1

    .line 1032
    :goto_3
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    if-lt v1, p1, :cond_7

    .line 1034
    invoke-direct {p0, v2, v0, v5, v7}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_parserNumber2([CIZI)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1

    .line 1036
    :cond_7
    iget-object v8, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    add-int/lit8 v9, v1, 0x1

    iput v9, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v1, v8, v1

    and-int/lit16 v8, v1, 0xff

    if-lt v8, v6, :cond_9

    if-le v8, v4, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v1, v0, 0x1

    int-to-char v8, v8

    .line 1041
    aput-char v8, v2, v0

    move v0, v1

    goto :goto_3

    :cond_9
    :goto_4
    const/16 p1, 0x2e

    if-eq v8, p1, :cond_b

    const/16 p1, 0x65

    if-eq v8, p1, :cond_b

    const/16 p1, 0x45

    if-ne v8, p1, :cond_a

    goto :goto_5

    .line 1047
    :cond_a
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1048
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1051
    invoke-virtual {p0, v5, v7}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->resetInt(ZI)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1

    :cond_b
    :goto_5
    move-object v1, p0

    move v3, v0

    move v4, v8

    move v6, v7

    .line 1044
    invoke-direct/range {v1 .. v6}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_parseFloatText([CIIZI)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method public releaseBuffered(Ljava/io/OutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    return v0
.end method

.method public setCodec(Lcom/amazon/org/codehaus/jackson/ObjectCodec;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_objectCodec:Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    return-void
.end method

.method protected slowParseFieldName()Lcom/amazon/org/codehaus/jackson/sym/Name;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1395
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 1396
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ": was expecting closing \'\"\' for name"

    .line 1397
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v5, v0, 0xff

    const/16 v0, 0x22

    if-ne v5, v0, :cond_1

    .line 1402
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->getEmptyName()Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object v0

    return-object v0

    .line 1404
    :cond_1
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/amazon/org/codehaus/jackson/sym/Name;

    move-result-object v0

    return-object v0
.end method
