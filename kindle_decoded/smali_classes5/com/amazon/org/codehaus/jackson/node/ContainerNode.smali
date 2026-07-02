.class public abstract Lcom/amazon/org/codehaus/jackson/node/ContainerNode;
.super Lcom/amazon/org/codehaus/jackson/node/BaseJsonNode;
.source "ContainerNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/node/ContainerNode$NoStringsIterator;,
        Lcom/amazon/org/codehaus/jackson/node/ContainerNode$NoNodesIterator;
    }
.end annotation


# instance fields
.field _nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;


# direct methods
.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/node/BaseJsonNode;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    return-void
.end method


# virtual methods
.method public final POJONode(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/node/POJONode;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->POJONode(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/node/POJONode;

    move-result-object p1

    return-object p1
.end method

.method public final arrayNode()Lcom/amazon/org/codehaus/jackson/node/ArrayNode;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->arrayNode()Lcom/amazon/org/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public abstract asToken()Lcom/amazon/org/codehaus/jackson/JsonToken;
.end method

.method public final binaryNode([B)Lcom/amazon/org/codehaus/jackson/node/BinaryNode;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->binaryNode([B)Lcom/amazon/org/codehaus/jackson/node/BinaryNode;

    move-result-object p1

    return-object p1
.end method

.method public final binaryNode([BII)Lcom/amazon/org/codehaus/jackson/node/BinaryNode;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->binaryNode([BII)Lcom/amazon/org/codehaus/jackson/node/BinaryNode;

    move-result-object p1

    return-object p1
.end method

.method public final booleanNode(Z)Lcom/amazon/org/codehaus/jackson/node/BooleanNode;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->booleanNode(Z)Lcom/amazon/org/codehaus/jackson/node/BooleanNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findParent(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/JsonNode;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/node/ContainerNode;->findParent(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    return-object p1
.end method

.method public abstract findParent(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/node/ObjectNode;
.end method

.method public abstract findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/org/codehaus/jackson/JsonNode;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findValue(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/JsonNode;
.end method

.method public abstract findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/org/codehaus/jackson/JsonNode;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get(I)Lcom/amazon/org/codehaus/jackson/JsonNode;
.end method

.method public abstract get(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/JsonNode;
.end method

.method public getValueAsText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isContainerNode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final nullNode()Lcom/amazon/org/codehaus/jackson/node/NullNode;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->nullNode()Lcom/amazon/org/codehaus/jackson/node/NullNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(B)Lcom/amazon/org/codehaus/jackson/node/NumericNode;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->numberNode(B)Lcom/amazon/org/codehaus/jackson/node/NumericNode;

    move-result-object p1

    return-object p1
.end method

.method public final numberNode(D)Lcom/amazon/org/codehaus/jackson/node/NumericNode;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->numberNode(D)Lcom/amazon/org/codehaus/jackson/node/NumericNode;

    move-result-object p1

    return-object p1
.end method

.method public final numberNode(F)Lcom/amazon/org/codehaus/jackson/node/NumericNode;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->numberNode(F)Lcom/amazon/org/codehaus/jackson/node/NumericNode;

    move-result-object p1

    return-object p1
.end method

.method public final numberNode(I)Lcom/amazon/org/codehaus/jackson/node/NumericNode;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->numberNode(I)Lcom/amazon/org/codehaus/jackson/node/NumericNode;

    move-result-object p1

    return-object p1
.end method

.method public final numberNode(J)Lcom/amazon/org/codehaus/jackson/node/NumericNode;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->numberNode(J)Lcom/amazon/org/codehaus/jackson/node/NumericNode;

    move-result-object p1

    return-object p1
.end method

.method public final numberNode(Ljava/math/BigDecimal;)Lcom/amazon/org/codehaus/jackson/node/NumericNode;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->numberNode(Ljava/math/BigDecimal;)Lcom/amazon/org/codehaus/jackson/node/NumericNode;

    move-result-object p1

    return-object p1
.end method

.method public final numberNode(S)Lcom/amazon/org/codehaus/jackson/node/NumericNode;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->numberNode(S)Lcom/amazon/org/codehaus/jackson/node/NumericNode;

    move-result-object p1

    return-object p1
.end method

.method public final objectNode()Lcom/amazon/org/codehaus/jackson/node/ObjectNode;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->objectNode()Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public abstract removeAll()Lcom/amazon/org/codehaus/jackson/node/ContainerNode;
.end method

.method public abstract size()I
.end method

.method public final textNode(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/node/TextNode;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/node/TextNode;

    move-result-object p1

    return-object p1
.end method
