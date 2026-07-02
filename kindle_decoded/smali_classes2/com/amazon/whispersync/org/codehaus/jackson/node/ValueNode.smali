.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/node/ValueNode;
.super Lcom/amazon/whispersync/org/codehaus/jackson/node/BaseJsonNode;
.source "ValueNode.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/BaseJsonNode;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract asToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
.end method

.method public isValueNode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public path(I)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 0

    .line 48
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/node/MissingNode;->getInstance()Lcom/amazon/whispersync/org/codehaus/jackson/node/MissingNode;

    move-result-object p1

    return-object p1
.end method

.method public path(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 0

    .line 45
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/node/MissingNode;->getInstance()Lcom/amazon/whispersync/org/codehaus/jackson/node/MissingNode;

    move-result-object p1

    return-object p1
.end method

.method public serializeWithType(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 33
    invoke-virtual {p3, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/BaseJsonNode;->serialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    .line 35
    invoke-virtual {p3, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
