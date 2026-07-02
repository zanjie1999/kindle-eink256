.class public Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsWrapperTypeSerializer;
.super Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;
.source "AsWrapperTypeSerializer.java"


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;-><init>(Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)V

    return-void
.end method


# virtual methods
.method public getTypeInclusion()Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;->WRAPPER_OBJECT:Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    return-object v0
.end method

.method public writeTypePrefixForArray(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 59
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 61
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    return-void
.end method

.method public writeTypePrefixForArray(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/amazon/org/codehaus/jackson/JsonGenerator;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 70
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 72
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v0, p1, p3}, Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    return-void
.end method

.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 38
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 40
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    return-void
.end method

.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/amazon/org/codehaus/jackson/JsonGenerator;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 49
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 51
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v0, p1, p3}, Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    return-void
.end method

.method public writeTypePrefixForScalar(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 80
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 81
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    return-void
.end method

.method public writeTypePrefixForScalar(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/amazon/org/codehaus/jackson/JsonGenerator;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 90
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 91
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v0, p1, p3}, Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    return-void
.end method

.method public writeTypeSuffixForArray(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 109
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    .line 111
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    return-void
.end method

.method public writeTypeSuffixForObject(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 99
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 101
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    return-void
.end method

.method public writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 119
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    return-void
.end method
