.class public Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;
.super Lcom/amazon/org/codehaus/jackson/JsonGenerator;
.source "TokenBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;,
        Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Parser;
    }
.end annotation


# static fields
.field protected static final DEFAULT_PARSER_FEATURES:I


# instance fields
.field protected _appendOffset:I

.field protected _closed:Z

.field protected _first:Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;

.field protected _generatorFeatures:I

.field protected _last:Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;

.field protected _objectCodec:Lcom/amazon/org/codehaus/jackson/ObjectCodec;

.field protected _writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->DEFAULT_PARSER_FEATURES:I

    return-void
.end method

.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/ObjectCodec;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_objectCodec:Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    .line 99
    sget p1, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->DEFAULT_PARSER_FEATURES:I

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_generatorFeatures:I

    .line 100
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;->createRootContext()Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    .line 102
    new-instance p1, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-direct {p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;-><init>()V

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_last:Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_first:Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;

    const/4 p1, 0x0

    .line 103
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    return-void
.end method


# virtual methods
.method protected final _append(Lcom/amazon/org/codehaus/jackson/JsonToken;)V
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_last:Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    invoke-virtual {v0, v1, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->append(ILcom/amazon/org/codehaus/jackson/JsonToken;)Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 728
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    goto :goto_0

    .line 730
    :cond_0
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_last:Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;

    .line 731
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    :goto_0
    return-void
.end method

.method protected final _append(Lcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)V
    .locals 2

    .line 736
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_last:Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->append(ILcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 738
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    goto :goto_0

    .line 740
    :cond_0
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_last:Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;

    .line 741
    iput p2, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    :goto_0
    return-void
.end method

.method protected _reportUnsupportedOperation()V
    .locals 2

    .line 746
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Called operation not supported for TokenBuffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asParser()Lcom/amazon/org/codehaus/jackson/JsonParser;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_objectCodec:Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->asParser(Lcom/amazon/org/codehaus/jackson/ObjectCodec;)Lcom/amazon/org/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public asParser(Lcom/amazon/org/codehaus/jackson/JsonParser;)Lcom/amazon/org/codehaus/jackson/JsonParser;
    .locals 3

    .line 145
    new-instance v0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Parser;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_first:Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCodec()Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Parser;-><init>(Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;Lcom/amazon/org/codehaus/jackson/ObjectCodec;)V

    .line 146
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getTokenLocation()Lcom/amazon/org/codehaus/jackson/JsonLocation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Parser;->setLocation(Lcom/amazon/org/codehaus/jackson/JsonLocation;)V

    return-object v0
.end method

.method public asParser(Lcom/amazon/org/codehaus/jackson/ObjectCodec;)Lcom/amazon/org/codehaus/jackson/JsonParser;
    .locals 2

    .line 136
    new-instance v0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Parser;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_first:Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-direct {v0, v1, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Parser;-><init>(Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;Lcom/amazon/org/codehaus/jackson/ObjectCodec;)V

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 353
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_closed:Z

    return-void
.end method

.method public copyCurrentEvent(Lcom/amazon/org/codehaus/jackson/JsonParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 625
    sget-object v0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 685
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Internal error: should never end up through this code path"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 682
    :pswitch_0
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeObject(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 679
    :pswitch_1
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeNull()V

    goto/16 :goto_0

    :pswitch_2
    const/4 p1, 0x0

    .line 676
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 673
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 661
    :pswitch_4
    sget-object v0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$1;->$SwitchMap$org$codehaus$jackson$JsonParser$NumberType:[I

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getNumberType()Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 669
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeNumber(D)V

    goto/16 :goto_0

    .line 666
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getFloatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeNumber(F)V

    goto/16 :goto_0

    .line 663
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeNumber(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 649
    :pswitch_5
    sget-object v0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$1;->$SwitchMap$org$codehaus$jackson$JsonParser$NumberType:[I

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getNumberType()Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 657
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeNumber(J)V

    goto :goto_0

    .line 654
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeNumber(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 651
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeNumber(I)V

    goto :goto_0

    .line 642
    :pswitch_6
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->hasTextCharacters()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 643
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getTextCharacters()[C

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getTextOffset()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getTextLength()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeString([CII)V

    goto :goto_0

    .line 645
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 639
    :pswitch_7
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :pswitch_8
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeEndArray()V

    goto :goto_0

    .line 633
    :pswitch_9
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeStartArray()V

    goto :goto_0

    .line 630
    :pswitch_a
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeEndObject()V

    goto :goto_0

    .line 627
    :pswitch_b
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeStartObject()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public copyCurrentStructure(Lcom/amazon/org/codehaus/jackson/JsonParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 691
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 694
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 695
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 700
    :cond_0
    sget-object v1, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 716
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->copyCurrentEvent(Lcom/amazon/org/codehaus/jackson/JsonParser;)V

    goto :goto_2

    .line 702
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeStartArray()V

    .line 703
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_2

    .line 704
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lcom/amazon/org/codehaus/jackson/JsonParser;)V

    goto :goto_0

    .line 706
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeEndArray()V

    goto :goto_2

    .line 709
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeStartObject()V

    .line 710
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_4

    .line 711
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lcom/amazon/org/codehaus/jackson/JsonParser;)V

    goto :goto_1

    .line 713
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeEndObject()V

    :goto_2
    return-void
.end method

.method public disable(Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/amazon/org/codehaus/jackson/JsonGenerator;
    .locals 1

    .line 313
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_generatorFeatures:I

    return-object p0
.end method

.method public enable(Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/amazon/org/codehaus/jackson/JsonGenerator;
    .locals 1

    .line 307
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_generatorFeatures:I

    return-object p0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getCodec()Lcom/amazon/org/codehaus/jackson/ObjectCodec;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_objectCodec:Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public bridge synthetic getOutputContext()Lcom/amazon/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->getOutputContext()Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputContext()Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 357
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_closed:Z

    return v0
.end method

.method public isEnabled(Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 1

    .line 321
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public serialize(Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_first:Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;

    const/4 v1, -0x1

    :goto_0
    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-lt v1, v3, :cond_1

    .line 175
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->next()Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 178
    :cond_1
    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->type(I)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v3

    if-nez v3, :cond_2

    :goto_1
    return-void

    .line 182
    :cond_2
    sget-object v5, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_0

    .line 259
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Internal error: should never end up through this code path"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 256
    :pswitch_0
    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 253
    :pswitch_1
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNull()V

    goto :goto_0

    .line 250
    :pswitch_2
    invoke-virtual {p1, v4}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    goto :goto_0

    .line 247
    :pswitch_3
    invoke-virtual {p1, v2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    goto :goto_0

    .line 230
    :pswitch_4
    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 231
    instance-of v3, v2, Ljava/math/BigDecimal;

    if-eqz v3, :cond_3

    .line 232
    check-cast v2, Ljava/math/BigDecimal;

    invoke-virtual {p1, v2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 233
    :cond_3
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_4

    .line 234
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(F)V

    goto :goto_0

    .line 235
    :cond_4
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_5

    .line 236
    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(D)V

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    .line 238
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNull()V

    goto :goto_0

    .line 239
    :cond_6
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 240
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_7
    new-instance p1, Lcom/amazon/org/codehaus/jackson/JsonGenerationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized value type for VALUE_NUMBER_FLOAT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", can not serialize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/org/codehaus/jackson/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 218
    :pswitch_5
    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 219
    instance-of v3, v2, Ljava/math/BigInteger;

    if-eqz v3, :cond_8

    .line 220
    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V

    goto/16 :goto_0

    .line 221
    :cond_8
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_9

    .line 222
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    goto/16 :goto_0

    .line 224
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    goto/16 :goto_0

    .line 208
    :pswitch_6
    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 209
    instance-of v3, v2, Lcom/amazon/org/codehaus/jackson/SerializableString;

    if-eqz v3, :cond_a

    .line 210
    check-cast v2, Lcom/amazon/org/codehaus/jackson/SerializableString;

    invoke-virtual {p1, v2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeString(Lcom/amazon/org/codehaus/jackson/SerializableString;)V

    goto/16 :goto_0

    .line 212
    :cond_a
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    :pswitch_7
    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 199
    instance-of v3, v2, Lcom/amazon/org/codehaus/jackson/SerializableString;

    if-eqz v3, :cond_b

    .line 200
    check-cast v2, Lcom/amazon/org/codehaus/jackson/SerializableString;

    invoke-virtual {p1, v2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeFieldName(Lcom/amazon/org/codehaus/jackson/SerializableString;)V

    goto/16 :goto_0

    .line 202
    :cond_b
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    :pswitch_8
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    goto/16 :goto_0

    .line 190
    :pswitch_9
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    goto/16 :goto_0

    .line 187
    :pswitch_a
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 184
    :pswitch_b
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCodec(Lcom/amazon/org/codehaus/jackson/ObjectCodec;)Lcom/amazon/org/codehaus/jackson/JsonGenerator;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_objectCodec:Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TokenBuffer: "

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->asParser()Lcom/amazon/org/codehaus/jackson/JsonParser;

    move-result-object v1

    const/4 v2, 0x0

    .line 278
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x64

    if-nez v3, :cond_1

    if-lt v2, v4, :cond_0

    const-string v1, " ... (truncated "

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " entries)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x5d

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-ge v2, v4, :cond_3

    if-lez v2, :cond_2

    const-string v4, ", "

    .line 285
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 280
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public useDefaultPrettyPrinter()Lcom/amazon/org/codehaus/jackson/JsonGenerator;
    .locals 0

    return-object p0
.end method

.method public writeBinary(Lcom/amazon/org/codehaus/jackson/Base64Variant;[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 611
    new-array p1, p4, [B

    const/4 v0, 0x0

    .line 612
    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 613
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 563
    sget-object p1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/amazon/org/codehaus/jackson/JsonToken;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/amazon/org/codehaus/jackson/JsonToken;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_append(Lcom/amazon/org/codehaus/jackson/JsonToken;)V

    return-void
.end method

.method public final writeEndArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 377
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_append(Lcom/amazon/org/codehaus/jackson/JsonToken;)V

    .line 379
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;->getParent()Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    :cond_0
    return-void
.end method

.method public final writeEndObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 397
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_append(Lcom/amazon/org/codehaus/jackson/JsonToken;)V

    .line 399
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;->getParent()Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    :cond_0
    return-void
.end method

.method public writeFieldName(Lcom/amazon/org/codehaus/jackson/SerializableString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 417
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_append(Lcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    return-void
.end method

.method public writeFieldName(Lcom/amazon/org/codehaus/jackson/io/SerializedString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 425
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_append(Lcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 426
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    return-void
.end method

.method public final writeFieldName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 409
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_append(Lcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    return-void
.end method

.method public writeNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 568
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_append(Lcom/amazon/org/codehaus/jackson/JsonToken;)V

    return-void
.end method

.method public writeNumber(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 527
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_append(Lcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public writeNumber(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 532
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_append(Lcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public writeNumber(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 517
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_append(Lcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public writeNumber(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 522
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_append(Lcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 558
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_append(Lcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeNull()V

    goto :goto_0

    .line 540
    :cond_0
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_append(Lcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeNull()V

    goto :goto_0

    .line 549
    :cond_0
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_append(Lcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 582
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_append(Lcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public writeRaw(C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 491
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_reportUnsupportedOperation()V

    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 476
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_reportUnsupportedOperation()V

    return-void
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 481
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_reportUnsupportedOperation()V

    return-void
.end method

.method public writeRaw([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 486
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_reportUnsupportedOperation()V

    return-void
.end method

.method public writeRawUTF8String([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 463
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_reportUnsupportedOperation()V

    return-void
.end method

.method public writeRawValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 496
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_reportUnsupportedOperation()V

    return-void
.end method

.method public writeRawValue(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 501
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_reportUnsupportedOperation()V

    return-void
.end method

.method public writeRawValue([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 506
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_reportUnsupportedOperation()V

    return-void
.end method

.method public final writeStartArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 369
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_append(Lcom/amazon/org/codehaus/jackson/JsonToken;)V

    .line 370
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;->createChildArrayContext()Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    return-void
.end method

.method public final writeStartObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 389
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_append(Lcom/amazon/org/codehaus/jackson/JsonToken;)V

    .line 390
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;->createChildObjectContext()Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    return-void
.end method

.method public writeString(Lcom/amazon/org/codehaus/jackson/SerializableString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeNull()V

    goto :goto_0

    .line 454
    :cond_0
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_append(Lcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeNull()V

    goto :goto_0

    .line 440
    :cond_0
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_append(Lcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public writeString([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 446
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeTree(Lcom/amazon/org/codehaus/jackson/JsonNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 592
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_append(Lcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public writeUTF8String([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 471
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->_reportUnsupportedOperation()V

    return-void
.end method
