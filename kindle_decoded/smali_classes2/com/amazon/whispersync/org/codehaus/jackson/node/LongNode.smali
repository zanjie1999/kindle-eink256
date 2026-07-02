.class public final Lcom/amazon/whispersync/org/codehaus/jackson/node/LongNode;
.super Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;
.source "LongNode.java"


# instance fields
.field final _value:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;-><init>()V

    iput-wide p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/LongNode;->_value:J

    return-void
.end method

.method public static valueOf(J)Lcom/amazon/whispersync/org/codehaus/jackson/node/LongNode;
    .locals 1

    .line 27
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/LongNode;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/LongNode;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public asBoolean(Z)Z
    .locals 4

    .line 74
    iget-wide v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/LongNode;->_value:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public asText()Ljava/lang/String;
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/LongNode;->_value:J

    invoke-static {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/NumberOutput;->toString(J)Ljava/lang/String;

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
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 89
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/whispersync/org/codehaus/jackson/node/LongNode;

    if-eq v2, v3, :cond_2

    return v1

    .line 92
    :cond_2
    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/LongNode;

    iget-wide v2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/LongNode;->_value:J

    iget-wide v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/LongNode;->_value:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/LongNode;->_value:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/LongNode;->_value:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/LongNode;->_value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public getIntValue()I
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/LongNode;->_value:J

    long-to-int v1, v0

    return v1
.end method

.method public getLongValue()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/LongNode;->_value:J

    return-wide v0
.end method

.method public getNumberType()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;->LONG:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;

    return-object v0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/LongNode;->_value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 97
    iget-wide v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/LongNode;->_value:J

    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    long-to-int v1, v0

    xor-int v0, v2, v1

    return v0
.end method

.method public isIntegralNumber()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLong()Z
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

    .line 81
    iget-wide v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/LongNode;->_value:J

    invoke-virtual {p1, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    return-void
.end method
