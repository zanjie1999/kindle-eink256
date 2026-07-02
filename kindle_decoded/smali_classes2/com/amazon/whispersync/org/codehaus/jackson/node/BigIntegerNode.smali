.class public final Lcom/amazon/whispersync/org/codehaus/jackson/node/BigIntegerNode;
.super Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;
.source "BigIntegerNode.java"


# instance fields
.field protected final _value:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;

    return-void
.end method

.method public static valueOf(Ljava/math/BigInteger;)Lcom/amazon/whispersync/org/codehaus/jackson/node/BigIntegerNode;
    .locals 1

    .line 26
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BigIntegerNode;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/BigIntegerNode;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method


# virtual methods
.method public asBoolean(Z)Z
    .locals 1

    .line 79
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

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

    .line 94
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/amazon/whispersync/org/codehaus/jackson/node/BigIntegerNode;

    if-eq v1, v2, :cond_2

    return v0

    .line 97
    :cond_2
    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/BigIntegerNode;

    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 2

    .line 64
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getIntValue()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public getLongValue()J
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberType()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;->BIG_INTEGER:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;

    return-object v0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBigInteger()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isIntegralNumber()Z
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

    .line 86
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V

    return-void
.end method
