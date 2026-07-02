.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeSerializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;
.source "AsArrayTypeSerializer.java"


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)V

    return-void
.end method


# virtual methods
.method public getTypeInclusion()Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$As;
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    return-object v0
.end method

.method public writeTypePrefixForArray(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 52
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 53
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    return-void
.end method

.method public writeTypePrefixForArray(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 62
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 63
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v0, p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    return-void
.end method

.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 33
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 34
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    return-void
.end method

.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 43
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 44
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v0, p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    return-void
.end method

.method public writeTypePrefixForScalar(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 72
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 73
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeTypePrefixForScalar(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 82
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 83
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v0, p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeTypeSuffixForArray(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 99
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    .line 100
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    return-void
.end method

.method public writeTypeSuffixForObject(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 90
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 91
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    return-void
.end method

.method public writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 108
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    return-void
.end method
