.class public abstract Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;
.super Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;
.source "JsonParserBase.java"


# static fields
.field static final BD_MAX_INT:Ljava/math/BigDecimal;

.field static final BD_MAX_LONG:Ljava/math/BigDecimal;

.field static final BD_MIN_INT:Ljava/math/BigDecimal;

.field static final BD_MIN_LONG:Ljava/math/BigDecimal;

.field static final BI_MAX_INT:Ljava/math/BigInteger;

.field static final BI_MAX_LONG:Ljava/math/BigInteger;

.field static final BI_MIN_INT:Ljava/math/BigInteger;

.field static final BI_MIN_LONG:Ljava/math/BigInteger;

.field protected static final CHAR_NULL:C = '\u0000'

.field protected static final INT_0:I = 0x30

.field protected static final INT_1:I = 0x31

.field protected static final INT_2:I = 0x32

.field protected static final INT_3:I = 0x33

.field protected static final INT_4:I = 0x34

.field protected static final INT_5:I = 0x35

.field protected static final INT_6:I = 0x36

.field protected static final INT_7:I = 0x37

.field protected static final INT_8:I = 0x38

.field protected static final INT_9:I = 0x39

.field protected static final INT_DECIMAL_POINT:I = 0x2e

.field protected static final INT_E:I = 0x45

.field protected static final INT_MINUS:I = 0x2d

.field protected static final INT_PLUS:I = 0x2b

.field protected static final INT_e:I = 0x65

.field static final MAX_INT_D:D = 2.147483647E9

.field static final MAX_INT_L:J = 0x7fffffffL

.field static final MAX_LONG_D:D = 9.223372036854776E18

.field static final MIN_INT_D:D = -2.147483648E9

.field static final MIN_INT_L:J = -0x80000000L

.field static final MIN_LONG_D:D = -9.223372036854776E18

.field protected static final NR_BIGDECIMAL:I = 0x10

.field protected static final NR_BIGINT:I = 0x4

.field protected static final NR_DOUBLE:I = 0x8

.field protected static final NR_INT:I = 0x1

.field protected static final NR_LONG:I = 0x2

.field protected static final NR_UNKNOWN:I


