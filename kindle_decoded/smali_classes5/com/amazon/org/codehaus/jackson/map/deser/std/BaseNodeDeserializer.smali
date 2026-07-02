.class abstract Lcom/amazon/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;
.source "JsonNodeDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/amazon/org/codehaus/jackson/JsonNode;",
        ">",
        "Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer<",
        "TN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TN;>;)V"
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected _handleDuplicateField(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/node/ObjectNode;Lcom/amazon/org/codehaus/jackson/JsonNode;Lcom/amazon/org/codehaus/jackson/JsonNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    return-void
.end method

.method protected _reportProblem(Lcom/amazon/org/codehaus/jackson/JsonParser;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 153
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getTokenLocation()Lcom/amazon/org/codehaus/jackson/JsonLocation;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;)V

    throw v0
.end method

.method protected deserializeAny(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/JsonNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 245
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 311
    :pswitch_0
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;->getValueClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 303
    :pswitch_1
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->nullNode()Lcom/amazon/org/codehaus/jackson/node/NullNode;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/4 p1, 0x0

    .line 300
    invoke-virtual {p3, p1}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->booleanNode(Z)Lcom/amazon/org/codehaus/jackson/node/BooleanNode;

    move-result-object p1

    return-object p1

    :pswitch_3
    const/4 p1, 0x1

    .line 297
    invoke-virtual {p3, p1}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->booleanNode(Z)Lcom/amazon/org/codehaus/jackson/node/BooleanNode;

    move-result-object p1

    return-object p1

    .line 288
    :pswitch_4
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getNumberType()Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v0

    .line 289
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->numberNode(D)Lcom/amazon/org/codehaus/jackson/node/NumericNode;

    move-result-object p1

    return-object p1

    .line 291
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->numberNode(Ljava/math/BigDecimal;)Lcom/amazon/org/codehaus/jackson/node/NumericNode;

    move-result-object p1

    return-object p1

    .line 275
    :pswitch_5
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getNumberType()Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v0

    .line 276
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;->BIG_INTEGER:Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_BIG_INTEGER_FOR_INTS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 280
    :cond_2
    sget-object p2, Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;->INT:Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;

    if-ne v0, p2, :cond_3

    .line 281
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->numberNode(I)Lcom/amazon/org/codehaus/jackson/node/NumericNode;

    move-result-object p1

    return-object p1

    .line 283
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->numberNode(J)Lcom/amazon/org/codehaus/jackson/node/NumericNode;

    move-result-object p1

    return-object p1

    .line 278
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->numberNode(Ljava/math/BigInteger;)Lcom/amazon/org/codehaus/jackson/node/NumericNode;

    move-result-object p1

    return-object p1

    .line 258
    :pswitch_6
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_5

    .line 260
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->nullNode()Lcom/amazon/org/codehaus/jackson/node/NullNode;

    move-result-object p1

    return-object p1

    .line 262
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 263
    const-class v0, [B

    if-ne p2, v0, :cond_6

    .line 264
    check-cast p1, [B

    invoke-virtual {p3, p1}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->binaryNode([B)Lcom/amazon/org/codehaus/jackson/node/BinaryNode;

    move-result-object p1

    return-object p1

    .line 267
    :cond_6
    invoke-virtual {p3, p1}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->POJONode(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/node/POJONode;

    move-result-object p1

    return-object p1

    .line 253
    :pswitch_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeObject(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    return-object p1

    .line 271
    :pswitch_8
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/node/TextNode;

    move-result-object p1

    return-object p1

    .line 250
    :pswitch_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeArray(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/node/ArrayNode;

    move-result-object p1

    return-object p1

    .line 247
    :pswitch_a
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeObject(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected deserializeArray(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/node/ArrayNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 220
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->arrayNode()Lcom/amazon/org/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    .line 222
    :goto_0
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 235
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeAny(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/node/ArrayNode;->add(Lcom/amazon/org/codehaus/jackson/JsonNode;)V

    goto :goto_0

    :cond_0
    return-object v0

    .line 232
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/node/TextNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/node/ArrayNode;->add(Lcom/amazon/org/codehaus/jackson/JsonNode;)V

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeArray(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/node/ArrayNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/node/ArrayNode;->add(Lcom/amazon/org/codehaus/jackson/JsonNode;)V

    goto :goto_0

    .line 224
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeObject(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/node/ArrayNode;->add(Lcom/amazon/org/codehaus/jackson/JsonNode;)V

    goto :goto_0
.end method

.method protected deserializeObject(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/node/ObjectNode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 187
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->objectNode()Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 188
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 189
    sget-object v2, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_0

    .line 190
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 192
    :cond_0
    :goto_0
    sget-object v2, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_5

    .line 193
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 195
    sget-object v2, Lcom/amazon/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 206
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeAny(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/JsonNode;

    move-result-object v2

    goto :goto_1

    .line 203
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/node/TextNode;

    move-result-object v2

    goto :goto_1

    .line 200
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeArray(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/node/ArrayNode;

    move-result-object v2

    goto :goto_1

    .line 197
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeObject(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

    move-result-object v2

    .line 208
    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonNode;)Lcom/amazon/org/codehaus/jackson/JsonNode;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 210
    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/amazon/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->_handleDuplicateField(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/node/ObjectNode;Lcom/amazon/org/codehaus/jackson/JsonNode;Lcom/amazon/org/codehaus/jackson/JsonNode;)V

    .line 192
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public deserializeWithType(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 141
    invoke-virtual {p3, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromAny(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
