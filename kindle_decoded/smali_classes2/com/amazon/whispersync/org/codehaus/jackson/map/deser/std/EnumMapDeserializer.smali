.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/EnumMapDeserializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;
.source "EnumMapDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer<",
        "Ljava/util/EnumMap<",
        "**>;>;"
    }
.end annotation


# instance fields
.field protected final _enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected final _keyDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected final _valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;->getEnumClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/EnumDeserializer;

    invoke-direct {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/EnumDeserializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;)V

    invoke-direct {p0, v0, v1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/EnumMapDeserializer;-><init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 44
    const-class v0, Ljava/util/EnumMap;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 45
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/EnumMapDeserializer;->_enumClass:Ljava/lang/Class;

    .line 46
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/EnumMapDeserializer;->_keyDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    .line 47
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/EnumMapDeserializer;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    return-void
.end method

.method private constructMap()Ljava/util/EnumMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "**>;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/EnumMap;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/EnumMapDeserializer;->_enumClass:Ljava/lang/Class;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/EnumMapDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/EnumMap;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/EnumMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;",
            ")",
            "Ljava/util/EnumMap<",
            "**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 58
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/EnumMapDeserializer;->constructMap()Ljava/util/EnumMap;

    move-result-object v0

    .line 60
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_2

    .line 61
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/EnumMapDeserializer;->_keyDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v2

    .line 70
    sget-object v3, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/EnumMapDeserializer;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v2, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    .line 72
    :goto_1
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/EnumMapDeserializer;->_enumClass:Ljava/lang/Class;

    const-string/jumbo v0, "value not one of declared Enum instance names"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    :cond_2
    return-object v0

    .line 56
    :cond_3
    const-class p1, Ljava/util/EnumMap;

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public deserializeWithType(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 83
    invoke-virtual {p3, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromObject(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
