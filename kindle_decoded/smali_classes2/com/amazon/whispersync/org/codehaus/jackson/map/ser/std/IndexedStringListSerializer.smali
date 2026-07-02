.class public final Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/IndexedStringListSerializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StaticListSerializerBase;
.source "IndexedStringListSerializer.java"

# interfaces
.implements Lcom/amazon/whispersync/org/codehaus/jackson/map/ResolvableSerializer;


# annotations
.annotation runtime Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StaticListSerializerBase<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/ResolvableSerializer;"
    }
.end annotation


# instance fields
.field protected _serializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/IndexedStringListSerializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "*>;)V"
        }
    .end annotation

    .line 37
    const-class v0, Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StaticListSerializerBase;-><init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)V

    .line 38
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->_serializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    return-void
.end method

.method private final serializeContents(Ljava/util/List;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
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

    const/4 v0, 0x0

    .line 89
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 91
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 93
    invoke-virtual {p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_1

    .line 95
    :cond_0
    invoke-virtual {p2, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 99
    invoke-virtual {p0, p3, p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;->wrapAndThrow(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    :cond_1
    return-void
.end method

.method private final serializeUsingCustom(Ljava/util/List;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
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

    const/4 v0, 0x0

    .line 108
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 109
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->_serializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    :goto_0
    if-ge v0, v1, :cond_1

    .line 111
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 113
    invoke-virtual {p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_1

    .line 115
    :cond_0
    invoke-virtual {v2, v3, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 119
    invoke-virtual {p0, p3, p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;->wrapAndThrow(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected contentSchema()Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 2

    const-string v0, "string"

    const/4 v1, 0x1

    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->_serializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_0

    .line 50
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StaticListSerializerBase;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;->isDefaultSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->_serializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    :cond_0
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 24
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->serialize(Ljava/util/List;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/List;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
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

    .line 61
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 62
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->_serializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->serializeContents(Ljava/util/List;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->serializeUsingCustom(Ljava/util/List;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    .line 67
    :goto_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 24
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->serializeWithType(Ljava/util/List;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method

.method public serializeWithType(Ljava/util/List;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
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

    .line 75
    invoke-virtual {p4, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    .line 76
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->_serializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->serializeContents(Ljava/util/List;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->serializeUsingCustom(Ljava/util/List;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    .line 81
    :goto_0
    invoke-virtual {p4, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    return-void
.end method
