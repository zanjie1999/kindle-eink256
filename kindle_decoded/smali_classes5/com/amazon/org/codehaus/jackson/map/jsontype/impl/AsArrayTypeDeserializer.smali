.class public Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;
.source "AsArrayTypeDeserializer.java"


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;)V

    return-void
.end method

.method private final _deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v0

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;->_locateTypeId(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_findDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 88
    invoke-virtual {v1, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v2, Lcom/amazon/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "expected closing END_ARRAY after type information and deserialized value"

    .line 91
    invoke-virtual {p2, p1, v2, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->wrongTokenException(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method protected final _locateTypeId(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    instance-of v1, v0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    if-eqz v1, :cond_0

    .line 106
    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;->idFromBaseType()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 109
    :cond_0
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need JSON Array to contain As.WRAPPER_ARRAY type information for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->baseTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->wrongTokenException(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 113
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_3

    .line 114
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    instance-of v1, v0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    if-eqz v1, :cond_2

    .line 116
    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;->idFromBaseType()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 119
    :cond_2
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need JSON String that contains type id (for subtype of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->baseTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->wrongTokenException(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 122
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p2

    .line 123
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object p2
.end method

.method public deserializeTypedFromAny(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;->_deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserializeTypedFromArray(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;->_deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserializeTypedFromObject(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;->_deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserializeTypedFromScalar(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;->_deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTypeInclusion()Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    return-object v0
.end method
