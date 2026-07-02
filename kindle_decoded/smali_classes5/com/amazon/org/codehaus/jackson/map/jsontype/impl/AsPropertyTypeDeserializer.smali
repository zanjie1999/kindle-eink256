.class public Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;
.source "AsPropertyTypeDeserializer.java"


# instance fields
.field protected final _typePropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;)V

    .line 39
    iput-object p5, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_typePropertyName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected _deserializeIfNatural(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 161
    const-class p2, Ljava/lang/Boolean;

    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 185
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 179
    :cond_1
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 180
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 174
    :cond_2
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/lang/Double;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 175
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 168
    :cond_3
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 169
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 163
    :cond_4
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 164
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected _deserializeTypedUsingDefaultImpl(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0, p2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_findDefaultImplDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 112
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeEndObject()V

    .line 113
    invoke-virtual {p3, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->asParser(Lcom/amazon/org/codehaus/jackson/JsonParser;)Lcom/amazon/org/codehaus/jackson/JsonParser;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 117
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 120
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_deserializeIfNatural(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    return-object p3

    .line 125
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p3

    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne p3, v0, :cond_3

    .line 126
    invoke-super {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;->deserializeTypedFromAny(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 128
    :cond_3
    sget-object p3, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "missing property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_typePropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' that is to contain type id  (for class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->baseTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, p3, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->wrongTokenException(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public deserializeTypedFromAny(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 143
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 144
    invoke-super {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;->deserializeTypedFromArray(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 146
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->deserializeTypedFromObject(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserializeTypedFromObject(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_0
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 70
    invoke-virtual {p0, p1, p2, v2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_deserializeTypedUsingDefaultImpl(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 71
    :cond_1
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_2

    .line 72
    invoke-virtual {p0, p1, p2, v2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_deserializeTypedUsingDefaultImpl(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    move-object v1, v2

    .line 77
    :goto_1
    sget-object v3, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v3, :cond_6

    .line 78
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 80
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_typePropertyName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 81
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p0, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_findDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    if-eqz v1, :cond_3

    .line 85
    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->asParser(Lcom/amazon/org/codehaus/jackson/JsonParser;)Lcom/amazon/org/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/amazon/org/codehaus/jackson/util/JsonParserSequence;->createFlattened(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/JsonParser;)Lcom/amazon/org/codehaus/jackson/util/JsonParserSequence;

    move-result-object p1

    .line 90
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 92
    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    if-nez v1, :cond_5

    .line 95
    new-instance v1, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

    invoke-direct {v1, v2}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;-><init>(Lcom/amazon/org/codehaus/jackson/ObjectCodec;)V

    .line 97
    :cond_5
    invoke-virtual {v1, v0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lcom/amazon/org/codehaus/jackson/JsonParser;)V

    .line 77
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 100
    :cond_6
    invoke-virtual {p0, p1, p2, v1}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_deserializeTypedUsingDefaultImpl(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_typePropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeInclusion()Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;
    .locals 1

    .line 44
    sget-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;->PROPERTY:Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    return-object v0
.end method
