.class public Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;
.source "MapDeserializer.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/map/ResolvableDeserializer;


# annotations
.annotation runtime Lcom/amazon/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase<",
        "Ljava/util/Map<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;",
        "Lcom/amazon/org/codehaus/jackson/map/ResolvableDeserializer;"
    }
.end annotation


# instance fields
.field protected _delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _hasDefaultCreator:Z

.field protected _ignorableProperties:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final _keyDeserializer:Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;

.field protected final _mapType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

.field protected _propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

.field protected final _valueDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

.field protected final _valueTypeDeserializer:Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;


# direct methods
.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;)V
    .locals 1

    .line 145
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;-><init>(Ljava/lang/Class;)V

    .line 146
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_mapType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_mapType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 147
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_keyDeserializer:Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_keyDeserializer:Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;

    .line 148
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    .line 149
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    .line 150
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    .line 151
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    .line 152
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    .line 153
    iget-boolean v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_hasDefaultCreator:Z

    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_hasDefaultCreator:Z

    .line 155
    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;",
            "Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;",
            ")V"
        }
    .end annotation

    .line 123
    const-class v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;-><init>(Ljava/lang/Class;)V

    .line 124
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_mapType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 125
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_keyDeserializer:Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;

    .line 126
    iput-object p4, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    .line 127
    iput-object p5, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    .line 128
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    .line 129
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromObjectWith()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    new-instance p1, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    invoke-direct {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;-><init>(Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;)V

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    .line 134
    :goto_0
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateUsingDefault()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_hasDefaultCreator:Z

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Constructor;Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/reflect/Constructor<",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    const-class v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;-><init>(Ljava/lang/Class;)V

    .line 104
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_mapType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 105
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_keyDeserializer:Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;

    .line 106
    iput-object p4, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    .line 107
    iput-object p5, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    .line 109
    new-instance p3, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdValueInstantiator;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdValueInstantiator;-><init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;)V

    if-eqz p2, :cond_0

    .line 111
    new-instance v2, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-direct {v2, p2, p4, p4}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    .line 113
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->configureFromObjectSettings(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;[Lcom/amazon/org/codehaus/jackson/map/deser/impl/CreatorProperty;)V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 115
    :goto_0
    iput-boolean p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_hasDefaultCreator:Z

    .line 116
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    return-void
.end method


# virtual methods
.method public _deserializeUsingCreator(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    .line 336
    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->startBuilding(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;

    move-result-object v1

    .line 338
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v2

    .line 339
    sget-object v3, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_0

    .line 340
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v2

    .line 342
    :cond_0
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    .line 343
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    .line 344
    :goto_0
    sget-object v5, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    const/4 v6, 0x0

    if-ne v2, v5, :cond_6

    .line 345
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v5

    .line 347
    iget-object v7, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;

    if-eqz v7, :cond_1

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 348
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/amazon/org/codehaus/jackson/JsonParser;

    goto :goto_2

    .line 352
    :cond_1
    invoke-virtual {v0, v2}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 355
    invoke-virtual {v2, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v5

    .line 356
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getPropertyIndex()I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->assignParameter(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 357
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 360
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->build(Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_readAndBind(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 362
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_mapType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v6

    .line 371
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 372
    iget-object v7, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_keyDeserializer:Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;

    invoke-virtual {v7, v2, p2}, Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;->deserializeKey(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    .line 374
    sget-object v7, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v5, v7, :cond_3

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    .line 377
    invoke-virtual {v3, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    .line 379
    :cond_4
    invoke-virtual {v3, p1, p2, v4}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v6

    .line 381
    :goto_1
    invoke-virtual {v1, v2, v6}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->bufferMapProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 344
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 386
    :cond_6
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->build(Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 388
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_mapType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v6
.end method

.method protected final _readAndBind(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 297
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 298
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 299
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_keyDeserializer:Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;

    .line 302
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    .line 303
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    .line 304
    :goto_0
    sget-object v4, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_4

    .line 306
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-virtual {v1, v0, p2}, Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;->deserializeKey(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    .line 309
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v5

    .line 310
    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;

    if-eqz v6, :cond_1

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/amazon/org/codehaus/jackson/JsonParser;

    goto :goto_2

    .line 316
    :cond_1
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v5, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    .line 319
    invoke-virtual {v2, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 321
    :cond_3
    invoke-virtual {v2, p1, p2, v3}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v0

    .line 327
    :goto_1
    invoke-interface {p3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :goto_2
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_4
    return-void
.end method

.method public bridge synthetic deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 33
    check-cast p3, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_deserializeUsingCreator(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_1

    .line 234
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1

    .line 236
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_hasDefaultCreator:Z

    if-eqz v0, :cond_4

    .line 240
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 241
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_3

    .line 243
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    .line 244
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1

    .line 246
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->getMapClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDefault()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 249
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_readAndBind(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)V

    return-object v0

    .line 237
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->getMapClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "No default constructor found"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 259
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 260
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->getMapClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 263
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_readAndBind(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)V

    return-object p3
.end method

.method public deserializeWithType(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 273
    invoke-virtual {p3, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromObject(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContentDeserializer()Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    return-object v0
.end method

.method public getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_mapType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final getMapClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_mapType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValueType()Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_mapType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public resolve(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateUsingDelegate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->getDelegateType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->getDelegateCreator()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v1

    .line 190
    new-instance v2, Lcom/amazon/org/codehaus/jackson/map/BeanProperty$Std;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3, v1}, Lcom/amazon/org/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 192
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;->findDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    goto :goto_0

    .line 183
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid delegate-creator definition for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_mapType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": value instantiator ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

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

    .line 194
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    if-eqz v0, :cond_3

    .line 195
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->getCreatorProperties()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 196
    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->hasValueDeserializer()Z

    move-result v2

    if-nez v2, :cond_2

    .line 197
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    invoke-virtual {p0, p1, p2, v3, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;->findDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->assignDeserializer(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setIgnorableProperties([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 160
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;

    return-void
.end method

.method protected wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    :goto_0
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 402
    :cond_0
    instance-of v0, p1, Ljava/lang/Error;

    if-nez v0, :cond_2

    .line 406
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    if-nez v0, :cond_1

    .line 407
    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_1
    const/4 v0, 0x0

    .line 409
    invoke-static {p1, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 403
    :cond_2
    check-cast p1, Ljava/lang/Error;

    throw p1
.end method
