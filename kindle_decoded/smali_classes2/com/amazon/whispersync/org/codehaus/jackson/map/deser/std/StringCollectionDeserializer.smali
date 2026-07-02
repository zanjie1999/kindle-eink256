.class public final Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;
.source "StringCollectionDeserializer.java"

# interfaces
.implements Lcom/amazon/whispersync/org/codehaus/jackson/map/ResolvableDeserializer;


# annotations
.annotation runtime Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase<",
        "Ljava/util/Collection<",
        "Ljava/lang/String;",
        ">;>;",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/ResolvableDeserializer;"
    }
.end annotation


# instance fields
.field protected final _collectionType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

.field protected _delegateDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _isDefaultDeserializer:Z

.field protected final _valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final _valueInstantiator:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;


# direct methods
.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;)V
    .locals 1

    .line 80
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;-><init>(Ljava/lang/Class;)V

    .line 81
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_collectionType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_collectionType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    .line 82
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    .line 83
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_valueInstantiator:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_valueInstantiator:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    .line 84
    iget-boolean p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_isDefaultDeserializer:Z

    iput-boolean p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_isDefaultDeserializer:Z

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;-><init>(Ljava/lang/Class;)V

    .line 66
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_collectionType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    .line 67
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    .line 68
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_valueInstantiator:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    .line 69
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->isDefaultSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_isDefaultDeserializer:Z

    return-void
.end method

.method private deserializeUsingCustom(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    .line 177
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_1

    .line 180
    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 183
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 185
    :goto_1
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method private final handleNonArray(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 209
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    .line 214
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 218
    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 221
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 223
    :goto_0
    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p3

    .line 210
    :cond_2
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_collectionType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
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
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 18
    check-cast p3, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_delegateDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_valueInstantiator:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_valueInstantiator:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDefault()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 146
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 155
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->handleNonArray(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 159
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_isDefaultDeserializer:Z

    if-nez v0, :cond_1

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->deserializeUsingCustom(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 164
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object p2

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eq p2, v0, :cond_3

    .line 165
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object p3
.end method

.method public deserializeWithType(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 196
    invoke-virtual {p3, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromArray(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

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

    .line 127
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    return-object v0
.end method

.method public getContentType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_collectionType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_valueInstantiator:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->getDelegateCreator()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_valueInstantiator:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->getDelegateType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 107
    new-instance v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, v3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 109
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->findDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;->_delegateDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    :cond_0
    return-void
.end method
