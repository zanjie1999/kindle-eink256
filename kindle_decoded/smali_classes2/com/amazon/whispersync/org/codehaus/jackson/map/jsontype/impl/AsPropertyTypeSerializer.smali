.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeSerializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeSerializer;
.source "AsPropertyTypeSerializer.java"


# instance fields
.field protected final _typePropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeSerializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)V

    .line 30
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeSerializer;->_typePropertyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeSerializer;->_typePropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeInclusion()Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$As;
    .locals 1

    .line 37
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$As;->PROPERTY:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    return-object v0
.end method

.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 43
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 44
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeSerializer;->_typePropertyName:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V
    .locals 2
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

    .line 51
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 52
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeSerializer;->_typePropertyName:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v1, p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 64
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    return-void
.end method
