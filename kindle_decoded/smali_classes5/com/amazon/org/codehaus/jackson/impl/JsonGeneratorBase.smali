.class public abstract Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;
.super Lcom/amazon/org/codehaus/jackson/JsonGenerator;
.source "JsonGeneratorBase.java"


# instance fields
.field protected _cfgNumbersAsStrings:Z

.field protected _closed:Z

.field protected _features:I

.field protected _objectCodec:Lcom/amazon/org/codehaus/jackson/ObjectCodec;

.field protected _writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;


# direct methods
.method protected constructor <init>(ILcom/amazon/org/codehaus/jackson/ObjectCodec;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;-><init>()V

    .line 72
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    .line 73
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;->createRootContext()Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    .line 74
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    .line 75
    sget-object p1, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    return-void
.end method


# virtual methods
.method protected _cantHappen()V
    .locals 2

    .line 485
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: should never end up through this code path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract _releaseBuffers()V
.end method

.method protected _reportError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 480
    new-instance v0, Lcom/amazon/org/codehaus/jackson/JsonGenerationException;

    invoke-direct {v0, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected _reportUnsupportedOperation()V
    .locals 3

    .line 568
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported by generator of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final _throwInternal()V
    .locals 2

    .line 561
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: this code path should never get executed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract _verifyValueWrite(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method protected _writeEndArray()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected _writeEndObject()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected _writeSimpleObject(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNull()V

    return-void

    .line 506
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 507
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 510
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_b

    .line 511
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    .line 512
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 513
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    return-void

    .line 515
    :cond_2
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 516
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    return-void

    .line 518
    :cond_3
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_4

    .line 519
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(D)V

    return-void

    .line 521
    :cond_4
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 522
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(F)V

    return-void

    .line 524
    :cond_5
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_6

    .line 525
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    return-void

    .line 527
    :cond_6
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_7

    .line 528
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    return-void

    .line 530
    :cond_7
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_8

    .line 531
    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V

    return-void

    .line 533
    :cond_8
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_9

    .line 534
    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    return-void

    .line 539
    :cond_9
    instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_a

    .line 540
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    return-void

    .line 542
    :cond_a
    instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v1, :cond_e

    .line 543
    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    return-void

    .line 546
    :cond_b
    instance-of v0, p1, [B

    if-eqz v0, :cond_c

    .line 547
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeBinary([B)V

    return-void

    .line 549
    :cond_c
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 550
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    return-void

    .line 552
    :cond_d
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_e

    .line 553
    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    return-void

    .line 556
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No ObjectCodec defined for the generator, can only serialize simple wrapper types (type passed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected _writeStartArray()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected _writeStartObject()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 348
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_closed:Z

    return-void
.end method

.method public final copyCurrentEvent(Lcom/amazon/org/codehaus/jackson/JsonParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 364
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "No current event to copy"

    .line 367
    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 369
    :cond_0
    sget-object v1, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 429
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_cantHappen()V

    goto/16 :goto_0

    .line 426
    :pswitch_0
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->writeObject(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 423
    :pswitch_1
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNull()V

    goto/16 :goto_0

    :pswitch_2
    const/4 p1, 0x0

    .line 420
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 417
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 405
    :pswitch_4
    sget-object v0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase$1;->$SwitchMap$org$codehaus$jackson$JsonParser$NumberType:[I

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getNumberType()Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 413
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(D)V

    goto/16 :goto_0

    .line 410
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getFloatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(F)V

    goto/16 :goto_0

    .line 407
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 393
    :pswitch_5
    sget-object v0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase$1;->$SwitchMap$org$codehaus$jackson$JsonParser$NumberType:[I

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getNumberType()Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 401
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    goto :goto_0

    .line 398
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 395
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    goto :goto_0

    .line 386
    :pswitch_6
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->hasTextCharacters()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 387
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getTextCharacters()[C

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getTextOffset()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getTextLength()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeString([CII)V

    goto :goto_0

    .line 389
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :pswitch_7
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :pswitch_8
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->writeEndArray()V

    goto :goto_0

    .line 377
    :pswitch_9
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->writeStartArray()V

    goto :goto_0

    .line 374
    :pswitch_a
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->writeEndObject()V

    goto :goto_0

    .line 371
    :pswitch_b
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->writeStartObject()V

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

.method public final copyCurrentStructure(Lcom/amazon/org/codehaus/jackson/JsonParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 437
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 440
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 441
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 446
    :cond_0
    sget-object v1, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 462
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->copyCurrentEvent(Lcom/amazon/org/codehaus/jackson/JsonParser;)V

    goto :goto_2

    .line 448
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->writeStartArray()V

    .line 449
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_2

    .line 450
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->copyCurrentStructure(Lcom/amazon/org/codehaus/jackson/JsonParser;)V

    goto :goto_0

    .line 452
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->writeEndArray()V

    goto :goto_2

    .line 455
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->writeStartObject()V

    .line 456
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_4

    .line 457
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->copyCurrentStructure(Lcom/amazon/org/codehaus/jackson/JsonParser;)V

    goto :goto_1

    .line 459
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->writeEndObject()V

    :goto_2
    return-void
.end method

.method public disable(Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/amazon/org/codehaus/jackson/JsonGenerator;
    .locals 2

    .line 102
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    .line 103
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 104
    iput-boolean v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    goto :goto_0

    .line 105
    :cond_0
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    if-ne p1, v0, :cond_1

    .line 106
    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->setHighestNonEscapedChar(I)Lcom/amazon/org/codehaus/jackson/JsonGenerator;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public enable(Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/amazon/org/codehaus/jackson/JsonGenerator;
    .locals 2

    .line 91
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    .line 92
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    goto :goto_0

    .line 94
    :cond_0
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    if-ne p1, v0, :cond_1

    const/16 p1, 0x7f

    .line 95
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->setHighestNonEscapedChar(I)Lcom/amazon/org/codehaus/jackson/JsonGenerator;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getCodec()Lcom/amazon/org/codehaus/jackson/ObjectCodec;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public bridge synthetic getOutputContext()Lcom/amazon/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->getOutputContext()Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputContext()Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 352
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_closed:Z

    return v0
.end method

.method public final isEnabled(Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 1

    .line 115
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

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

.method public setCodec(Lcom/amazon/org/codehaus/jackson/ObjectCodec;)Lcom/amazon/org/codehaus/jackson/JsonGenerator;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    return-object p0
.end method

.method public useDefaultPrettyPrinter()Lcom/amazon/org/codehaus/jackson/JsonGenerator;
    .locals 1

    .line 120
    new-instance v0, Lcom/amazon/org/codehaus/jackson/util/DefaultPrettyPrinter;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/util/DefaultPrettyPrinter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->setPrettyPrinter(Lcom/amazon/org/codehaus/jackson/PrettyPrinter;)Lcom/amazon/org/codehaus/jackson/JsonGenerator;

    move-result-object v0

    return-object v0
.end method

.method public version()Lcom/amazon/org/codehaus/jackson/Version;
    .locals 1

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/org/codehaus/jackson/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method

.method public writeEndArray()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->inArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 178
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/amazon/org/codehaus/jackson/PrettyPrinter;->writeEndArray(Lcom/amazon/org/codehaus/jackson/JsonGenerator;I)V

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeEndArray()V

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;->getParent()Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    return-void
.end method

.method public writeEndObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->inObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;->getParent()Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    .line 220
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/org/codehaus/jackson/PrettyPrinter;

    if-eqz v1, :cond_1

    .line 221
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->getEntryCount()I

    move-result v0

    invoke-interface {v1, p0, v0}, Lcom/amazon/org/codehaus/jackson/PrettyPrinter;->writeEndObject(Lcom/amazon/org/codehaus/jackson/JsonGenerator;I)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeEndObject()V

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

    if-nez p1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNull()V

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/ObjectCodec;->writeValue(Lcom/amazon/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    return-void

    .line 317
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeSimpleObject(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public writeRawValue(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write raw value"

    .line 253
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    return-void
.end method

.method public writeRawValue(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write raw value"

    .line 261
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;II)V

    return-void
.end method

.method public writeRawValue([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write raw value"

    .line 269
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeRaw([CII)V

    return-void
.end method

.method public writeStartArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "start an array"

    .line 154
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;->createChildArrayContext()Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    .line 156
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0, p0}, Lcom/amazon/org/codehaus/jackson/PrettyPrinter;->writeStartArray(Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeStartArray()V

    :goto_0
    return-void
.end method

.method public writeStartObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "start an object"

    .line 196
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;->createChildObjectContext()Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/org/codehaus/jackson/impl/JsonWriteContext;

    .line 198
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0, p0}, Lcom/amazon/org/codehaus/jackson/PrettyPrinter;->writeStartObject(Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeStartObject()V

    :goto_0
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

    if-nez p1, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNull()V

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/ObjectCodec;->writeTree(Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/JsonNode;)V

    :goto_0
    return-void

    .line 330
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No ObjectCodec defined for the generator, can not serialize JsonNode-based trees"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
