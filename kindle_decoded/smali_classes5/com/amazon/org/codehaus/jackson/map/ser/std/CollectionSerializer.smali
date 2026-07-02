.class public Lcom/amazon/org/codehaus/jackson/map/ser/std/CollectionSerializer;
.super Lcom/amazon/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;
.source "CollectionSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/ser/std/AsArraySerializerBase<",
        "Ljava/util/Collection<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;ZLcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Z",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 29
    const-class v1, Ljava/util/Collection;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;ZLcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V

    return-void
.end method


# virtual methods
.method public _withValueTypeSerializer(Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)Lcom/amazon/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/ser/std/ContainerSerializerBase<",
            "*>;"
        }
    .end annotation

    .line 34
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/ser/std/CollectionSerializer;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-boolean v2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_staticTyping:Z

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_property:Lcom/amazon/org/codehaus/jackson/map/BeanProperty;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementSerializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/ser/std/CollectionSerializer;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;ZLcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V

    return-object v6
.end method

.method public bridge synthetic serializeContents(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 23
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/CollectionSerializer;->serializeContents(Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serializeContents(Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/JsonGenerator;",
            "Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementSerializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/CollectionSerializer;->serializeContentsUsing(Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V

    return-void

    .line 45
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_dynamicSerializers:Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 50
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_valueTypeSerializer:Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;

    const/4 v3, 0x0

    .line 55
    :cond_2
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 57
    invoke-virtual {p3, p2}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 60
    invoke-virtual {v1, v5}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v6

    if-nez v6, :cond_5

    .line 63
    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v6}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->hasGenericTypes()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 64
    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p3, v6, v5}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->constructSpecializedType(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    invoke-virtual {p0, v1, v5, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_findAndAddDynamic(Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    goto :goto_0

    .line 67
    :cond_4
    invoke-virtual {p0, v1, v5, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_findAndAddDynamic(Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    :goto_0
    move-object v6, v1

    .line 69
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_dynamicSerializers:Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    :cond_5
    if-nez v2, :cond_6

    .line 72
    invoke-virtual {v6, v4, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_1

    .line 74
    :cond_6
    invoke-virtual {v6, v4, p2, p3, v2}, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_2

    goto :goto_2

    :catch_0
    move-exception p2

    .line 81
    invoke-virtual {p0, p3, p2, p1, v3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;->wrapAndThrow(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    :goto_2
    return-void
.end method

.method public serializeContentsUsing(Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/JsonGenerator;",
            "Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 89
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_valueTypeSerializer:Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;

    const/4 v2, 0x0

    .line 94
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 97
    :try_start_0
    invoke-virtual {p3, p2}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 100
    invoke-virtual {p4, v3, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p4, v3, p2, p3, v1}, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 108
    :goto_1
    invoke-virtual {p0, p3, v3, p1, v2}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;->wrapAndThrow(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    .line 110
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    return-void
.end method
