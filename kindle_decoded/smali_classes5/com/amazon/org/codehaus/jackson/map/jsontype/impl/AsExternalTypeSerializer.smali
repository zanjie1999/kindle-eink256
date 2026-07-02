.class public Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;
.super Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;
.source "AsExternalTypeSerializer.java"


# instance fields
.field protected final _typePropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;-><init>(Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)V

    .line 33
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_typePropertyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final _writePrefix(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 114
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    return-void
.end method

.method protected final _writePrefix(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V
    .locals 0
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

    .line 120
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    return-void
.end method

.method protected final _writeSuffix(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 126
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 127
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_typePropertyName:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_typePropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeInclusion()Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;
    .locals 1

    .line 40
    sget-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    return-object v0
.end method

.method public writeTypePrefixForArray(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_writePrefix(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    return-void
.end method

.method public writeTypePrefixForArray(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V
    .locals 0
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

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_writePrefix(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V

    return-void
.end method

.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_writePrefix(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    return-void
.end method

.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V
    .locals 0
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

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_writePrefix(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V

    return-void
.end method

.method public writeTypePrefixForScalar(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_writePrefix(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    return-void
.end method

.method public writeTypePrefixForScalar(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V
    .locals 0
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

    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_writePrefix(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V

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

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_writeSuffix(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

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

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_writeSuffix(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

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

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;->_writeSuffix(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    return-void
.end method
