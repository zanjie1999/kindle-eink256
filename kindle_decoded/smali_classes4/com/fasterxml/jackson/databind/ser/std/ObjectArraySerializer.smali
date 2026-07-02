.class public Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;
.source "ObjectArraySerializer.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase<",
        "[",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;"
    }
.end annotation


# instance fields
.field protected _dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

.field protected _elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _elementType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _staticTyping:Z

.field protected final _valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 68
    const-class v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;-><init>(Ljava/lang/Class;)V

    .line 69
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 70
    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_staticTyping:Z

    .line 71
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 72
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->emptyForProperties()Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 73
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2, p5}, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Boolean;)V

    .line 92
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 93
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 94
    iget-boolean p2, p1, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_staticTyping:Z

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_staticTyping:Z

    .line 95
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 96
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-void
.end method


# virtual methods
.method protected final _findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->findAndAddSecondarySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object p2

    .line 407
    iget-object p3, p2, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    if-eq p1, p3, :cond_0

    .line 408
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 410
    :cond_0
    iget-object p1, p2, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object p1
.end method

.method protected final _findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->findAndAddSecondarySerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object p2

    .line 396
    iget-object p3, p2, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    if-eq p1, p3, :cond_0

    .line 397
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 399
    :cond_0
    iget-object p1, p2, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object p1
.end method

.method public _withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 101
    new-instance v6, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Boolean;)V

    return-object v6
.end method

.method public _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<",
            "*>;"
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_staticTyping:Z

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    return-object v0
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 139
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v2

    .line 140
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v3

    if-eqz v2, :cond_1

    .line 142
    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 144
    invoke-virtual {p1, v2, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 147
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    invoke-interface {p2, v3, v4}, Lcom/fasterxml/jackson/databind/BeanProperty;->findPropertyFormat(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 149
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getFeature(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;

    move-result-object v1

    :cond_2
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    if-nez v1, :cond_4

    .line 153
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 156
    :cond_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->findConvertingContentSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    if-nez v1, :cond_5

    .line 160
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v3, :cond_6

    .line 161
    iget-boolean v4, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_staticTyping:Z

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result v3

    if-nez v3, :cond_6

    .line 162
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v1, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    goto :goto_2

    .line 166
    :cond_5
    invoke-virtual {p1, v1, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    .line 168
    :cond_6
    :goto_2
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic hasSingleElement(Ljava/lang/Object;)Z
    .locals 0

    .line 26
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->hasSingleElement([Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasSingleElement([Ljava/lang/Object;)Z
    .locals 1

    .line 194
    array-length p1, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)Z
    .locals 0

    .line 26
    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;[Ljava/lang/Object;)Z
    .locals 0

    if-eqz p2, :cond_1

    .line 189
    array-length p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->serialize([Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public final serialize([Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 208
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->_unwrapSingle:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->_unwrapSingle:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_2

    .line 211
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->serializeContents([Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void

    .line 215
    :cond_2
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray(I)V

    .line 216
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->serializeContents([Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 217
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    return-void
.end method

.method public bridge synthetic serializeContents(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->serializeContents([Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serializeContents([Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->serializeContentsUsing([Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    return-void

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-eqz v1, :cond_2

    .line 232
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->serializeTypedContents([Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 238
    :try_start_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    :goto_0
    if-ge v1, v0, :cond_6

    .line 240
    aget-object v2, p1, v1

    if-nez v2, :cond_3

    .line 242
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_2

    .line 245
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 246
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v5

    if-nez v5, :cond_5

    .line 249
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 250
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p3, v5, v4}, Lcom/fasterxml/jackson/databind/DatabindContext;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p3}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v5

    goto :goto_1

    .line 253
    :cond_4
    invoke-virtual {p0, v3, v4, p3}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v5

    .line 256
    :cond_5
    :goto_1
    invoke-virtual {v5, v2, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
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

    .line 267
    :goto_3
    instance-of p2, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 268
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_3

    .line 270
    :cond_7
    instance-of p2, p1, Ljava/lang/Error;

    if-eqz p2, :cond_8

    .line 271
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 273
    :cond_8
    invoke-static {p1, v2, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 259
    throw p1
.end method

.method public serializeContentsUsing([Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    array-length v0, p1

    .line 281
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 287
    :try_start_0
    aget-object v3, p1, v2

    if-nez v3, :cond_0

    .line 289
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    .line 293
    invoke-virtual {p4, v3, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_1

    .line 295
    :cond_1
    invoke-virtual {p4, v3, p2, p3, v1}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 302
    :goto_2
    instance-of p2, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 303
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_2

    .line 305
    :cond_2
    instance-of p2, p1, Ljava/lang/Error;

    if-eqz p2, :cond_3

    .line 306
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 308
    :cond_3
    invoke-static {p1, v3, v2}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 299
    throw p1

    :cond_4
    return-void
.end method

.method public serializeTypedContents([Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    array-length v0, p1

    .line 315
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 319
    :try_start_0
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    :goto_0
    if-ge v2, v0, :cond_2

    .line 321
    aget-object v3, p1, v2

    if-nez v3, :cond_0

    .line 323
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_1

    .line 326
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 327
    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v6

    if-nez v6, :cond_1

    .line 329
    invoke-virtual {p0, v4, v5, p3}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v6

    .line 331
    :cond_1
    invoke-virtual {v6, v3, p2, p3, v1}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
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

    .line 337
    :goto_2
    instance-of p2, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 338
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_2

    .line 340
    :cond_3
    instance-of p2, p1, Ljava/lang/Error;

    if-eqz p2, :cond_4

    .line 341
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 343
    :cond_4
    invoke-static {p1, v3, v2}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 334
    throw p1
.end method

.method public withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->_unwrapSingle:Ljava/lang/Boolean;

    if-ne v0, p4, :cond_0

    return-object p0

    .line 116
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Boolean;)V

    return-object v0
.end method
