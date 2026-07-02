.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;
.source "StdContainerSerializers.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdContainerSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexedListSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase<",
        "Ljava/util/List<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 7
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

    .line 78
    const-class v1, Ljava/util/List;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;-><init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V

    return-void
.end method


# virtual methods
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
    new-instance v6, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iget-boolean v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_staticTyping:Z

    iget-object v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V

    return-object v6
.end method

.method public bridge synthetic serializeContents(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 71
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->serializeContents(Ljava/util/List;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serializeContents(Ljava/util/List;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
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

    .line 90
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->serializeContentsUsing(Ljava/util/List;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_valueTypeSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->serializeTypedContents(Ljava/util/List;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    return-void

    .line 98
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 104
    :try_start_0
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_dynamicSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    :goto_0
    if-ge v1, v0, :cond_6

    .line 106
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 108
    invoke-virtual {p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_2

    .line 110
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 111
    invoke-virtual {v2, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v5

    if-nez v5, :cond_5

    .line 114
    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v5}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->hasGenericTypes()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 115
    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p3, v5, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->constructSpecializedType(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v4

    invoke-virtual {p0, v2, v4, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_findAndAddDynamic(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    goto :goto_1

    .line 118
    :cond_4
    invoke-virtual {p0, v2, v4, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_findAndAddDynamic(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    :goto_1
    move-object v5, v2

    .line 120
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_dynamicSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 122
    :cond_5
    invoke-virtual {v5, v3, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 127
    invoke-virtual {p0, p3, p2, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;->wrapAndThrow(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    :cond_6
    return-void
.end method

.method public serializeContentsUsing(Ljava/util/List;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
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

    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_valueTypeSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 141
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 144
    :try_start_0
    invoke-virtual {p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 146
    invoke-virtual {p4, v3, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_2

    .line 148
    :cond_2
    invoke-virtual {p4, v3, p2, p3, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 152
    :goto_1
    invoke-virtual {p0, p3, v3, p1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;->wrapAndThrow(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public serializeTypedContents(Ljava/util/List;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
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

    .line 160
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 166
    :try_start_0
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_valueTypeSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;

    .line 167
    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_dynamicSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    :goto_0
    if-ge v1, v0, :cond_4

    .line 169
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 171
    invoke-virtual {p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_2

    .line 173
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 174
    invoke-virtual {v3, v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v6

    if-nez v6, :cond_3

    .line 177
    iget-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v6}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->hasGenericTypes()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 178
    iget-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p3, v6, v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->constructSpecializedType(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    invoke-virtual {p0, v3, v5, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_findAndAddDynamic(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v3

    goto :goto_1

    .line 181
    :cond_2
    invoke-virtual {p0, v3, v5, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_findAndAddDynamic(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v3

    :goto_1
    move-object v6, v3

    .line 183
    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_dynamicSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 185
    :cond_3
    invoke-virtual {v6, v4, p2, p3, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 190
    invoke-virtual {p0, p3, p2, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;->wrapAndThrow(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    :cond_4
    return-void
.end method
