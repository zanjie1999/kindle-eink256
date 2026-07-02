.class public final Lcom/amazon/whispersync/org/codehaus/jackson/node/DecimalNode;
.super Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;
.source "DecimalNode.java"


# instance fields
.field protected final _value:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    return-void
.end method

.method public static valueOf(Ljava/math/BigDecimal;)Lcom/amazon/whispersync/org/codehaus/jackson/node/DecimalNode;
    .locals 1

    .line 27
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/DecimalNode;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/DecimalNode;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method


# virtual methods
.method public asText()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 88
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/amazon/whispersync/org/codehaus/jackson/node/DecimalNode;

    if-eq v1, v2, :cond_2

    return v0

    .line 91
    :cond_2
    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/DecimalNode;

    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getIntValue()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    return v0
.end method

.method public getLongValue()J
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberType()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;

    return-object v0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBigDecimal()Z
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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 80
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    return-void
.end method
