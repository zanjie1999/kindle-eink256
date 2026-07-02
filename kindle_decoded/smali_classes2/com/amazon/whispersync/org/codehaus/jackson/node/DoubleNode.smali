.class public final Lcom/amazon/whispersync/org/codehaus/jackson/node/DoubleNode;
.super Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;
.source "DoubleNode.java"


# instance fields
.field protected final _value:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;-><init>()V

    iput-wide p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/DoubleNode;->_value:D

    return-void
.end method

.method public static valueOf(D)Lcom/amazon/whispersync/org/codehaus/jackson/node/DoubleNode;
    .locals 1

    .line 28
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/DoubleNode;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/DoubleNode;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public asText()Ljava/lang/String;
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/DoubleNode;->_value:D

    invoke-static {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/NumberOutput;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 36
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 92
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/whispersync/org/codehaus/jackson/node/DoubleNode;

    if-eq v2, v3, :cond_2

    return v1

    .line 95
    :cond_2
    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/DoubleNode;

    iget-wide v2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/DoubleNode;->_value:D

    iget-wide v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/DoubleNode;->_value:D

    cmpl-double p1, v2, v4

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/DoubleNode;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/DoubleNode;->_value:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/DoubleNode;->_value:D

    return-wide v0
.end method

.method public getIntValue()I
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/DoubleNode;->_value:D

    double-to-int v0, v0

    return v0
.end method

.method public getLongValue()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/DoubleNode;->_value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public getNumberType()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;->DOUBLE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;

    return-object v0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/DoubleNode;->_value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 102
    iget-wide v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/DoubleNode;->_value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    long-to-int v1, v0

    xor-int v0, v2, v1

    return v0
.end method

.method public isDouble()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFloatingPointNumber()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final serialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 84
    iget-wide v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/DoubleNode;->_value:D

    invoke-virtual {p1, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeNumber(D)V

    return-void
.end method
