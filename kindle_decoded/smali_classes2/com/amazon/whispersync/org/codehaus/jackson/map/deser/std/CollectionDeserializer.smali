.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;
.source "CollectionDeserializer.java"

# interfaces
.implements Lcom/amazon/whispersync/org/codehaus/jackson/map/ResolvableDeserializer;


# annotations
.annotation runtime Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase<",
        "Ljava/util/Collection<",
        "Ljava/lang/Object;",
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

.field protected final _valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _valueInstantiator:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

.field protected final _valueTypeDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;


# direct methods
.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;)V
    .locals 1

    .line 114
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;-><init>(Ljava/lang/Class;)V

    .line 115
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_collectionType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_collectionType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    .line 116
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    .line 117
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueTypeDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueTypeDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

    .line 118
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    .line 119
    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_delegateDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_delegateDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;",
            ")V"
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;-><init>(Ljava/lang/Class;)V

    .line 100
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_collectionType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    .line 101
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    .line 102
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueTypeDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

    .line 103
    iput-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Ljava/lang/reflect/Constructor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;",
            "Ljava/lang/reflect/Constructor<",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;-><init>(Ljava/lang/Class;)V

    .line 80
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_collectionType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    .line 81
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    .line 82
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueTypeDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

    .line 84
    new-instance p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)V

    if-eqz p4, :cond_0

    .line 86
    new-instance v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-direct {v2, p4, p3, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    .line 88
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->configureFromObjectSettings(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;[Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;)V

    .line 90
    :cond_0
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    return-void
.end method

.method private final handleNonArray(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 245
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    .line 249
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueTypeDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

    .line 250
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v2

    .line 254
    sget-object v3, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 257
    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object p1

    .line 261
    :goto_0
    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p3

    .line 246
    :cond_2
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_collectionType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

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

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/Collection;

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

    .line 30
    check-cast p3, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;

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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_delegateDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1

    .line 188
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 189
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 191
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->createFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDefault()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 203
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->handleNonArray(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    .line 209
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueTypeDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

    .line 211
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_3

    .line 214
    sget-object v3, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 217
    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 219
    :cond_2
    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v2

    .line 221
    :goto_1
    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

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

    .line 232
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

    .line 167
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    return-object v0
.end method

.method public getContentType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_collectionType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

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

    .line 138
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateUsingDelegate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->getDelegateType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->getDelegateCreator()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v1

    .line 148
    new-instance v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 150
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->findDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_delegateDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    goto :goto_0

    .line 141
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid delegate-creator definition for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_collectionType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": value instantiator ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") returned true for \'canCreateUsingDelegate()\', but null for \'getDelegateType()\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
