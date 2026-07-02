.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;
.source "StdDeserializerProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider$WrappedDeserializer;
    }
.end annotation


# instance fields
.field protected final _cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected _factory:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

.field protected final _incompleteDeserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final _rootNames:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/RootNameLookup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;)V
    .locals 4

    .line 83
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_incompleteDeserializers:Ljava/util/HashMap;

    .line 84
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    .line 85
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/RootNameLookup;

    invoke-direct {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/RootNameLookup;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_rootNames:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/RootNameLookup;

    return-void
.end method


# virtual methods
.method protected _createAndCache2(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 310
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_createDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p3, :cond_0

    return-object v0

    .line 324
    :cond_0
    instance-of v1, p3, Lcom/amazon/whispersync/org/codehaus/jackson/map/ResolvableDeserializer;

    .line 325
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializer;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 328
    sget-object v3, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_ANNOTATIONS:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 329
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v3

    .line 331
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;->construct(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 332
    invoke-virtual {v3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findCachability(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 334
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_2
    if-eqz v1, :cond_3

    .line 351
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    move-object v0, p3

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ResolvableDeserializer;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_resolveDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/ResolvableDeserializer;)V

    .line 353
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v2, :cond_4

    .line 356
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object p3

    :catch_0
    move-exception p1

    .line 315
    new-instance p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected _createAndCacheValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_incompleteDeserializers:Ljava/util/HashMap;

    monitor-enter v0

    .line 276
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_findCachedDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 278
    monitor-exit v0

    return-object v1

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 283
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v2, :cond_1

    .line 285
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v2

    .line 290
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_createAndCache2(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    .line 293
    :try_start_2
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 294
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    :cond_2
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    if-nez v1, :cond_3

    .line 293
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 294
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    :cond_3
    throw p1

    :catchall_1
    move-exception p1

    .line 297
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method protected _createDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 369
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->isEnumType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->createEnumDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    return-object p1

    .line 372
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 373
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    check-cast p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->createArrayDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    return-object p1

    .line 377
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->isMapLikeType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    check-cast p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/MapLikeType;

    .line 379
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/MapLikeType;->isTrueMapType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    check-cast p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/MapType;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->createMapDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/MapType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    return-object p1

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->createMapLikeDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/MapLikeType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    return-object p1

    .line 386
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->isCollectionLikeType()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 387
    check-cast p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;

    .line 388
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;->isTrueCollectionType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 389
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    check-cast p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->createCollectionDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    return-object p1

    .line 392
    :cond_4
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->createCollectionLikeDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    return-object p1

    .line 398
    :cond_5
    const-class v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 399
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->createTreeDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    return-object p1

    .line 401
    :cond_6
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->createBeanDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    return-object p1
.end method

.method protected _findCachedDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    return-object p1

    .line 253
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method protected _handleUnknownKeyDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 430
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find a (Map) Key deserializer for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected _handleUnknownValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 420
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 421
    invoke-static {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ClassUtil;->isConcrete(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find a Value deserializer for abstract type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find a Value deserializer for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected _resolveDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/ResolvableDeserializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 407
    invoke-interface {p2, p1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ResolvableDeserializer;->resolve(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;)V

    return-void
.end method

.method public cachedDeserializersCount()I
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public findExpectedRootName(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_rootNames:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/RootNameLookup;

    invoke-virtual {v0, p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/RootNameLookup;->findRootName(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;)Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;

    move-result-object p1

    return-object p1
.end method

.method public findKeyDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->createKeyDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object v0

    .line 195
    instance-of v1, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ContextualKeyDeserializer;

    if-eqz v1, :cond_0

    .line 196
    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ContextualKeyDeserializer;

    invoke-interface {v0, p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ContextualKeyDeserializer;->createContextual(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 199
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_handleUnknownKeyDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public findTypedValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 180
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->findValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v1, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->findTypeDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 183
    new-instance p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider$WrappedDeserializer;

    invoke-direct {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider$WrappedDeserializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V

    return-object p2

    :cond_0
    return-object v0
.end method

.method public findValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_findCachedDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    instance-of p2, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ContextualDeserializer;

    if-eqz p2, :cond_0

    .line 153
    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ContextualDeserializer;

    invoke-interface {v0, p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ContextualDeserializer;->createContextual(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    :cond_0
    return-object v0

    .line 159
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_createAndCacheValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    if-nez v0, :cond_2

    .line 165
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_handleUnknownValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 168
    :cond_2
    instance-of p2, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ContextualDeserializer;

    if-eqz p2, :cond_3

    .line 169
    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ContextualDeserializer;

    invoke-interface {v0, p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ContextualDeserializer;->createContextual(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public flushCachedDeserializers()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public hasValueDeserializerFor(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Z
    .locals 2

    .line 214
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_findCachedDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 217
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_createAndCacheValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public mapAbstractType(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->mapAbstractType(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public withAbstractTypeResolver(Lcom/amazon/whispersync/org/codehaus/jackson/map/AbstractTypeResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->withAbstractTypeResolver(Lcom/amazon/whispersync/org/codehaus/jackson/map/AbstractTypeResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->withFactory(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;

    move-result-object p1

    return-object p1
.end method

.method public withAdditionalDeserializers(Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->withAdditionalDeserializers(Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->withFactory(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;

    move-result-object p1

    return-object p1
.end method

.method public withAdditionalKeyDeserializers(Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializers;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->withAdditionalKeyDeserializers(Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializers;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->withFactory(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;

    move-result-object p1

    return-object p1
.end method

.method public withDeserializerModifier(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerModifier;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->withDeserializerModifier(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerModifier;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->withFactory(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withFactory(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->withFactory(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;

    move-result-object p1

    return-object p1
.end method

.method public withFactory(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;
    .locals 3

    .line 116
    const-class v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;

    if-ne v0, v0, :cond_0

    .line 120
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;)V

    return-object v0

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeserializerProvider of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not override \'withFactory()\' method"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withValueInstantiators(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiators;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->withValueInstantiators(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiators;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;->withFactory(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;

    move-result-object p1

    return-object p1
.end method
