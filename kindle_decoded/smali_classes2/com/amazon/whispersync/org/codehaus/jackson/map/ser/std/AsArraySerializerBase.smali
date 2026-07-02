.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;
.source "AsArraySerializerBase.java"

# interfaces
.implements Lcom/amazon/whispersync/org/codehaus/jackson/map/ResolvableSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ContainerSerializerBase<",
        "TT;>;",
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

.field protected final _property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

.field protected final _staticTyping:Z

.field protected final _valueTypeSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Z",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 64
    invoke-direct/range {v0 .. v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;-><init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Z",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;-><init>(Ljava/lang/Class;Z)V

    .line 72
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    if-nez p3, :cond_0

    if-eqz p2, :cond_1

    .line 74
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->isFinal()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_staticTyping:Z

    .line 75
    iput-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_valueTypeSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;

    .line 76
    iput-object p5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    .line 77
    iput-object p6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    .line 78
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->emptyMap()Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_dynamicSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

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

    .line 179
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, p2, p3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->findAndAddSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object p2

    .line 180
    iget-object p3, p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, p3, :cond_0

    .line 181
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_dynamicSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 183
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

    .line 165
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, p2, p3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->findAndAddSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object p2

    .line 167
    iget-object p3, p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, p3, :cond_0

    .line 168
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_dynamicSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 170
    :cond_0
    iget-object p1, p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    return-object p1
.end method

.method public getSchema(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "array"

    .line 112
    invoke-virtual {p0, v1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 115
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 116
    invoke-virtual {v3}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    if-nez v3, :cond_1

    .line 118
    instance-of v4, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_1

    .line 119
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    .line 120
    array-length v4, p2

    if-ne v4, v0, :cond_1

    const/4 v0, 0x0

    .line 121
    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :cond_1
    :goto_0
    if-nez v3, :cond_2

    .line 126
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    if-eqz p2, :cond_2

    move-object v3, p2

    :cond_2
    if-eqz v3, :cond_5

    .line 132
    invoke-virtual {v3}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/lang/Object;

    if-eq p2, v0, :cond_3

    .line 133
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p2

    .line 134
    instance-of v0, p2, Lcom/amazon/whispersync/org/codehaus/jackson/schema/SchemaAware;

    if-eqz v0, :cond_3

    .line 135
    check-cast p2, Lcom/amazon/whispersync/org/codehaus/jackson/schema/SchemaAware;

    invoke-interface {p2, p1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/schema/SchemaAware;->getSchema(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    .line 139
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSchema;->getDefaultSchemaNode()Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    move-result-object v2

    :cond_4
    const-string p1, "items"

    .line 141
    invoke-virtual {v1, p1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    :cond_5
    return-object v1
.end method

.method public resolve(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 154
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_staticTyping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    :cond_0
    return-void
.end method

.method public final serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 85
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 86
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->serializeContents(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    .line 87
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    return-void
.end method

.method protected abstract serializeContents(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public final serializeWithType(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 95
    invoke-virtual {p4, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->serializeContents(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    .line 97
    invoke-virtual {p4, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    return-void
.end method
