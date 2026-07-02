.class public Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;
.source "AsArrayTypeSerializer.java"


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;

    move-result-object p1

    return-object p1
.end method

.method public forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    :goto_0
    return-object v0
.end method

.method public getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .locals 1

    .line 27
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object v0
.end method

.method public writeCustomTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteTypeId()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_1

    .line 175
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeTypeId(Ljava/lang/Object;)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 179
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 181
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    return-void
.end method

.method public writeCustomTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteTypeId()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_1

    .line 162
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeTypeId(Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 166
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 168
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    return-void
.end method

.method public writeCustomTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteTypeId()Z

    move-result p3

    if-nez p3, :cond_0

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_0
    return-void
.end method

.method public writeCustomTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteTypeId()Z

    move-result p3

    if-nez p3, :cond_0

    .line 199
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_0
    return-void
.end method

.method public writeTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteTypeId()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeTypeId(Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 74
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 76
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    return-void
.end method

.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteTypeId()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeTypeId(Ljava/lang/Object;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 45
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 47
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    return-void
.end method

.method public writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteTypeId()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeTypeId(Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 103
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteTypeId()Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeTypeId(Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 117
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public writeTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 139
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteTypeId()Z

    move-result p1

    if-nez p1, :cond_0

    .line 140
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    :cond_0
    return-void
.end method

.method public writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 130
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteTypeId()Z

    move-result p1

    if-nez p1, :cond_0

    .line 131
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    :cond_0
    return-void
.end method

.method public writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteTypeId()Z

    move-result p1

    if-nez p1, :cond_0

    .line 148
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    :cond_0
    return-void
.end method
