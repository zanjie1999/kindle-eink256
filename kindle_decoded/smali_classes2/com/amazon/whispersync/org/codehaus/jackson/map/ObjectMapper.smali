.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
.super Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;
.source "ObjectMapper.java"

# interfaces
.implements Lcom/amazon/whispersync/org/codehaus/jackson/Versioned;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper$DefaultTypeResolverBuilder;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;
    }
.end annotation


# static fields
.field protected static final DEFAULT_ANNOTATION_INTROSPECTOR:Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

.field protected static final DEFAULT_INTROSPECTOR:Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector<",
            "+",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;",
            ">;"
        }
    .end annotation
.end field

.field private static final JSON_NODE_TYPE:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

.field protected static final STD_VISIBILITY_CHECKER:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field protected _deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

.field protected _deserializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;

.field protected _injectableValues:Lcom/amazon/whispersync/org/codehaus/jackson/map/InjectableValues;

.field protected final _jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

.field protected final _rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
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

.field protected _serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

.field protected _serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

.field protected _serializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

.field protected _subtypeResolver:Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;

.field protected _typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 183
    const-class v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    invoke-static {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/SimpleType;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->JSON_NODE_TYPE:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    .line 188
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicClassIntrospector;

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->DEFAULT_INTROSPECTOR:Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector;

    .line 191
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->DEFAULT_ANNOTATION_INTROSPECTOR:Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    .line 196
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->defaultInstance()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->STD_VISIBILITY_CHECKER:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 328
    invoke-direct {p0, v0, v0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;)V
    .locals 1

    const/4 v0, 0x0

    .line 338
    invoke-direct {p0, p1, v0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 358
    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;)V
    .locals 8

    .line 374
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;-><init>()V

    .line 305
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    const v2, 0x3f19999a    # 0.6f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez p1, :cond_0

    .line 382
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/MappingJsonFactory;

    invoke-direct {p1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MappingJsonFactory;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;)V

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    goto :goto_0

    .line 384
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    .line 385
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->getCodec()Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;

    move-result-object p1

    if-nez p1, :cond_1

    .line 386
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {p1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->setCodec(Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    .line 390
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    if-eqz p4, :cond_2

    goto :goto_1

    .line 391
    :cond_2
    new-instance p4, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->DEFAULT_INTROSPECTOR:Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector;

    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->DEFAULT_ANNOTATION_INTROSPECTOR:Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    sget-object v3, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->STD_VISIBILITY_CHECKER:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    const/4 v7, 0x0

    move-object v0, p4

    invoke-direct/range {v0 .. v7}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;Lcom/amazon/whispersync/org/codehaus/jackson/map/HandlerInstantiator;)V

    :goto_1
    iput-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    if-eqz p5, :cond_3

    goto :goto_2

    .line 394
    :cond_3
    new-instance p5, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->DEFAULT_INTROSPECTOR:Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector;

    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->DEFAULT_ANNOTATION_INTROSPECTOR:Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    sget-object v3, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->STD_VISIBILITY_CHECKER:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    const/4 v7, 0x0

    move-object v0, p5

    invoke-direct/range {v0 .. v7}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;Lcom/amazon/whispersync/org/codehaus/jackson/map/HandlerInstantiator;)V

    :goto_2
    iput-object p5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    if-nez p2, :cond_4

    .line 397
    new-instance p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;

    invoke-direct {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;-><init>()V

    :cond_4
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    if-nez p3, :cond_5

    .line 398
    new-instance p3, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;

    invoke-direct {p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializerProvider;-><init>()V

    :cond_5
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;

    .line 401
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 351
    invoke-direct {p0, v0, v0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;)V

    .line 352
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->setSerializerFactory(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

    return-void
.end method

.method private final _configAndWriteCloseable(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 2623
    move-object v0, p2

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 2625
    :try_start_0
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v2, p3, p1, p2, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2628
    :try_start_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2631
    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    :goto_0
    if-eqz v1, :cond_0

    .line 2638
    :try_start_3
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 2643
    :try_start_4
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2644
    :catch_1
    :cond_1
    throw p1
.end method

.method private final _writeCloseableValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 2656
    move-object v0, p2

    check-cast v0, Ljava/io/Closeable;

    .line 2658
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v1, p3, p1, p2, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)V

    .line 2659
    sget-object p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->FLUSH_AFTER_WRITE_VALUE:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2660
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    const/4 p1, 0x0

    .line 2664
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_1

    .line 2668
    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2669
    :catch_0
    :cond_1
    throw p1
.end method


# virtual methods
.method protected final _configAndWriteValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 2563
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    .line 2565
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->INDENT_OUTPUT:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2566
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->useDefaultPrettyPrinter()Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;

    .line 2569
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->CLOSE_CLOSEABLE:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p2, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    .line 2570
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_configAndWriteCloseable(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 2575
    :try_start_0
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v2, v0, p1, p2, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)V

    const/4 v1, 0x1

    .line 2577
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    if-nez v1, :cond_2

    .line 2584
    :try_start_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2585
    :catch_0
    :cond_2
    throw p2
.end method

.method protected final _configAndWriteValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 2593
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->withView(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p3

    .line 2594
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->INDENT_OUTPUT:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2595
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->useDefaultPrettyPrinter()Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;

    .line 2598
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->CLOSE_CLOSEABLE:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/io/Closeable;

    if-eqz v0, :cond_1

    .line 2599
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_configAndWriteCloseable(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 2604
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v1, p3, p1, p2, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)V

    const/4 v0, 0x1

    .line 2606
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    if-nez v0, :cond_2

    .line 2610
    :try_start_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2611
    :catch_0
    :cond_2
    throw p2
.end method

.method protected _convert(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2493
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;)V

    .line 2495
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->writeValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 2497
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer;->asParser()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    .line 2498
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->readValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p2

    .line 2499
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 2502
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected _createDeserializationContext(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;
    .locals 3

    .line 2839
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializationContext;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_injectableValues:Lcom/amazon/whispersync/org/codehaus/jackson/map/InjectableValues;

    invoke-direct {v0, p2, p1, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializationContext;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/InjectableValues;)V

    return-object v0
.end method

.method protected _defaultPrettyPrinter()Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;
    .locals 1

    .line 2553
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;-><init>()V

    return-object v0
.end method

.method protected _findRootDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
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

    .line 2824
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_0

    return-object v0

    .line 2829
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;->findTypedValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2833
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 2831
    :cond_1
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not find a deserializer for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected _initForReading(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 2767
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2770
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2775
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "No content to map to Object due to end of input"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected _readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 2718
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_initForReading(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 2719
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2722
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p0, v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_findRootDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    .line 2723
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 2726
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    .line 2727
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_createDeserializationContext(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;

    move-result-object v1

    .line 2728
    invoke-virtual {p0, v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_findRootDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    .line 2729
    sget-object v3, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;->UNWRAP_ROOT_VALUE:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {v0, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2730
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_unwrapAndDeserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    .line 2732
    :cond_2
    invoke-virtual {v2, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, 0x0

    .line 2736
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->clearCurrentToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2740
    :try_start_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p2

    :catchall_0
    move-exception p2

    :try_start_2
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2741
    :catch_1
    throw p2
.end method

.method protected _readValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 2691
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_initForReading(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 2692
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2694
    invoke-virtual {p0, p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_findRootDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 2695
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 2698
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_createDeserializationContext(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;

    move-result-object v0

    .line 2699
    invoke-virtual {p0, p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_findRootDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 2701
    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;->UNWRAP_ROOT_VALUE:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2702
    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_unwrapAndDeserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 2704
    :cond_2
    invoke-virtual {v1, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 2708
    :goto_1
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->clearCurrentToken()V

    return-object p1
.end method

.method protected _unwrapAndDeserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 2785
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;

    invoke-virtual {p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->getConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;->findExpectedRootName(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;

    move-result-object v0

    .line 2786
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const-string v3, "\'), but "

    if-ne v1, v2, :cond_3

    .line 2790
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_2

    .line 2794
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 2795
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2800
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    .line 2802
    invoke-virtual {p4, p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p2

    .line 2804
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object p3

    sget-object p4, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne p3, p4, :cond_0

    return-object p2

    .line 2805
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Current token not END_OBJECT (to match wrapper object with root name \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 2796
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Root name \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\' does not match expected (\'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "\') for type "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 2791
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Current token not FIELD_NAME (to contain expected root name \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 2787
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Current token not START_OBJECT (needed to unwrap root name \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public canDeserialize(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Z
    .locals 2

    .line 1801
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;->hasValueDeserializerFor(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Z

    move-result p1

    return p1
.end method

.method public canSerialize(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1785
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, v1, p1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->hasSerializerFor(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)Z

    move-result p1

    return p1
.end method

.method public configure(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;Z)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .line 1149
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->configure(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;Z)Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    return-object p0
.end method

.method public configure(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;Z)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .line 1133
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->configure(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;Z)Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    return-object p0
.end method

.method public configure(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;Z)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .line 1117
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->set(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;Z)V

    return-object p0
.end method

.method public configure(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;Z)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .line 1103
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->set(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;Z)V

    return-object p0
.end method

.method public constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 989
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public convertValue(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2482
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_convert(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convertValue(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2475
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_convert(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2468
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_convert(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public copyDeserializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_subtypeResolver:Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->createUnshared(Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    iget v1, v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->passSerializationFeatures(I)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public copySerializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_subtypeResolver:Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->createUnshared(Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createArrayNode()Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->createArrayNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public createArrayNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;
    .locals 1

    .line 1703
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->getNodeFactory()Lcom/amazon/whispersync/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/JsonNodeFactory;->arrayNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createObjectNode()Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->createObjectNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public createObjectNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;
    .locals 1

    .line 1689
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->getNodeFactory()Lcom/amazon/whispersync/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/JsonNodeFactory;->objectNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public defaultPrettyPrintingWriter()Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2295
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->writerWithDefaultPrettyPrinter()Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public varargs disable([Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .line 1171
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->without([Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    return-object p0
.end method

.method public varargs disable([Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .line 1193
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->without([Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    return-object p0
.end method

.method public disableDefaultTyping()Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 1

    const/4 v0, 0x0

    .line 906
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->setDefaultTyping(Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method public varargs enable([Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .line 1160
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->with([Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    return-object p0
.end method

.method public varargs enable([Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .line 1182
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->with([Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    return-object p0
.end method

.method public enableDefaultTyping()Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .line 849
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;->OBJECT_AND_NON_CONCRETE:Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->enableDefaultTyping(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method public enableDefaultTyping(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .line 859
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->enableDefaultTyping(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$As;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

    move-result-object p1

    return-object p1
.end method

.method public enableDefaultTyping(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$As;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 2

    .line 872
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper$DefaultTypeResolverBuilder;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper$DefaultTypeResolverBuilder;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;)V

    .line 874
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->CLASS:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->init(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object p1

    .line 875
    invoke-interface {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->inclusion(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$As;)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object p1

    .line 876
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->setDefaultTyping(Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

    move-result-object p1

    return-object p1
.end method

.method public enableDefaultTypingAsProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 2

    .line 891
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper$DefaultTypeResolverBuilder;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper$DefaultTypeResolverBuilder;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;)V

    .line 893
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->CLASS:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->init(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object p1

    .line 894
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$As;->PROPERTY:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->inclusion(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$As;)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object p1

    .line 895
    invoke-interface {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->typeProperty(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object p1

    .line 896
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->setDefaultTyping(Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

    move-result-object p1

    return-object p1
.end method

.method public filteredWriter(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/FilterProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2303
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->writer(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/FilterProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public generateJsonSchema(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSchema;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 2522
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->generateJsonSchema(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSchema;

    move-result-object p1

    return-object p1
.end method

.method public generateJsonSchema(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSchema;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSchema;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 2536
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->generateJsonSchema(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSchema;

    move-result-object p1

    return-object p1
.end method

.method public getDeserializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    return-object v0
.end method

.method public getDeserializerProvider()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;

    return-object v0
.end method

.method public getJsonFactory()Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;
    .locals 1

    .line 1046
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    return-object v0
.end method

.method public getNodeFactory()Lcom/amazon/whispersync/org/codehaus/jackson/node/JsonNodeFactory;
    .locals 1

    .line 1258
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->getNodeFactory()Lcom/amazon/whispersync/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    return-object v0
.end method

.method public getSerializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    return-object v0
.end method

.method public getSerializerProvider()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    return-object v0
.end method

.method public getSubtypeResolver()Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_subtypeResolver:Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    if-nez v0, :cond_0

    .line 785
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_subtypeResolver:Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_subtypeResolver:Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    return-object v0
.end method

.method public getTypeFactory()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    return-object v0
.end method

.method public getVisibilityChecker()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;"
        }
    .end annotation

    .line 728
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->getDefaultVisibilityChecker()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 1

    .line 1242
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result p1

    return p1
.end method

.method public isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;)Z
    .locals 1

    .line 1230
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result p1

    return p1
.end method

.method public isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z
    .locals 1

    .line 1218
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result p1

    return p1
.end method

.method public isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z
    .locals 1

    .line 1206
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result p1

    return p1
.end method

.method public prettyPrintingWriter(Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2287
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->writer(Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public readTree(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1336
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    .line 1337
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1339
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1344
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->JSON_NODE_TYPE:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v0, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    if-nez p1, :cond_1

    .line 1345
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->getNodeFactory()Lcom/amazon/whispersync/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/JsonNodeFactory;->nullNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public readTree(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1488
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->JSON_NODE_TYPE:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    if-nez p1, :cond_0

    .line 1489
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    :cond_0
    return-object p1
.end method

.method public readTree(Ljava/io/File;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1574
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/File;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->JSON_NODE_TYPE:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    if-nez p1, :cond_0

    .line 1575
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    :cond_0
    return-object p1
.end method

.method public readTree(Ljava/io/InputStream;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1507
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->JSON_NODE_TYPE:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    if-nez p1, :cond_0

    .line 1508
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    :cond_0
    return-object p1
.end method

.method public readTree(Ljava/io/Reader;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1526
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->JSON_NODE_TYPE:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    if-nez p1, :cond_0

    .line 1527
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    :cond_0
    return-object p1
.end method

.method public readTree(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1542
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->JSON_NODE_TYPE:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    if-nez p1, :cond_0

    .line 1543
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    :cond_0
    return-object p1
.end method

.method public readTree(Ljava/net/URL;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1590
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/net/URL;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->JSON_NODE_TYPE:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    if-nez p1, :cond_0

    .line 1591
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    :cond_0
    return-object p1
.end method

.method public readTree([B)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1558
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser([B)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->JSON_NODE_TYPE:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    if-nez p1, :cond_0

    .line 1559
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    :cond_0
    return-object p1
.end method

.method public readValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 2031
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->treeAsTokens(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 2015
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->treeAsTokens(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1999
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->treeAsTokens(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1315
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1467
    invoke-virtual {p0, p3, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1301
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1445
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p3, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1286
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1422
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p3, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/io/File;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1831
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/File;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/io/File;Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1824
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/File;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1817
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/File;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/io/InputStream;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1923
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/io/InputStream;Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1916
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1909
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/io/Reader;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1900
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/io/Reader;Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1893
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1886
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1877
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1870
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1863
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/net/URL;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1854
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/net/URL;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/net/URL;Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1847
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/net/URL;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/net/URL;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1840
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/net/URL;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue([BIILcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1981
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser([BII)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue([BIILcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1963
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser([BII)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {p2, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue([BIILjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1945
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser([BII)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {p2, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue([BLcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1973
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser([B)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue([BLcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1955
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser([B)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1935
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser([B)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValues(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/MappingIterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MappingIterator<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1359
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    .line 1360
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_createDeserializationContext(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;

    move-result-object v4

    .line 1361
    invoke-virtual {p0, v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_findRootDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v5

    .line 1363
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/MappingIterator;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MappingIterator;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;ZLjava/lang/Object;)V

    return-object v0
.end method

.method public readValues(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/whispersync/org/codehaus/jackson/map/MappingIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MappingIterator<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1388
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->readValues(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/MappingIterator;

    move-result-object p1

    return-object p1
.end method

.method public readValues(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/MappingIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MappingIterator<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1376
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->readValues(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/MappingIterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readValues(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->readValues(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/MappingIterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readValues(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->readValues(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/whispersync/org/codehaus/jackson/map/MappingIterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readValues(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->readValues(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/MappingIterator;

    move-result-object p1

    return-object p1
.end method

.method public reader()Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;
    .locals 2

    .line 2329
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;)V

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_injectableValues:Lcom/amazon/whispersync/org/codehaus/jackson/map/InjectableValues;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;->withInjectableValues(Lcom/amazon/whispersync/org/codehaus/jackson/map/InjectableValues;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public reader(Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;
    .locals 8

    .line 2407
    new-instance v7, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v2

    iget-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_injectableValues:Lcom/amazon/whispersync/org/codehaus/jackson/map/InjectableValues;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;Lcom/amazon/whispersync/org/codehaus/jackson/map/InjectableValues;)V

    return-object v7
.end method

.method public reader(Lcom/amazon/whispersync/org/codehaus/jackson/map/InjectableValues;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;
    .locals 8

    .line 2420
    new-instance v7, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;Lcom/amazon/whispersync/org/codehaus/jackson/map/InjectableValues;)V

    return-object v7
.end method

.method public reader(Lcom/amazon/whispersync/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;
    .locals 2

    .line 2394
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;)V

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;->withNodeFactory(Lcom/amazon/whispersync/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public reader(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;
    .locals 8

    .line 2360
    new-instance v7, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v2

    iget-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_injectableValues:Lcom/amazon/whispersync/org/codehaus/jackson/map/InjectableValues;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;Lcom/amazon/whispersync/org/codehaus/jackson/map/InjectableValues;)V

    return-object v7
.end method

.method public reader(Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;"
        }
    .end annotation

    .line 2383
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->reader(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public reader(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;"
        }
    .end annotation

    .line 2372
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->reader(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public readerForUpdating(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;
    .locals 9

    .line 2347
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    .line 2348
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v4

    iget-object v8, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_injectableValues:Lcom/amazon/whispersync/org/codehaus/jackson/map/InjectableValues;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;Lcom/amazon/whispersync/org/codehaus/jackson/map/InjectableValues;)V

    return-object v0
.end method

.method public registerModule(Lcom/amazon/whispersync/org/codehaus/jackson/map/Module;)V
    .locals 1

    .line 442
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/Module;->getModuleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 446
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/Module;->version()Lcom/amazon/whispersync/org/codehaus/jackson/Version;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper$1;

    invoke-direct {v0, p0, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper$1;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;)V

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/Module;->setupModule(Lcom/amazon/whispersync/org/codehaus/jackson/map/Module$SetupContext;)V

    return-void

    .line 448
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Module without defined version"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 444
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Module without defined name"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs registerSubtypes([Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;)V
    .locals 1

    .line 948
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->getSubtypeResolver()Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;->registerSubtypes([Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;)V

    return-void
.end method

.method public varargs registerSubtypes([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 934
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->getSubtypeResolver()Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;->registerSubtypes([Ljava/lang/Class;)V

    return-void
.end method

.method public schemaBasedReader(Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2443
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->reader(Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public schemaBasedWriter(Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2311
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->writer(Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public setAnnotationIntrospector(Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->withAnnotationIntrospector(Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    .line 807
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->withAnnotationIntrospector(Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    return-object p0
.end method

.method public setDateFormat(Ljava/text/DateFormat;)V
    .locals 1

    .line 1062
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->withDateFormat(Ljava/text/DateFormat;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    .line 1063
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->withDateFormat(Ljava/text/DateFormat;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    return-void
.end method

.method public setDefaultTyping(Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;"
        }
    .end annotation

    .line 919
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->withTypeResolverBuilder(Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    .line 920
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->withTypeResolverBuilder(Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    return-object p0
.end method

.method public setDeserializationConfig(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 0

    .line 663
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    return-object p0
.end method

.method public setDeserializerProvider(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;

    return-object p0
.end method

.method public setFilters(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/FilterProvider;)V
    .locals 1

    .line 1029
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->withFilters(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/FilterProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    return-void
.end method

.method public setHandlerInstantiator(Lcom/amazon/whispersync/org/codehaus/jackson/map/HandlerInstantiator;)V
    .locals 1

    .line 1075
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->withHandlerInstantiator(Lcom/amazon/whispersync/org/codehaus/jackson/map/HandlerInstantiator;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    .line 1076
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->withHandlerInstantiator(Lcom/amazon/whispersync/org/codehaus/jackson/map/HandlerInstantiator;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    return-void
.end method

.method public setInjectableValues(Lcom/amazon/whispersync/org/codehaus/jackson/map/InjectableValues;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 0

    .line 1083
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_injectableValues:Lcom/amazon/whispersync/org/codehaus/jackson/map/InjectableValues;

    return-object p0
.end method

.method public setNodeFactory(Lcom/amazon/whispersync/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->withNodeFactory(Lcom/amazon/whispersync/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    return-object p0
.end method

.method public setPropertyNamingStrategy(Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->withPropertyNamingStrategy(Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    .line 818
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->withPropertyNamingStrategy(Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    return-object p0
.end method

.method public setSerializationConfig(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    return-object p0
.end method

.method public setSerializationInclusion(Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->withSerializationInclusion(Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    return-object p0
.end method

.method public setSerializerFactory(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    return-object p0
.end method

.method public setSerializerProvider(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    return-object p0
.end method

.method public setSubtypeResolver(Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;)V
    .locals 0

    .line 796
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_subtypeResolver:Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    return-void
.end method

.method public setTypeFactory(Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .line 975
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    .line 976
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->withTypeFactory(Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    .line 977
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->withTypeFactory(Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    return-object p0
.end method

.method public setVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->withVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    .line 774
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->withVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    return-object p0
.end method

.method public setVisibilityChecker(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;)V"
        }
    .end annotation

    .line 741
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->withVisibilityChecker(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    .line 742
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->withVisibilityChecker(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    return-void
.end method

.method public treeAsTokens(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;
    .locals 1

    .line 1717
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/TreeTraversingParser;

    invoke-direct {v0, p1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/TreeTraversingParser;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;)V

    return-object v0
.end method

.method public treeToValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1733
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->treeAsTokens(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->readValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public typedWriter(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2263
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->writerWithType(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public typedWriter(Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2271
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->writerWithType(Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public typedWriter(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2255
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->writerWithType(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public updatingReader(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2435
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->readerForUpdating(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public valueToTree(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1754
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;)V

    .line 1757
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->writeValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 1758
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer;->asParser()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    .line 1759
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->readTree(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 1760
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 1762
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public version()Lcom/amazon/whispersync/org/codehaus/jackson/Version;
    .locals 1

    .line 418
    const-class v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

    invoke-static {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method

.method public viewWriter(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2279
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->writerWithView(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public withModule(Lcom/amazon/whispersync/org/codehaus/jackson/map/Module;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 0

    .line 580
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->registerModule(Lcom/amazon/whispersync/org/codehaus/jackson/map/Module;)V

    return-object p0
.end method

.method public writeTree(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1649
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    .line 1650
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v1, v0, p1, p2, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)V

    .line 1651
    sget-object p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->FLUSH_AFTER_WRITE_VALUE:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1652
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->flush()V

    :cond_0
    return-void
.end method

.method public writeTree(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1666
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, p3, p1, p2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)V

    .line 1667
    sget-object p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->FLUSH_AFTER_WRITE_VALUE:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1668
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->flush()V

    :cond_0
    return-void
.end method

.method public writeValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1609
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    .line 1610
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->CLOSE_CLOSEABLE:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p2, Ljava/io/Closeable;

    if-eqz v1, :cond_0

    .line 1611
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_writeCloseableValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V

    goto :goto_0

    .line 1613
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v1, v0, p1, p2, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)V

    .line 1614
    sget-object p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->FLUSH_AFTER_WRITE_VALUE:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1615
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->flush()V

    :cond_1
    :goto_0
    return-void
.end method

.method public writeValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1631
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->CLOSE_CLOSEABLE:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 1632
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_writeCloseableValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V

    goto :goto_0

    .line 1634
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, p3, p1, p2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)V

    .line 1635
    sget-object p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->FLUSH_AFTER_WRITE_VALUE:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1636
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->flush()V

    :cond_1
    :goto_0
    return-void
.end method

.method public writeValue(Ljava/io/File;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 2048
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/amazon/whispersync/org/codehaus/jackson/JsonEncoding;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/File;Lcom/amazon/whispersync/org/codehaus/jackson/JsonEncoding;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_configAndWriteValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    return-void
.end method

.method public writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 2065
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/amazon/whispersync/org/codehaus/jackson/JsonEncoding;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lcom/amazon/whispersync/org/codehaus/jackson/JsonEncoding;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_configAndWriteValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    return-void
.end method

.method public writeValue(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 2081
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_configAndWriteValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    return-void
.end method

.method public writeValueAsBytes(Ljava/lang/Object;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 2113
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->_getBufferRecycler()Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;)V

    .line 2114
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/amazon/whispersync/org/codehaus/jackson/JsonEncoding;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lcom/amazon/whispersync/org/codehaus/jackson/JsonEncoding;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_configAndWriteValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 2115
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object p1

    .line 2116
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->release()V

    return-object p1
.end method

.method public writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 2096
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/io/SegmentedStringWriter;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->_getBufferRecycler()Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/SegmentedStringWriter;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;)V

    .line 2097
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_configAndWriteValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 2098
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/io/SegmentedStringWriter;->getAndClear()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writer()Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 2

    .line 2134
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V

    return-object v0
.end method

.method public writer(Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 2

    .line 2241
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;)V

    return-object v0
.end method

.method public writer(Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 3

    if-nez p1, :cond_0

    .line 2204
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->NULL_PRETTY_PRINTER:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    .line 2206
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;)V

    return-object v0
.end method

.method public writer(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/FilterProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 2

    .line 2227
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->withFilters(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/FilterProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V

    return-object v0
.end method

.method public writer(Ljava/text/DateFormat;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 2

    .line 2145
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->withDateFormat(Ljava/text/DateFormat;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V

    return-object v0
.end method

.method public writerWithDefaultPrettyPrinter()Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 4

    .line 2216
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_defaultPrettyPrinter()Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;)V

    return-object v0
.end method

.method public writerWithType(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 3

    .line 2180
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;)V

    return-object v0
.end method

.method public writerWithType(Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 2191
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    .line 2192
    :goto_0
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;)V

    return-object v1
.end method

.method public writerWithType(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 2168
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    .line 2169
    :goto_0
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;)V

    return-object v1
.end method

.method public writerWithView(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    .line 2156
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->withView(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V

    return-object v0
.end method
