.class final Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;
.source "JsonNodeDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ObjectDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer<",
        "Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;",
        ">;"
    }
.end annotation


# static fields
.field protected static final _instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;->_instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 78
    const-class v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static getInstance()Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;
    .locals 1

    .line 81
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;->_instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;

    return-object v0
.end method


# virtual methods
.method public deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 87
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    .line 89
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->getNodeFactory()Lcom/amazon/whispersync/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeObject(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/whispersync/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    return-object p1

    .line 91
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 92
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->getNodeFactory()Lcom/amazon/whispersync/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeObject(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/whispersync/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    return-object p1

    .line 94
    :cond_1
    const-class p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

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

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    return-object p1
.end method
