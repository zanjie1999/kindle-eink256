.class final Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;
.source "JsonNodeDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArrayDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer<",
        "Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;",
        ">;"
    }
.end annotation


# static fields
.field protected static final _instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;->_instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 104
    const-class v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static getInstance()Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;
    .locals 1

    .line 107
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;->_instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;

    return-object v0
.end method


# virtual methods
.method public deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->getNodeFactory()Lcom/amazon/whispersync/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeArray(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/whispersync/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;

    move-result-object p1

    return-object p1

    .line 116
    :cond_0
    const-class p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;

    move-result-object p1

    return-object p1
.end method
