.class public abstract Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;
.super Lcom/amazon/org/codehaus/jackson/map/DeserializerFactory;
.source "BasicDeserializerFactory.java"


# static fields
.field protected static final _arrayDeserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field static final _collectionFallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Collection;",
            ">;>;"
        }
    .end annotation
.end field

.field static final _keyDeserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field static final _mapFallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Map;",
            ">;>;"
        }
    .end annotation
.end field

.field static final _simpleDeserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected optionalHandlers:Lcom/amazon/org/codehaus/jackson/map/ext/OptionalHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializers;->constructAll()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_simpleDeserializers:Ljava/util/HashMap;

    .line 53
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->constructAll()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_keyDeserializers:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    .line 63
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/SortedMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/TreeMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/TreeMap;

    const-string v2, "java.util.NavigableMap"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v0, "java.util.concurrent.ConcurrentNavigableMap"

    .line 74
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "java.util.concurrent.ConcurrentSkipListMap"

    .line 75
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 78
    sget-object v2, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :catch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    .line 92
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/SortedSet;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/TreeSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/LinkedList;

    const-string v2, "java.util.Deque"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/TreeSet;

    const-string v2, "java.util.NavigableSet"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->getAll()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_arrayDeserializers:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/DeserializerFactory;-><init>()V

    .line 118
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/ext/OptionalHandlerFactory;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->optionalHandlers:Lcom/amazon/org/codehaus/jackson/map/ext/OptionalHandlerFactory;

    return-void
.end method


