.class public final Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;
.super Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserMinimalBase;
.source "TokenBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Parser"
.end annotation


# instance fields
.field protected transient _byteBuilder:Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;

.field protected _closed:Z

.field protected _codec:Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;

.field protected _location:Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;

.field protected _parsingContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

.field protected _segment:Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Segment;

.field protected _segmentPtr:I


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Segment;Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;)V
    .locals 1

    const/4 v0, 0x0

    .line 796
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserMinimalBase;-><init>(I)V

    const/4 v0, 0x0

    .line 786
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_location:Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;

    .line 797
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Segment;

    const/4 p1, -0x1

    .line 798
    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    .line 799
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_codec:Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;

    .line 800
    invoke-static {p1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->createRootContext(II)Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    return-void
.end method


# virtual methods
.method protected final _checkIsNumber()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1101
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_constructError(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method protected final _currentObject()Ljava/lang/Object;
    .locals 2

    .line 1096
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Segment;

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected _handleEOF()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1108
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwInternal()V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 841
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 842
    iput-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_closed:Z

    :cond_0
    return-void
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 971
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    .line 972
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 973
    check-cast v0, Ljava/math/BigInteger;

    return-object v0

    .line 975
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$1;->$SwitchMap$org$codehaus$jackson$JsonParser$NumberType:[I

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->getNumberType()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 980
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 977
    :cond_1
    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryValue(Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1064
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 1066
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    .line 1067
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 1068
    check-cast v0, [B

    return-object v0

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 1075
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1079
    :cond_1
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_byteBuilder:Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;

    if-nez v1, :cond_2

    .line 1081
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_byteBuilder:Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;

    goto :goto_0

    .line 1083
    :cond_2
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->reset()V

    .line 1085
    :goto_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserMinimalBase;->_decodeBase64(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;)V

    .line 1086
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object p1

    return-object p1

    .line 1073
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current token ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") not VALUE_STRING (or VALUE_EMBEDDED_OBJECT with byte[]), can not access as binary"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_constructError(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;

    move-result-object p1

    throw p1
.end method

.method public getCodec()Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_codec:Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public getCurrentLocation()Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_location:Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;->NA:Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;

    :cond_0
    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 986
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    .line 987
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_0

    .line 988
    check-cast v0, Ljava/math/BigDecimal;

    return-object v0

    .line 990
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$1;->$SwitchMap$org$codehaus$jackson$JsonParser$NumberType:[I

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->getNumberType()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 998
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 995
    :cond_1
    new-instance v1, Ljava/math/BigDecimal;

    check-cast v0, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v1

    .line 993
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1003
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getEmbeddedObject()Ljava/lang/Object;
    .locals 2

    .line 1054
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 1055
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFloatValue()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1008
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public getIntValue()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1015
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 1016
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    .line 1018
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getLongValue()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1023
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberType()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1029
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    .line 1030
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;->INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;

    return-object v0

    .line 1031
    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;->LONG:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;

    return-object v0

    .line 1032
    :cond_1
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_2

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;->DOUBLE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;

    return-object v0

    .line 1033
    :cond_2
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_3

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;

    return-object v0

    .line 1034
    :cond_3
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_4

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;->FLOAT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;

    return-object v0

    .line 1035
    :cond_4
    instance-of v0, v0, Ljava/math/BigInteger;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;->BIG_INTEGER:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNumberValue()Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1041
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_checkIsNumber()V

    .line 1042
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public getParsingContext()Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .line 921
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    return-object v2

    .line 932
    :cond_1
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 938
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 935
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 936
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 923
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    .line 924
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 925
    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_5
    if-nez v0, :cond_6

    goto :goto_2

    .line 927
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2
.end method

.method public getTextCharacters()[C
    .locals 1

    .line 943
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 944
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTextLength()I
    .locals 1

    .line 949
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 950
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTextOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTokenLocation()Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;
    .locals 1

    .line 901
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->getCurrentLocation()Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public hasTextCharacters()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 889
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_closed:Z

    return v0
.end method

.method public nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 856
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_closed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Segment;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 859
    :cond_0
    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    .line 860
    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    .line 861
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Segment;->next()Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Segment;

    if-nez v0, :cond_1

    return-object v1

    .line 866
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Segment;

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Segment;->type(I)Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    .line 868
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 869
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    .line 870
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 871
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    goto :goto_1

    .line 872
    :cond_3
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/4 v2, -0x1

    if-ne v0, v1, :cond_4

    .line 873
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0, v2, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_1

    .line 874
    :cond_4
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_5

    .line 875
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0, v2, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_1

    .line 876
    :cond_5
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_6

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_7

    .line 879
    :cond_6
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->getParent()Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    if-nez v0, :cond_7

    .line 882
    invoke-static {v2, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;->createRootContext(II)Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonReadContext;

    .line 885
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    return-object v0

    :cond_8
    :goto_2
    return-object v1
.end method

.method public peekNextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 823
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Segment;

    .line 825
    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 828
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Segment;->next()Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Segment;

    move-result-object v0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    .line 830
    :cond_3
    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Segment;->type(I)Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public setCodec(Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;)V
    .locals 0

    .line 811
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_codec:Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;

    return-void
.end method

.method public setLocation(Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;)V
    .locals 0

    .line 804
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer$Parser;->_location:Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;

    return-void
.end method
