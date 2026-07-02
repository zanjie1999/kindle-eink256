.class public Lcom/amazon/org/codehaus/jackson/map/deser/JsonNodeDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;
.source "JsonNodeDeserializer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final instance:Lcom/amazon/org/codehaus/jackson/map/deser/JsonNodeDeserializer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/deser/JsonNodeDeserializer;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/JsonNodeDeserializer;-><init>()V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/deser/JsonNodeDeserializer;->instance:Lcom/amazon/org/codehaus/jackson/map/deser/JsonNodeDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected final deserializeAny(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Lcom/amazon/org/codehaus/jackson/JsonNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->getNodeFactory()Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->deserializeAny(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/JsonNode;

    move-result-object p1

    return-object p1
.end method

.method protected final deserializeArray(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Lcom/amazon/org/codehaus/jackson/node/ArrayNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->getNodeFactory()Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->deserializeArray(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/node/ArrayNode;

    move-result-object p1

    return-object p1
.end method

.method protected final deserializeObject(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Lcom/amazon/org/codehaus/jackson/node/ObjectNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 31
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->getNodeFactory()Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->deserializeObject(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    return-object p1
.end method