# virtual methods
.method _constructDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 699
    instance-of v0, p4, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_1

    .line 700
    check-cast p4, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    .line 702
    instance-of p2, p4, Lcom/amazon/org/codehaus/jackson/map/ContextualDeserializer;

    if-eqz p2, :cond_0

    .line 703
    check-cast p4, Lcom/amazon/org/codehaus/jackson/map/ContextualDeserializer;

    invoke-interface {p4, p1, p3}, Lcom/amazon/org/codehaus/jackson/map/ContextualDeserializer;->createContextual(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p4

    :cond_0
    return-object p4

    .line 710
    :cond_1
    instance-of v0, p4, Ljava/lang/Class;

    if-eqz v0, :cond_4

    .line 713
    check-cast p4, Ljava/lang/Class;

    .line 714
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 717
    invoke-virtual {p1, p2, p4}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->deserializerInstance(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p2

    .line 719
    instance-of p4, p2, Lcom/amazon/org/codehaus/jackson/map/ContextualDeserializer;

    if-eqz p4, :cond_2

    .line 720
    check-cast p2, Lcom/amazon/org/codehaus/jackson/map/ContextualDeserializer;

    invoke-interface {p2, p1, p3}, Lcom/amazon/org/codehaus/jackson/map/ContextualDeserializer;->createContextual(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p2

    :cond_2
    return-object p2

    .line 715
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AnnotationIntrospector returned Class "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "; expected Class<JsonDeserializer>"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 711
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AnnotationIntrospector returned deserializer definition of type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "; expected type JsonDeserializer or Class<JsonDeserializer> instead"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract _findCustomArrayDeserializer(Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method protected abstract _findCustomCollectionDeserializer(Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method protected abstract _findCustomCollectionLikeDeserializer(Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method protected abstract _findCustomEnumDeserializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method protected abstract _findCustomMapDeserializer(Lcom/amazon/org/codehaus/jackson/map/type/MapType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/type/MapType;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method protected abstract _findCustomMapLikeDeserializer(Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method protected abstract _findCustomTreeNodeDeserializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/JsonNode;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method protected constructEnumResolver(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;)Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver<",
            "*>;"
        }
    .end annotation

    .line 890
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->READ_ENUMS_USING_TO_STRING:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;->constructUnsafeUsingToString(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;

    move-result-object p1

    return-object p1

    .line 893
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;->constructUnsafe(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;

    move-result-object p1

    return-object p1
.end method

.method public createArrayDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 198
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;->getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    if-nez v1, :cond_3

    .line 204
    sget-object v2, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_arrayDeserializers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v2, :cond_1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    .line 210
    invoke-virtual/range {v3 .. v9}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomArrayDeserializer(Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object v2

    .line 217
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 218
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Internal error: primitive type ("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ") passed, no array deserializer found"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 222
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    if-nez v2, :cond_4

    .line 225
    invoke-virtual {p0, p1, v0, p4}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object v2

    :cond_4
    move-object v9, v2

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, v9

    move-object v8, v1

    .line 228
    invoke-virtual/range {v2 .. v8}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomArrayDeserializer(Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    if-eqz v2, :cond_5

    return-object v2

    :cond_5
    if-nez v1, :cond_6

    .line 235
    invoke-virtual {p2, p1, v0, p4}, Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;->findValueDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 237
    :cond_6
    new-instance p1, Lcom/amazon/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;

    invoke-direct {p1, p3, v1, v9}, Lcom/amazon/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;)V

    return-object p1
.end method

.method public createCollectionDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v0, p3

    move-object/from16 v11, p4

    .line 246
    invoke-virtual {v8, v9, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->mapAbstractType(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;

    .line 248
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v12

    .line 249
    invoke-virtual {v9, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->introspectForCreation(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 251
    invoke-virtual {v13}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {v8, v9, v1, v11}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 256
    :cond_0
    invoke-virtual {v13}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v8, v9, v1, v0, v2}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->modifyTypeByAnnotation(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;

    .line 258
    invoke-virtual {v14}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v15

    .line 260
    invoke-virtual {v15}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    .line 263
    invoke-virtual {v15}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    if-nez v0, :cond_1

    .line 266
    invoke-virtual {v8, v9, v15, v11}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object v0

    :cond_1
    move-object v7, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v13

    move-object/from16 v5, p4

    move-object v6, v7

    move-object/from16 p3, v13

    move-object v13, v7

    move-object/from16 v7, v16

    .line 270
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomCollectionDeserializer(Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    if-nez v16, :cond_4

    .line 278
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumSetDeserializer;

    invoke-virtual {v15}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v8, v9, v10, v15, v11}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->createEnumDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumSetDeserializer;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)V

    return-object v0

    .line 284
    :cond_3
    invoke-virtual {v10, v9, v15, v11}, Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;->findValueDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v16

    :cond_4
    move-object/from16 v0, v16

    .line 296
    invoke-virtual {v14}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isInterface()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v14}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isAbstract()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    move-object/from16 v1, p3

    goto :goto_1

    .line 298
    :cond_6
    :goto_0
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-eqz v1, :cond_8

    .line 303
    invoke-virtual {v9, v14, v1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->constructSpecializedType(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;

    .line 305
    invoke-virtual {v9, v14}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->introspectForCreation(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;

    move-result-object v1

    check-cast v1, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 307
    :goto_1
    invoke-virtual {v8, v9, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v1

    .line 309
    invoke-virtual {v15}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_7

    .line 311
    new-instance v2, Lcom/amazon/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;

    invoke-direct {v2, v14, v0, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StringCollectionDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;)V

    return-object v2

    .line 313
    :cond_7
    new-instance v2, Lcom/amazon/org/codehaus/jackson/map/deser/std/CollectionDeserializer;

    invoke-direct {v2, v14, v0, v13, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/std/CollectionDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;)V

    return-object v2

    .line 300
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find a deserializer for non-concrete Collection type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCollectionLikeDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 323
    invoke-virtual {p0, p1, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->mapAbstractType(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    check-cast p3, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;

    .line 325
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 326
    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 328
    invoke-virtual {v5}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 333
    :cond_0
    invoke-virtual {v5}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->modifyTypeByAnnotation(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;

    .line 335
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    .line 337
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    .line 340
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    if-nez v0, :cond_1

    .line 343
    invoke-virtual {p0, p1, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object p3

    move-object v7, p3

    goto :goto_0

    :cond_1
    move-object v7, v0

    :goto_0
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    .line 345
    invoke-virtual/range {v1 .. v8}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomCollectionLikeDeserializer(Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    return-object p1
.end method

.method public createEnumDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 487
    invoke-virtual {p1, p3}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->introspectForCreation(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;

    move-result-object p2

    check-cast p2, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 488
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 492
    :cond_0
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p3

    .line 494
    invoke-virtual {p0, p3, p1, p2, p4}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomEnumDeserializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p4

    if-eqz p4, :cond_1

    return-object p4

    .line 500
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getFactoryMethods()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 501
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    invoke-virtual {p4}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 504
    invoke-virtual {p4}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object p2

    .line 506
    invoke-virtual {p2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 507
    invoke-static {p1, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer;->deserializerForCreator(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    return-object p1

    .line 510
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsuitable method ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ") decorated with @JsonCreator (for Enum type "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 514
    :cond_4
    new-instance p2, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer;

    invoke-virtual {p0, p3, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->constructEnumResolver(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;)Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;)V

    return-object p2
.end method

.method public createMapDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/type/MapType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/type/MapType;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v0, p3

    move-object/from16 v12, p4

    .line 355
    invoke-virtual {v9, v10, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->mapAbstractType(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    .line 357
    invoke-virtual {v10, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->introspectForCreation(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 359
    invoke-virtual {v13}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {v9, v10, v1, v12}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 364
    :cond_0
    invoke-virtual {v13}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v9, v10, v1, v0, v2}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->modifyTypeByAnnotation(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    .line 365
    invoke-virtual {v14}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->getKeyType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v15

    .line 366
    invoke-virtual {v14}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v8

    .line 370
    invoke-virtual {v8}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    .line 373
    invoke-virtual {v15}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;

    if-nez v0, :cond_1

    .line 375
    invoke-virtual {v11, v10, v15, v12}, Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;->findKeyDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object v0

    :cond_1
    move-object/from16 v17, v0

    .line 378
    invoke-virtual {v8}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    if-nez v0, :cond_2

    .line 381
    invoke-virtual {v9, v10, v8, v12}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object v0

    :cond_2
    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v13

    move-object/from16 v5, p4

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 p3, v13

    move-object v13, v8

    move-object/from16 v8, v16

    .line 385
    invoke-virtual/range {v0 .. v8}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomMapDeserializer(Lcom/amazon/org/codehaus/jackson/map/type/MapType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    if-nez v16, :cond_4

    .line 394
    invoke-virtual {v11, v10, v13, v12}, Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;->findValueDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v16

    :cond_4
    move-object/from16 v5, v16

    .line 399
    invoke-virtual {v14}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 400
    const-class v1, Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 401
    invoke-virtual {v15}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 402
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 405
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumMapDeserializer;

    invoke-virtual {v15}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v9, v10, v11, v15, v12}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->createEnumDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v5}, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumMapDeserializer;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)V

    return-object v0

    .line 403
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not construct EnumMap; generic (key) type not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_6
    invoke-virtual {v14}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isInterface()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v14}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isAbstract()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    move-object/from16 v13, p3

    :goto_0
    move-object v2, v14

    goto :goto_2

    .line 423
    :cond_8
    :goto_1
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_9

    .line 428
    invoke-virtual {v10, v14, v0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->constructSpecializedType(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    .line 430
    invoke-virtual {v10, v14}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->introspectForCreation(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    goto :goto_0

    .line 432
    :goto_2
    invoke-virtual {v9, v10, v13}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v3

    .line 433
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;

    move-object v1, v0

    move-object/from16 v4, v17

    move-object/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;)V

    .line 434
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    invoke-virtual {v13}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/std/MapDeserializer;->setIgnorableProperties([Ljava/lang/String;)V

    return-object v0

    .line 425
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find a deserializer for non-concrete Map type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createMapLikeDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 445
    invoke-virtual {p0, p1, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->mapAbstractType(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    check-cast p3, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    .line 446
    invoke-virtual {p1, p3}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->introspectForCreation(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 448
    invoke-virtual {v5}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 453
    :cond_0
    invoke-virtual {v5}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->modifyTypeByAnnotation(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    .line 454
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->getKeyType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    .line 455
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 459
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    .line 462
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;

    if-nez v1, :cond_1

    .line 464
    invoke-virtual {p2, p1, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;->findKeyDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object p3

    move-object v7, p3

    goto :goto_0

    :cond_1
    move-object v7, v1

    .line 467
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    if-nez p3, :cond_2

    .line 470
    invoke-virtual {p0, p1, v0, p4}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object p3

    :cond_2
    move-object v8, p3

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    .line 472
    invoke-virtual/range {v1 .. v9}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomMapLikeDeserializer(Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    return-object p1
.end method

.method public createTreeDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 523
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    .line 525
    invoke-virtual {p0, p2, p1, p4}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomTreeNodeDeserializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 529
    :cond_0
    invoke-static {p2}, Lcom/amazon/org/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->getDeserializer(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    return-object p1
.end method

.method protected findDeserializerFromAnnotation(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 687
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_constructDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findPropertyContentTypeDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 660
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 661
    invoke-virtual {v0, p1, p3, p2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyContentTypeResolver(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 662
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    if-nez v1, :cond_0

    .line 665
    invoke-virtual {p0, p1, p2, p4}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object p1

    return-object p1

    .line 668
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getSubtypeResolver()Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v2

    invoke-virtual {v2, p3, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object p3

    .line 669
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->buildTypeDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object p1

    return-object p1
.end method

.method public findPropertyTypeDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 632
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 633
    invoke-virtual {v0, p1, p3, p2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyTypeResolver(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 636
    invoke-virtual {p0, p1, p2, p4}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object p1

    return-object p1

    .line 639
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getSubtypeResolver()Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v2

    invoke-virtual {v2, p3, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object p3

    .line 640
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->buildTypeDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object p1

    return-object p1
.end method

.method protected findStdBeanDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 543
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 545
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_simpleDeserializers:Ljava/util/HashMap;

    new-instance v2, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v2, v0}, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v1, :cond_0

    return-object v1

    .line 551
    :cond_0
    const-class v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 553
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getTypeFactory()Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object p1

    .line 554
    const-class p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p3, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 556
    array-length p2, p1

    const/4 p3, 0x1

    if-ge p2, p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 559
    aget-object p1, p1, p2

    goto :goto_1

    .line 557
    :cond_2
    :goto_0
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->unknownType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    .line 562
    :goto_1
    new-instance p2, Lcom/amazon/org/codehaus/jackson/map/deser/std/AtomicReferenceDeserializer;

    invoke-direct {p2, p1, p4}, Lcom/amazon/org/codehaus/jackson/map/deser/std/AtomicReferenceDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)V

    return-object p2

    .line 566
    :cond_3
    iget-object p4, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->optionalHandlers:Lcom/amazon/org/codehaus/jackson/map/ext/OptionalHandlerFactory;

    invoke-virtual {p4, p3, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->findDeserializer(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public findTypeDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 578
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 579
    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 580
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 581
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 582
    invoke-virtual {v1, p1, v0, p2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findTypeResolver(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 589
    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getDefaultTyper(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v3

    .line 594
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getSubtypeResolver()Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v3

    invoke-virtual {v3, v0, p1, v1}, Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object v3

    .line 598
    :cond_1
    invoke-interface {v2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->getDefaultImpl()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 599
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->mapAbstractType(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 600
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v1, v4, :cond_2

    .line 601
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->defaultImpl(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v2

    .line 604
    :cond_2
    invoke-interface {v2, p1, p2, v3, p3}, Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->buildTypeDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object p1

    return-object p1
.end method

.method public abstract findValueInstantiator(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract mapAbstractType(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method protected modifyTypeByAnnotation(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ">(",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 750
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 751
    invoke-virtual {v0, p2, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 754
    :try_start_0
    invoke-virtual {p3, v1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 756
    new-instance p4, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to narrow type "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " with concrete-type annotation (value "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "), method \'"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\': "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, v2, p1}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw p4

    .line 761
    :cond_0
    :goto_0
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 762
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getKeyType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p4}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationKeyType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "): "

    if-eqz v1, :cond_2

    .line 765
    instance-of v4, p3, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    if-eqz v4, :cond_1

    .line 769
    :try_start_1
    move-object v4, p3

    check-cast v4, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    invoke-virtual {v4, v1}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->narrowKey(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 771
    new-instance p2, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to narrow key type "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " with key-type annotation ("

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, v2, p1}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw p2

    .line 766
    :cond_1
    new-instance p1, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Illegal key-type annotation: type "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not a Map(-like) type"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 774
    :cond_2
    :goto_1
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getKeyType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 779
    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 780
    invoke-virtual {v0, p2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findKeyDeserializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 781
    const-class v5, Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer$None;

    if-eq v4, v5, :cond_3

    .line 782
    invoke-virtual {p1, p2, v4}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->keyDeserializerInstance(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object v4

    .line 788
    invoke-virtual {v1, v4}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->setValueHandler(Ljava/lang/Object;)V

    .line 793
    :cond_3
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p4}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationContentType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 796
    :try_start_2
    invoke-virtual {p3, p4}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->narrowContentsBy(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 798
    new-instance p2, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to narrow content type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " with content-type annotation ("

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, v2, p1}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw p2

    .line 802
    :cond_4
    :goto_2
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p4

    .line 803
    invoke-virtual {p4}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_5

    .line 804
    invoke-virtual {v0, p2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findContentDeserializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object p4

    if-eqz p4, :cond_5

    .line 805
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer$None;

    if-eq p4, v0, :cond_5

    .line 806
    invoke-virtual {p1, p2, p4}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->deserializerInstance(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    .line 811
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->setValueHandler(Ljava/lang/Object;)V

    :cond_5
    return-object p3
.end method

.method protected resolveType(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 835
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 836
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object p2

    .line 837
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getKeyType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {p2, p4}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findKeyDeserializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 840
    const-class v2, Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer$None;

    if-eq v1, v2, :cond_0

    .line 841
    invoke-virtual {p1, p4, v1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->keyDeserializerInstance(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object v1

    .line 847
    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->setValueHandler(Ljava/lang/Object;)V

    .line 851
    :cond_0
    invoke-virtual {p2, p4}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findContentDeserializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 852
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer$None;

    if-eq p2, v0, :cond_1

    .line 853
    invoke-virtual {p1, p4, p2}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->deserializerInstance(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p2

    .line 858
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->setValueHandler(Ljava/lang/Object;)V

    .line 865
    :cond_1
    instance-of p2, p4, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;

    if-eqz p2, :cond_2

    .line 866
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findPropertyContentTypeDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 869
    invoke-virtual {p3, p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    .line 875
    :cond_2
    instance-of p2, p4, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;

    if-eqz p2, :cond_3

    .line 876
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findPropertyTypeDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 879
    invoke-virtual {p0, p1, p3, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    .line 882
    invoke-virtual {p3, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    :cond_4
    return-object p3
.end method

.method public abstract withConfig(Lcom/amazon/org/codehaus/jackson/map/DeserializerFactory$Config;)Lcom/amazon/org/codehaus/jackson/map/DeserializerFactory;
.end method
