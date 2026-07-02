.class public Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;
.source "JsonNodeDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;,
        Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer<",
        "Lcom/amazon/org/codehaus/jackson/JsonNode;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;-><init>()V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->instance:Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/org/codehaus/jackson/JsonNode;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static getDeserializer(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .line 31
    const-class v0, Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

    if-ne p0, v0, :cond_0

    .line 32
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;->getInstance()Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;

    move-result-object p0

    return-object p0

    .line 34
    :cond_0
    const-class v0, Lcom/amazon/org/codehaus/jackson/node/ArrayNode;

    if-ne p0, v0, :cond_1

    .line 35
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;->getInstance()Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;

    move-result-object p0

    return-object p0

    .line 38
    :cond_1
    sget-object p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->instance:Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;

    return-object p0
.end method


# virtual methods
.method public deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Lcom/amazon/org/codehaus/jackson/JsonNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 62
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->getNodeFactory()Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->deserializeAny(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/JsonNode;

    move-result-object p1

    return-object p1

    .line 60
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->getNodeFactory()Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->deserializeArray(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/node/ArrayNode;

    move-result-object p1

    return-object p1

    .line 58
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->getNodeFactory()Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->deserializeObject(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Lcom/amazon/org/codehaus/jackson/JsonNode;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic deserializeAny(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/JsonNode;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeAny(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/JsonNode;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic deserializeArray(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/node/ArrayNode;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeArray(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/node/ArrayNode;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic deserializeObject(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/node/ObjectNode;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeObject(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic deserializeWithType(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeWithType(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