# instance fields
.field protected _binaryValue:[B

.field protected _byteArrayBuilder:Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;

.field protected _closed:Z

.field protected _currInputProcessed:J

.field protected _currInputRow:I

.field protected _currInputRowStart:I

.field protected _expLength:I

.field protected _fractLength:I

.field protected _inputEnd:I

.field protected _inputPtr:I

.field protected _intLength:I

.field protected final _ioContext:Lcom/amazon/org/codehaus/jackson/io/IOContext;

.field protected _nameCopied:Z

.field protected _nameCopyBuffer:[C

.field protected _nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

.field protected _numTypesValid:I

.field protected _numberBigDecimal:Ljava/math/BigDecimal;

.field protected _numberBigInt:Ljava/math/BigInteger;

.field protected _numberDouble:D

.field protected _numberInt:I

.field protected _numberLong:J

.field protected _numberNegative:Z

.field protected _parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

.field protected final _textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

.field protected _tokenInputCol:I

.field protected _tokenInputRow:I

.field protected _tokenInputTotal:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, -0x80000000

    .line 195
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->BI_MIN_INT:Ljava/math/BigInteger;

    const-wide/32 v0, 0x7fffffff

    .line 196
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->BI_MAX_INT:Ljava/math/BigInteger;

    const-wide/high16 v0, -0x8000000000000000L

    .line 198
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->BI_MIN_LONG:Ljava/math/BigInteger;

    const-wide v0, 0x7fffffffffffffffL

    .line 199
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->BI_MAX_LONG:Ljava/math/BigInteger;

    .line 201
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->BI_MIN_LONG:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->BD_MIN_LONG:Ljava/math/BigDecimal;

    .line 202
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->BI_MAX_LONG:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->BD_MAX_LONG:Ljava/math/BigDecimal;

    .line 204
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->BI_MIN_INT:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->BD_MIN_INT:Ljava/math/BigDecimal;

    .line 205
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->BI_MAX_INT:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->BD_MAX_INT:Ljava/math/BigDecimal;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/io/IOContext;I)V
    .locals 4

    .line 299
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 59
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    const-wide/16 v1, 0x0

    .line 71
    iput-wide v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    const/4 v3, 0x1

    .line 77
    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    .line 85
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    .line 101
    iput-wide v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputTotal:J

    .line 106
    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    .line 112
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    const/4 v1, 0x0

    .line 151
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    .line 158
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    .line 164
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;

    .line 247
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 300
    iput p2, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_features:I

    .line 301
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/amazon/org/codehaus/jackson/io/IOContext;

    .line 302
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/io/IOContext;->constructTextBuffer()Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    .line 303
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createRootContext()Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    return-void
.end method

.method private final _parseSlowFloatValue(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 781
    :try_start_0
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->contentsAsDecimal()Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    .line 782
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    goto :goto_0

    .line 785
    :cond_0
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->contentsAsDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    const/16 p1, 0x8

    .line 786
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed numeric value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private final _parseSlowIntValue(I[CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 797
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object p1

    .line 800
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    invoke-static {p2, p3, p4, v0}, Lcom/amazon/org/codehaus/jackson/io/NumberInput;->inLongRange([CIIZ)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 802
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    const/4 p2, 0x2

    .line 803
    iput p2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    goto :goto_0

    .line 806
    :cond_0
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    const/4 p2, 0x4

    .line 807
    iput p2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 811
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Malformed numeric value \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected abstract _closeInput()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final _decodeBase64Escape(Lcom/amazon/org/codehaus/jackson/Base64Variant;CI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/16 v0, 0x5c

    if-ne p2, v0, :cond_2

    .line 1035
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_decodeEscaped()C

    move-result p2

    const/16 v0, 0x20

    if-gt p2, v0, :cond_0

    if-nez p3, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1043
    :cond_0
    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    if-ltz v0, :cond_1

    return v0

    .line 1045
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportInvalidBase64Char(Lcom/amazon/org/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 1033
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportInvalidBase64Char(Lcom/amazon/org/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method protected final _decodeBase64Escape(Lcom/amazon/org/codehaus/jackson/Base64Variant;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/16 v0, 0x5c

    if-ne p2, v0, :cond_2

    .line 1013
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_decodeEscaped()C

    move-result p2

    const/16 v0, 0x20

    if-gt p2, v0, :cond_0

    if-nez p3, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1021
    :cond_0
    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    if-ltz v0, :cond_1

    return v0

    .line 1023
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportInvalidBase64Char(Lcom/amazon/org/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 1011
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportInvalidBase64Char(Lcom/amazon/org/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method protected _decodeEscaped()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1003
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract _finishString()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public _getByteArrayBuilder()Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;

    goto :goto_0

    .line 501
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->reset()V

    .line 503
    :goto_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;

    return-object v0
.end method

.method protected _handleEOF()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->inRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": expected close marker for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/amazon/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->getStartLocation(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected _parseNumericValue(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 721
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_7

    .line 722
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object v0

    .line 723
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->getTextOffset()I

    move-result v1

    .line 724
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_intLength:I

    .line 725
    iget-boolean v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    const/16 v3, 0x9

    const/4 v4, 0x1

    if-gt v2, v3, :cond_2

    .line 729
    invoke-static {v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/io/NumberInput;->parseInt([CII)I

    move-result p1

    .line 730
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    if-eqz v0, :cond_1

    neg-int p1, p1

    :cond_1
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    .line 731
    iput v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    return-void

    :cond_2
    const/16 v3, 0x12

    if-gt v2, v3, :cond_6

    .line 735
    invoke-static {v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/io/NumberInput;->parseLong([CII)J

    move-result-wide v0

    .line 736
    iget-boolean p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    if-eqz p1, :cond_3

    neg-long v0, v0

    :cond_3
    const/16 p1, 0xa

    if-ne v2, p1, :cond_5

    .line 741
    iget-boolean p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    if-eqz p1, :cond_4

    const-wide/32 v2, -0x80000000

    cmp-long p1, v0, v2

    if-ltz p1, :cond_5

    long-to-int p1, v0

    .line 743
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    .line 744
    iput v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    return-void

    :cond_4
    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-gtz p1, :cond_5

    long-to-int p1, v0

    .line 749
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    .line 750
    iput v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    return-void

    .line 755
    :cond_5
    iput-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    const/4 p1, 0x2

    .line 756
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    return-void

    .line 759
    :cond_6
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parseSlowIntValue(I[CII)V

    return-void

    .line 762
    :cond_7
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_8

    .line 763
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parseSlowFloatValue(I)V

    return-void

    .line 766
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current token ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") not numeric, can not use numeric value accessors"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method protected _releaseBuffers()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->releaseBuffers()V

    .line 457
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 459
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    .line 460
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/amazon/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/amazon/org/codehaus/jackson/io/IOContext;->releaseNameCopyBuffer([C)V

    :cond_0
    return-void
.end method

.method protected _reportMismatchedEndMarker(IC)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/amazon/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->getStartLocation(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected close marker \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\': expected \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\' (for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->getTypeDesc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " starting at "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 337
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_closed:Z

    .line 339
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_closeInput()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_releaseBuffers()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_releaseBuffers()V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method protected convertNumberToBigDecimal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 938
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    .line 943
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 945
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    .line 947
    iget-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 949
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    .line 951
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwInternal()V

    .line 953
    :goto_0
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    return-void
.end method

.method protected convertNumberToBigInteger()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 890
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    .line 892
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 894
    iget-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    .line 896
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 898
    iget-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    .line 900
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwInternal()V

    .line 902
    :goto_0
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    return-void
.end method

.method protected convertNumberToDouble()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 914
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    .line 915
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 917
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    .line 919
    iget-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 921
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    goto :goto_0

    .line 923
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwInternal()V

    .line 926
    :goto_0
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    return-void
.end method

.method protected convertNumberToInt()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 825
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 827
    iget-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v5, v3, v0

    if-eqz v5, :cond_0

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") out of range of int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    .line 831
    :cond_0
    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_4

    .line 833
    sget-object v0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->BI_MIN_INT:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_2

    sget-object v0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->BI_MAX_INT:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_3

    .line 835
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportOverflowInt()V

    .line 837
    :cond_3
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    goto :goto_0

    :cond_4
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_7

    .line 840
    iget-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_5

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v4, v0, v2

    if-lez v4, :cond_6

    .line 841
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportOverflowInt()V

    .line 843
    :cond_6
    iget-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    double-to-int v0, v0

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    goto :goto_0

    :cond_7
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    .line 845
    sget-object v0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->BD_MIN_INT:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_8

    sget-object v0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->BD_MAX_INT:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_9

    .line 847
    :cond_8
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportOverflowInt()V

    .line 849
    :cond_9
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    goto :goto_0

    .line 851
    :cond_a
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwInternal()V

    .line 854
    :goto_0
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    return-void
.end method

.method protected convertNumberToLong()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 860
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 861
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_3

    .line 863
    sget-object v0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->BI_MIN_LONG:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->BI_MAX_LONG:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_2

    .line 865
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportOverflowLong()V

    .line 867
    :cond_2
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_6

    .line 870
    iget-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_4

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v4, v0, v2

    if-lez v4, :cond_5

    .line 871
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportOverflowLong()V

    .line 873
    :cond_5
    iget-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    goto :goto_0

    :cond_6
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 875
    sget-object v0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->BD_MIN_LONG:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_7

    sget-object v0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->BD_MAX_LONG:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_8

    .line 877
    :cond_7
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportOverflowLong()V

    .line 879
    :cond_8
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    goto :goto_0

    .line 881
    :cond_9
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwInternal()V

    .line 884
    :goto_0
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    return-void
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 648
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 650
    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 652
    :cond_0
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 653
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->convertNumberToBigInteger()V

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getCurrentLocation()Lcom/amazon/org/codehaus/jackson/JsonLocation;
    .locals 9

    .line 378
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v6, v0, 0x1

    .line 379
    new-instance v0, Lcom/amazon/org/codehaus/jackson/JsonLocation;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/amazon/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v2

    iget-wide v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    int-to-long v7, v1

    add-long/2addr v3, v7

    const-wide/16 v7, 0x1

    sub-long/2addr v3, v7

    iget v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/org/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 327
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->getParent()Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 691
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_1

    const/16 v1, 0x10

    if-nez v0, :cond_0

    .line 693
    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 695
    :cond_0
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 696
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->convertNumberToBigDecimal()V

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 677
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_1

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 679
    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 681
    :cond_0
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 682
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->convertNumberToDouble()V

    .line 685
    :cond_1
    iget-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    return-wide v0
.end method

.method public getFloatValue()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 662
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->getDoubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getIntValue()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 620
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 622
    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 624
    :cond_0
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 625
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->convertNumberToInt()V

    .line 628
    :cond_1
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    return v0
.end method

.method public getLongValue()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 634
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 636
    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 638
    :cond_0
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 639
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->convertNumberToLong()V

    .line 642
    :cond_1
    iget-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    return-wide v0
.end method

.method public getNumberType()Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 592
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 593
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 596
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 597
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;->INT:Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;

    return-object v0

    :cond_1
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 600
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;->LONG:Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;

    return-object v0

    .line 602
    :cond_2
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;->BIG_INTEGER:Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;

    return-object v0

    .line 611
    :cond_3
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 612
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;

    return-object v0

    .line 614
    :cond_4
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;->DOUBLE:Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;

    return-object v0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 559
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 560
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_4

    .line 564
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 565
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    .line 568
    iget-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_2
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 571
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    return-object v0

    .line 574
    :cond_3
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    return-object v0

    .line 580
    :cond_4
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_5

    .line 581
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    return-object v0

    :cond_5
    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_6

    .line 584
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwInternal()V

    .line 586
    :cond_6
    iget-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParsingContext()Lcom/amazon/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->getParsingContext()Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    return-object v0
.end method

.method public getParsingContext()Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    return-object v0
.end method

.method public final getTokenCharacterOffset()J
    .locals 2

    .line 408
    iget-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputTotal:J

    return-wide v0
.end method

.method public final getTokenColumnNr()I
    .locals 1

    .line 412
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public final getTokenLineNr()I
    .locals 1

    .line 409
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    return v0
.end method

.method public getTokenLocation()Lcom/amazon/org/codehaus/jackson/JsonLocation;
    .locals 7

    .line 365
    new-instance v6, Lcom/amazon/org/codehaus/jackson/JsonLocation;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/amazon/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->getTokenCharacterOffset()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->getTokenLineNr()I

    move-result v4

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->getTokenColumnNr()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v6
.end method

.method public hasTextCharacters()Z
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 396
    :cond_0
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 397
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_closed:Z

    return v0
.end method

.method protected abstract loadMore()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final loadMoreGuaranteed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF()V

    :cond_0
    return-void
.end method

.method protected reportInvalidBase64Char(Lcom/amazon/org/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1053
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportInvalidBase64Char(Lcom/amazon/org/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    return-object p1
.end method

.method protected reportInvalidBase64Char(Lcom/amazon/org/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x20

    if-gt p2, v0, :cond_0

    .line 1065
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal white space character (code 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") as character #"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " of 4-char base64 unit: can only used between units"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 1066
    :cond_0
    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->usesPaddingChar(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1067
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected padding character (\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->getPaddingChar()C

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\') as character #"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1068
    :cond_1
    invoke-static {p2}, Ljava/lang/Character;->isDefined(I)Z

    move-result p1

    const-string p3, ") in base64 content"

    if-eqz p1, :cond_3

    invoke-static {p2}, Ljava/lang/Character;->isISOControl(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 1072
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal character \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\' (code 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1070
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal character (code 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz p4, :cond_4

    .line 1075
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1077
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method protected reportInvalidNumber(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid numeric value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method protected reportOverflowInt()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") out of range of int ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method protected reportOverflowLong()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") out of range of long ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method protected reportUnexpectedNumberChar(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected character ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_getCharDesc(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") in numeric value"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 969
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method protected final reset(ZIII)Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 1

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    if-ge p4, v0, :cond_0

    .line 517
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->resetInt(ZI)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1

    .line 519
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->resetFloat(ZIII)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method protected final resetAsNaN(Ljava/lang/String;D)Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->resetWithString(Ljava/lang/String;)V

    .line 545
    iput-wide p2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    const/16 p1, 0x8

    .line 546
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 547
    sget-object p1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object p1
.end method

.method protected final resetFloat(ZIII)Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 0

    .line 534
    iput-boolean p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    .line 535
    iput p2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_intLength:I

    .line 536
    iput p3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_fractLength:I

    .line 537
    iput p4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_expLength:I

    const/4 p1, 0x0

    .line 538
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 539
    sget-object p1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object p1
.end method

.method protected final resetInt(ZI)Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 0

    .line 524
    iput-boolean p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    .line 525
    iput p2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_intLength:I

    const/4 p1, 0x0

    .line 526
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_fractLength:I

    .line 527
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_expLength:I

    .line 528
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 529
    sget-object p1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object p1
.end method

.method public version()Lcom/amazon/org/codehaus/jackson/Version;
    .locals 1

    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/org/codehaus/jackson/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method
