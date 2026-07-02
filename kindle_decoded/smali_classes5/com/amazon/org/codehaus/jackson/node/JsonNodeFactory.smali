.class public Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;
.super Ljava/lang/Object;
.source "JsonNodeFactory.java"


# static fields
.field public static final instance:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;-><init>()V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->instance:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public POJONode(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/node/POJONode;
    .locals 1

    .line 220
    new-instance v0, Lcom/amazon/org/codehaus/jackson/node/POJONode;

    invoke-direct {v0, p1}, Lcom/amazon/org/codehaus/jackson/node/POJONode;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public arrayNode()Lcom/amazon/org/codehaus/jackson/node/ArrayNode;
    .locals 1

    .line 207
    new-instance v0, Lcom/amazon/org/codehaus/jackson/node/ArrayNode;

    invoke-direct {v0, p0}, Lcom/amazon/org/codehaus/jackson/node/ArrayNode;-><init>(Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)V

    return-object v0
.end method

.method public binaryNode([B)Lcom/amazon/org/codehaus/jackson/node/BinaryNode;
    .locals 0

    .line 187
    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/node/BinaryNode;->valueOf([B)Lcom/amazon/org/codehaus/jackson/node/BinaryNode;

    move-result-object p1

    return-object p1
.end method

.method public binaryNode([BII)Lcom/amazon/org/codehaus/jackson/node/BinaryNode;
    .locals 0

    .line 195
    invoke-static {p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/node/BinaryNode;->valueOf([BII)Lcom/amazon/org/codehaus/jackson/node/BinaryNode;

    move-result-object p1

    return-object p1
.end method

.method public booleanNode(Z)Lcom/amazon/org/codehaus/jackson/node/BooleanNode;
    .locals 0

    if-eqz p1, :cond_0

    .line 35
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/node/BooleanNode;->getTrue()Lcom/amazon/org/codehaus/jackson/node/BooleanNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/node/BooleanNode;->getFalse()Lcom/amazon/org/codehaus/jackson/node/BooleanNode;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public nullNode()Lcom/amazon/org/codehaus/jackson/node/NullNode;
    .locals 1

    .line 42
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/node/NullNode;->getInstance()Lcom/amazon/org/codehaus/jackson/node/NullNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(B)Lcom/amazon/org/codehaus/jackson/node/NumericNode;
    .locals 0

    .line 54
    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/node/IntNode;->valueOf(I)Lcom/amazon/org/codehaus/jackson/node/IntNode;

    move-result-object p1

    return-object p1
.end method

.method public numberNode(D)Lcom/amazon/org/codehaus/jackson/node/NumericNode;
    .locals 0

    .line 150
    invoke-static {p1, p2}, Lcom/amazon/org/codehaus/jackson/node/DoubleNode;->valueOf(D)Lcom/amazon/org/codehaus/jackson/node/DoubleNode;

    move-result-object p1

    return-object p1
.end method

.method public numberNode(F)Lcom/amazon/org/codehaus/jackson/node/NumericNode;
    .locals 2

    float-to-double v0, p1

    .line 132
    invoke-static {v0, v1}, Lcom/amazon/org/codehaus/jackson/node/DoubleNode;->valueOf(D)Lcom/amazon/org/codehaus/jackson/node/DoubleNode;

    move-result-object p1

    return-object p1
.end method

.method public numberNode(I)Lcom/amazon/org/codehaus/jackson/node/NumericNode;
    .locals 0

    .line 90
    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/node/IntNode;->valueOf(I)Lcom/amazon/org/codehaus/jackson/node/IntNode;

    move-result-object p1

    return-object p1
.end method

.method public numberNode(J)Lcom/amazon/org/codehaus/jackson/node/NumericNode;
    .locals 0

    .line 108
    invoke-static {p1, p2}, Lcom/amazon/org/codehaus/jackson/node/LongNode;->valueOf(J)Lcom/amazon/org/codehaus/jackson/node/LongNode;

    move-result-object p1

    return-object p1
.end method

.method public numberNode(Ljava/math/BigDecimal;)Lcom/amazon/org/codehaus/jackson/node/NumericNode;
    .locals 0

    .line 168
    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/node/DecimalNode;->valueOf(Ljava/math/BigDecimal;)Lcom/amazon/org/codehaus/jackson/node/DecimalNode;

    move-result-object p1

    return-object p1
.end method

.method public numberNode(Ljava/math/BigInteger;)Lcom/amazon/org/codehaus/jackson/node/NumericNode;
    .locals 0

    .line 126
    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/node/BigIntegerNode;->valueOf(Ljava/math/BigInteger;)Lcom/amazon/org/codehaus/jackson/node/BigIntegerNode;

    move-result-object p1

    return-object p1
.end method

.method public numberNode(S)Lcom/amazon/org/codehaus/jackson/node/NumericNode;
    .locals 0

    .line 72
    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/node/IntNode;->valueOf(I)Lcom/amazon/org/codehaus/jackson/node/IntNode;

    move-result-object p1

    return-object p1
.end method

.method public numberNode(Ljava/lang/Byte;)Lcom/amazon/org/codehaus/jackson/node/ValueNode;
    .locals 0

    if-nez p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->nullNode()Lcom/amazon/org/codehaus/jackson/node/NullNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/node/IntNode;->valueOf(I)Lcom/amazon/org/codehaus/jackson/node/IntNode;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public numberNode(Ljava/lang/Double;)Lcom/amazon/org/codehaus/jackson/node/ValueNode;
    .locals 2

    if-nez p1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->nullNode()Lcom/amazon/org/codehaus/jackson/node/NullNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amazon/org/codehaus/jackson/node/DoubleNode;->valueOf(D)Lcom/amazon/org/codehaus/jackson/node/DoubleNode;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public numberNode(Ljava/lang/Float;)Lcom/amazon/org/codehaus/jackson/node/ValueNode;
    .locals 2

    if-nez p1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->nullNode()Lcom/amazon/org/codehaus/jackson/node/NullNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amazon/org/codehaus/jackson/node/DoubleNode;->valueOf(D)Lcom/amazon/org/codehaus/jackson/node/DoubleNode;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public numberNode(Ljava/lang/Integer;)Lcom/amazon/org/codehaus/jackson/node/ValueNode;
    .locals 0

    if-nez p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->nullNode()Lcom/amazon/org/codehaus/jackson/node/NullNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/node/IntNode;->valueOf(I)Lcom/amazon/org/codehaus/jackson/node/IntNode;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public numberNode(Ljava/lang/Long;)Lcom/amazon/org/codehaus/jackson/node/ValueNode;
    .locals 2

    if-nez p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->nullNode()Lcom/amazon/org/codehaus/jackson/node/NullNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amazon/org/codehaus/jackson/node/LongNode;->valueOf(J)Lcom/amazon/org/codehaus/jackson/node/LongNode;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public numberNode(Ljava/lang/Short;)Lcom/amazon/org/codehaus/jackson/node/ValueNode;
    .locals 0

    if-nez p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->nullNode()Lcom/amazon/org/codehaus/jackson/node/NullNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/node/IntNode;->valueOf(I)Lcom/amazon/org/codehaus/jackson/node/IntNode;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public objectNode()Lcom/amazon/org/codehaus/jackson/node/ObjectNode;
    .locals 1

    .line 212
    new-instance v0, Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

    invoke-direct {v0, p0}, Lcom/amazon/org/codehaus/jackson/node/ObjectNode;-><init>(Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)V

    return-object v0
.end method

.method public textNode(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/node/TextNode;
    .locals 0

    .line 180
    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/node/TextNode;->valueOf(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/node/TextNode;

    move-result-object p1

    return-object p1
.end method
