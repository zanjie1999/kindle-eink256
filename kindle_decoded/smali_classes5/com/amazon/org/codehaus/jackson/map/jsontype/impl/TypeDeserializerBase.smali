.class public abstract Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;
.super Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;
.source "TypeDeserializerBase.java"


# instance fields
.field protected final _baseType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

.field protected final _defaultImpl:Lcom/amazon/org/codehaus/jackson/type/JavaType;

.field protected _defaultImplDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _deserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final _idResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;

.field protected final _property:Lcom/amazon/org/codehaus/jackson/map/BeanProperty;


# direct methods
.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;)V

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 58
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    .line 59
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_property:Lcom/amazon/org/codehaus/jackson/map/BeanProperty;

    .line 60
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_deserializers:Ljava/util/HashMap;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1, p4}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->forcedNarrowBy(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    :goto_0
    return-void
.end method


# virtual methods
.method protected final _findDefaultImplDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
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

    .line 143
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 146
    :cond_0
    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_defaultImplDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    if-nez v1, :cond_1

    .line 148
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->getDeserializerProvider()Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->getConfig()Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_property:Lcom/amazon/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {v1, p1, v2, v3}, Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;->findValueDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_defaultImplDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_defaultImplDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 152
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final _findDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
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

    .line 110
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_deserializers:Ljava/util/HashMap;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_deserializers:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    if-nez v1, :cond_3

    .line 113
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v1, p2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;->typeFromId(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    if-nez v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_findDefaultImplDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    :goto_0
    move-object v1, p1

    goto :goto_1

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p1, v1, p2}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->unknownTypeException(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 130
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 132
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->getDeserializerProvider()Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->getConfig()Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_property:Lcom/amazon/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {v2, p1, v1, v3}, Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;->findValueDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    goto :goto_0

    .line 134
    :goto_1
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_deserializers:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public baseTypeName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultImpl()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeIdResolver()Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    return-object v0
.end method

.method public abstract getTypeInclusion()Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; base-type:"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; id-resolver: "

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
