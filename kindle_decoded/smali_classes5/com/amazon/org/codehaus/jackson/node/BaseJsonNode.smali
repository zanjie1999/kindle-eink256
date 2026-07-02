.class public abstract Lcom/amazon/org/codehaus/jackson/node/BaseJsonNode;
.super Lcom/amazon/org/codehaus/jackson/JsonNode;
.source "BaseJsonNode.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/map/JsonSerializableWithType;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/JsonNode;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract asToken()Lcom/amazon/org/codehaus/jackson/JsonToken;
.end method

.method public bridge synthetic findParent(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/JsonNode;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/node/BaseJsonNode;->findParent(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    return-object p1
.end method

.method public findParent(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/node/ObjectNode;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0
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

    return-object p2
.end method

.method public final findPath(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/JsonNode;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/node/BaseJsonNode;->findValue(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/JsonNode;

    move-result-object p1

    if-nez p1, :cond_0

    .line 41
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/node/MissingNode;->getInstance()Lcom/amazon/org/codehaus/jackson/node/MissingNode;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public findValue(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/JsonNode;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0
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

    return-object p2
.end method

.method public findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0
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

    return-object p2
.end method

.method public getNumberType()Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract serialize(Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract serializeWithType(Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public traverse()Lcom/amazon/org/codehaus/jackson/JsonParser;
    .locals 1

    .line 75
    new-instance v0, Lcom/amazon/org/codehaus/jackson/node/TreeTraversingParser;

    invoke-direct {v0, p0}, Lcom/amazon/org/codehaus/jackson/node/TreeTraversingParser;-><init>(Lcom/amazon/org/codehaus/jackson/JsonNode;)V

    return-object v0
.end method
