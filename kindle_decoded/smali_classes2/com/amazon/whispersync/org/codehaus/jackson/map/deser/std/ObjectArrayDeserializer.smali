.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;
.source "ObjectArrayDeserializer.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final _arrayType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

.field protected final _elementClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected final _elementDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _elementTypeDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

.field protected final _untyped:Z


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;",
            ")V"
        }
    .end annotation

    .line 52
    const-class v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;-><init>(Ljava/lang/Class;)V

    .line 53
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_arrayType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    .line 54
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->getContentType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementClass:Ljava/lang/Class;

    .line 55
    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_untyped:Z

    .line 56
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    .line 57
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementTypeDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

    return-void
.end method

.method private final handleNonArray(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 160
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    .line 169
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_1

    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->deserializeFromBase64(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 177
    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_arrayType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 179
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 182
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementTypeDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

    if-nez v0, :cond_4

    .line 185
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 187
    :cond_4
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v2

    .line 192
    :goto_0
    iget-boolean p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_untyped:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_5

    new-array p1, p2, [Ljava/lang/Object;

    goto :goto_1

    .line 195
    :cond_5
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementClass:Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :goto_1
    const/4 p2, 0x0

    .line 197
    aput-object v2, p1, p2

    return-object p1
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 87
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->handleNonArray(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 91
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->leaseObjectBuffer()Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ObjectBuffer;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ObjectBuffer;->resetAndStart()[Ljava/lang/Object;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementTypeDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 97
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eq v5, v6, :cond_4

    .line 101
    sget-object v6, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    .line 104
    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v5, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 106
    :cond_2
    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v5, p1, p2, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v5

    .line 108
    :goto_1
    array-length v6, v1

    if-lt v4, v6, :cond_3

    .line 109
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ObjectBuffer;->appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x0

    :cond_3
    add-int/lit8 v6, v4, 0x1

    .line 112
    aput-object v5, v1, v4

    move v4, v6

    goto :goto_0

    .line 117
    :cond_4
    iget-boolean p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_untyped:Z

    if-eqz p1, :cond_5

    .line 118
    invoke-virtual {v0, v1, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ObjectBuffer;->completeAndClearBuffer([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 120
    :cond_5
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementClass:Ljava/lang/Class;

    invoke-virtual {v0, v1, v4, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ObjectBuffer;->completeAndClearBuffer([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 122
    :goto_2
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->returnObjectBuffer(Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ObjectBuffer;)V

    return-object p1
.end method

.method protected deserializeFromBase64(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Byte;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 147
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->getBase64Variant()Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getBinaryValue(Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;)[B

    move-result-object p1

    .line 149
    array-length p2, p1

    new-array p2, p2, [Ljava/lang/Byte;

    .line 150
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 151
    aget-byte v2, p1, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public bridge synthetic deserializeWithType(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->deserializeWithType(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserializeWithType(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 134
    invoke-virtual {p3, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromArray(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    return-object p1
.end method

.method public getContentDeserializer()Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    return-object v0
.end method

.method public getContentType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;->_arrayType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method
