.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;
.source "ObjectArraySerializer.java"

# interfaces
.implements Lcom/amazon/whispersync/org/codehaus/jackson/map/ResolvableSerializer;


# annotations
.annotation runtime Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase<",
        "[",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/ResolvableSerializer;"
    }
.end annotation


# instance fields
.field protected _dynamicSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

.field protected _elementSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

.field protected final _staticTyping:Z


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 67
    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Z",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 73
    const-class v0, [Ljava/lang/Object;

    invoke-direct {p0, v0, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;-><init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)V

    .line 74
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    .line 75
    iput-boolean p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_staticTyping:Z

    .line 76
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->emptyMap()Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 77
    iput-object p5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    return-void
.end method


# virtual methods
.method protected final _findAndAddDynamic(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, p2, p3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->findAndAddSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object p2

    .line 275
    iget-object p3, p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, p3, :cond_0

    .line 276
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 278
    :cond_0
    iget-object p1, p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    return-object p1
.end method

.method protected final _findAndAddDynamic(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, p2, p3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->findAndAddSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object p2

    .line 261
    iget-object p3, p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, p3, :cond_0

    .line 262
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 264
    :cond_0
    iget-object p1, p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    return-object p1
.end method

.method public _withValueTypeSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ContainerSerializerBase<",
            "*>;"
        }
    .end annotation

    .line 83
    new-instance v6, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iget-boolean v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_staticTyping:Z

    iget-object v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V

    return-object v6
.end method

.method public getSchema(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    const-string v0, "array"

    const/4 v1, 0x1

    .line 220
    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 222
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    .line 223
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->isArrayType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    check-cast p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;

    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->getContentType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    .line 226
    const-class v1, Ljava/lang/Object;

    const-string v2, "items"

    if-ne p2, v1, :cond_0

    .line 227
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSchema;->getDefaultSchemaNode()Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    goto :goto_1

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, p2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p2

    .line 230
    instance-of v1, p2, Lcom/amazon/whispersync/org/codehaus/jackson/schema/SchemaAware;

    if-eqz v1, :cond_1

    check-cast p2, Lcom/amazon/whispersync/org/codehaus/jackson/schema/SchemaAware;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/schema/SchemaAware;->getSchema(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSchema;->getDefaultSchemaNode()Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    move-result-object p1

    .line 233
    :goto_0
    invoke-virtual {v0, v2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    :cond_2
    :goto_1
    return-object v0
.end method

.method public resolve(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 248
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_staticTyping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    :cond_0
    return-void
.end method

.method public bridge synthetic serializeContents(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 29
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->serializeContents([Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serializeContents([Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 90
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->serializeContentsUsing([Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V

    return-void

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;->_valueTypeSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;

    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->serializeTypedContents([Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 105
    :try_start_0
    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    :goto_0
    if-ge v1, v0, :cond_6

    .line 107
    aget-object v2, p1, v1

    if-nez v2, :cond_3

    .line 109
    invoke-virtual {p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_2

    .line 112
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 113
    invoke-virtual {v3, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v5

    if-nez v5, :cond_5

    .line 116
    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v5}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->hasGenericTypes()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 117
    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p3, v5, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->constructSpecializedType(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_findAndAddDynamic(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v5

    goto :goto_1

    .line 120
    :cond_4
    invoke-virtual {p0, v3, v4, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_findAndAddDynamic(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v5

    .line 123
    :cond_5
    :goto_1
    invoke-virtual {v5, v2, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void

    :catch_0
    move-exception p1

    .line 134
    :goto_3
    instance-of p2, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 135
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_3

    .line 137
    :cond_7
    instance-of p2, p1, Ljava/lang/Error;

    if-eqz p2, :cond_8

    .line 138
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 140
    :cond_8
    invoke-static {p1, v2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 126
    throw p1
.end method

.method public serializeContentsUsing([Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 148
    array-length v0, p1

    .line 149
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;->_valueTypeSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 155
    :try_start_0
    aget-object v3, p1, v2

    if-nez v3, :cond_0

    .line 157
    invoke-virtual {p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    .line 161
    invoke-virtual {p4, v3, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_1

    .line 163
    :cond_1
    invoke-virtual {p4, v3, p2, p3, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 170
    :goto_2
    instance-of p2, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 171
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_2

    .line 173
    :cond_2
    instance-of p2, p1, Ljava/lang/Error;

    if-eqz p2, :cond_3

    .line 174
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 176
    :cond_3
    invoke-static {p1, v3, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 167
    throw p1

    :cond_4
    return-void
.end method

.method public serializeTypedContents([Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 183
    array-length v0, p1

    .line 184
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;->_valueTypeSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 188
    :try_start_0
    iget-object v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    :goto_0
    if-ge v2, v0, :cond_2

    .line 190
    aget-object v3, p1, v2

    if-nez v3, :cond_0

    .line 192
    invoke-virtual {p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_1

    .line 195
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 196
    invoke-virtual {v4, v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v6

    if-nez v6, :cond_1

    .line 198
    invoke-virtual {p0, v4, v5, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;->_findAndAddDynamic(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v6

    .line 200
    :cond_1
    invoke-virtual {v6, v3, p2, p3, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 206
    :goto_2
    instance-of p2, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 207
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_2

    .line 209
    :cond_3
    instance-of p2, p1, Ljava/lang/Error;

    if-eqz p2, :cond_4

    .line 210
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 212
    :cond_4
    invoke-static {p1, v3, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 203
    throw p1
.end method
