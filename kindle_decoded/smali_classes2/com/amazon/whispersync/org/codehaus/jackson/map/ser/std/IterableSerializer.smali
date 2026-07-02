.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/IterableSerializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;
.source "IterableSerializer.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase<",
        "Ljava/lang/Iterable<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)V
    .locals 7

    .line 21
    const-class v1, Ljava/lang/Iterable;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;-><init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V

    return-void
.end method


# virtual methods
.method public _withValueTypeSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ContainerSerializerBase<",
            "*>;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/IterableSerializer;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iget-boolean v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_staticTyping:Z

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/IterableSerializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)V

    return-object v0
.end method

.method public serializeContents(Ljava/lang/Iterable;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
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

    .line 33
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_valueTypeSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;

    const/4 v1, 0x0

    move-object v2, v1

    .line 40
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 42
    invoke-virtual {p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v1, :cond_2

    goto :goto_0

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/AsArraySerializerBase;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p3, v4, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    move-object v1, v4

    :goto_0
    if-nez v0, :cond_3

    .line 55
    invoke-virtual {v2, v3, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_1

    .line 57
    :cond_3
    invoke-virtual {v2, v3, p2, p3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V

    .line 60
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
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

    .line 15
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/IterableSerializer;->serializeContents(Ljava/lang/Iterable;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
