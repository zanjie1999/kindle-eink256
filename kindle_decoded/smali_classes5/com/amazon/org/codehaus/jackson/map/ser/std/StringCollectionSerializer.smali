.class public Lcom/amazon/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;
.super Lcom/amazon/org/codehaus/jackson/map/ser/std/StaticListSerializerBase;
.source "StringCollectionSerializer.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/map/ResolvableSerializer;


# annotations
.annotation runtime Lcom/amazon/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/ser/std/StaticListSerializerBase<",
        "Ljava/util/Collection<",
        "Ljava/lang/String;",
        ">;>;",
        "Lcom/amazon/org/codehaus/jackson/map/ResolvableSerializer;"
    }
.end annotation


# instance fields
.field protected _serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;-><init>(Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;)V"
        }
    .end annotation

    .line 38
    const-class v0, Ljava/util/Collection;

    invoke-direct {p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StaticListSerializerBase;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)V

    .line 39
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->_serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    return-void
.end method

.method private final serializeContents(Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
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

    .line 88
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->_serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->serializeUsingCustom(Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 93
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 96
    :try_start_0
    invoke-virtual {p3, p2}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {p2, v2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 102
    invoke-virtual {p0, p3, v2, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;->wrapAndThrow(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private serializeUsingCustom(Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
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

    .line 110
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->_serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    .line 112
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 115
    :try_start_0
    invoke-virtual {p3, p2}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v0, v2, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    .line 120
    invoke-virtual {p0, p3, v2, p1, v3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;->wrapAndThrow(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected contentSchema()Lcom/amazon/org/codehaus/jackson/JsonNode;
    .locals 2

    const-string/jumbo v0, "string"

    const/4 v1, 0x1

    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->_serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_0

    .line 51
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/StaticListSerializerBase;->_property:Lcom/amazon/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;->isDefaultSerializer(Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->_serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    :cond_0
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 24
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->serialize(Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
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

    .line 62
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 63
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->_serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->serializeContents(Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->serializeUsingCustom(Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    .line 68
    :goto_0
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 24
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->serializeWithType(Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method

.method public serializeWithType(Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/JsonGenerator;",
            "Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 76
    invoke-virtual {p4, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    .line 77
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->_serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->serializeContents(Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;->serializeUsingCustom(Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    .line 82
    :goto_0
    invoke-virtual {p4, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    return-void
.end method
