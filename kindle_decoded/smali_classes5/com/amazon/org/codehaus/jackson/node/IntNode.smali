.class public final Lcom/amazon/org/codehaus/jackson/node/IntNode;
.super Lcom/amazon/org/codehaus/jackson/node/NumericNode;
.source "IntNode.java"


# static fields
.field private static final CANONICALS:[Lcom/amazon/org/codehaus/jackson/node/IntNode;

.field static final MAX_CANONICAL:I = 0xa

.field static final MIN_CANONICAL:I = -0x1


# instance fields
.field final _value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xc

    new-array v1, v0, [Lcom/amazon/org/codehaus/jackson/node/IntNode;

    .line 25
    sput-object v1, Lcom/amazon/org/codehaus/jackson/node/IntNode;->CANONICALS:[Lcom/amazon/org/codehaus/jackson/node/IntNode;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 27
    sget-object v2, Lcom/amazon/org/codehaus/jackson/node/IntNode;->CANONICALS:[Lcom/amazon/org/codehaus/jackson/node/IntNode;

    new-instance v3, Lcom/amazon/org/codehaus/jackson/node/IntNode;

    add-int/lit8 v4, v1, -0x1

    invoke-direct {v3, v4}, Lcom/amazon/org/codehaus/jackson/node/IntNode;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/node/NumericNode;-><init>()V

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/node/IntNode;->_value:I

    return-void
.end method

.method public static valueOf(I)Lcom/amazon/org/codehaus/jackson/node/IntNode;
    .locals 2

    const/16 v0, 0xa

    if-gt p0, v0, :cond_1

    const/4 v0, -0x1

    if-ge p0, v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    sget-object v1, Lcom/amazon/org/codehaus/jackson/node/IntNode;->CANONICALS:[Lcom/amazon/org/codehaus/jackson/node/IntNode;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    .line 45
    :cond_1
    :goto_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/node/IntNode;

    invoke-direct {v0, p0}, Lcom/amazon/org/codehaus/jackson/node/IntNode;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public asBoolean(Z)Z
    .locals 0

    .line 99
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/node/IntNode;->_value:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    .line 94
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/node/IntNode;->_value:I

    invoke-static {v0}, Lcom/amazon/org/codehaus/jackson/io/NumberOutput;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asToken()Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 55
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 114
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/org/codehaus/jackson/node/IntNode;

    if-eq v2, v3, :cond_2

    return v1

    .line 117
    :cond_2
    check-cast p1, Lcom/amazon/org/codehaus/jackson/node/IntNode;

    iget p1, p1, Lcom/amazon/org/codehaus/jackson/node/IntNode;->_value:I

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/node/IntNode;->_value:I

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 2

    .line 90
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/node/IntNode;->_value:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 2

    .line 87
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/node/IntNode;->_value:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .line 84
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/node/IntNode;->_value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getIntValue()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/node/IntNode;->_value:I

    return v0
.end method

.method public getLongValue()J
    .locals 2

    .line 81
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/node/IntNode;->_value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getNumberType()Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;
    .locals 1

    .line 58
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;->INT:Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;

    return-object v0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 1

    .line 74
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/node/IntNode;->_value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/node/IntNode;->_value:I

    return v0
.end method

.method public isInt()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isIntegralNumber()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final serialize(Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 106
    iget p2, p0, Lcom/amazon/org/codehaus/jackson/node/IntNode;->_value:I

    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    return-void
.end method
