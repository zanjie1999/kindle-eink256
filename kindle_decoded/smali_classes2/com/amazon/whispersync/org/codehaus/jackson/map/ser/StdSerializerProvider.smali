.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;
.source "StdSerializerProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;
    }
.end annotation


# static fields
.field static final CACHE_UNKNOWN_MAPPINGS:Z = false

.field public static final DEFAULT_KEY_SERIALIZER:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_NULL_KEY_SERIALIZER:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_UNKNOWN_SERIALIZER:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected _dateFormat:Ljava/text/DateFormat;

.field protected _keySerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _knownSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

.field protected _nullKeySerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected _nullValueSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _rootNames:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/RootNameLookup;

.field protected final _serializerCache:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;

.field protected final _serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

.field protected _unknownTypeSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/FailingSerializer;

    const-string v1, "Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/FailingSerializer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->DEFAULT_NULL_KEY_SERIALIZER:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    .line 61
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdKeySerializer;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdKeySerializer;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->DEFAULT_KEY_SERIALIZER:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    .line 63
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/UnknownSerializer;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/UnknownSerializer;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->DEFAULT_UNKNOWN_SERIALIZER:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V

    .line 97
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->DEFAULT_UNKNOWN_SERIALIZER:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_unknownTypeSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    .line 110
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/NullSerializer;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/NullSerializer;

    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_nullValueSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    .line 119
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->DEFAULT_NULL_KEY_SERIALIZER:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_nullKeySerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    .line 154
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    .line 155
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;

    invoke-direct {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;-><init>()V

    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;

    .line 157
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_knownSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 158
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/RootNameLookup;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/RootNameLookup;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_rootNames:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/RootNameLookup;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)V
    .locals 1

    .line 170
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V

    .line 97
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->DEFAULT_UNKNOWN_SERIALIZER:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_unknownTypeSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    .line 110
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/NullSerializer;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/NullSerializer;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_nullValueSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    .line 119
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->DEFAULT_NULL_KEY_SERIALIZER:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_nullKeySerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    if-eqz p1, :cond_0

    .line 174
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    .line 176
    iget-object p1, p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;

    .line 177
    iget-object p3, p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_unknownTypeSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_unknownTypeSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    .line 178
    iget-object p3, p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_keySerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_keySerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    .line 179
    iget-object p3, p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_nullValueSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_nullValueSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    .line 180
    iget-object p3, p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_nullKeySerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_nullKeySerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    .line 181
    iget-object p2, p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_rootNames:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/RootNameLookup;

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_rootNames:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/RootNameLookup;

    .line 186
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;->getReadOnlyLookupMap()Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_knownSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 172
    throw p1
.end method


# virtual methods
.method protected _createAndCacheUntypedSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 758
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_createUntypedSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    .line 767
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;

    invoke-virtual {v0, p1, p2, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;->addAndResolveNonTypedSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    :cond_0
    return-object p2

    :catch_0
    move-exception p1

    .line 763
    new-instance p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected _createAndCacheUntypedSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 735
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_createUntypedSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    .line 744
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;

    invoke-virtual {v0, p1, p2, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;->addAndResolveNonTypedSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    :cond_0
    return-object p2

    :catch_0
    move-exception p1

    .line 740
    new-instance p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected _createUntypedSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 782
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, v1, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;->createSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1
.end method

.method protected _findExplicitUntypedSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_knownSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->untypedValueSerializer(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;->untypedValueSerializer(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 712
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_createAndCacheUntypedSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected _handleContextualResolvable(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 793
    instance-of v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ContextualSerializer;

    if-nez v0, :cond_0

    return-object p1

    .line 796
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ContextualSerializer;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-interface {v0, v1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ContextualSerializer;->createContextual(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p2

    if-eq p2, p1, :cond_2

    .line 799
    instance-of p1, p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ResolvableSerializer;

    if-eqz p1, :cond_1

    .line 800
    move-object p1, p2

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ResolvableSerializer;

    invoke-interface {p1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ResolvableSerializer;->resolve(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    :cond_1
    move-object p1, p2

    :cond_2
    return-object p1
.end method

.method protected _reportIncompatibleRootType(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 680
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ClassUtil;->wrapperType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 683
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 687
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incompatible types: declared root type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") vs "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected _serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 596
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->getNullValueSerializer()Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    .line 599
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 601
    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 603
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->WRAP_ROOT_VALUE:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 606
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_rootNames:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/RootNameLookup;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v2, v3, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/RootNameLookup;->findRootName(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;)Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;)V

    .line 610
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v0, p2, p1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    if-eqz v1, :cond_2

    .line 612
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeEndObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 621
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 623
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[no message for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 625
    :cond_3
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    invoke-direct {v0, p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 618
    throw p1
.end method

.method protected _serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->getNullValueSerializer()Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p3

    const/4 v0, 0x0

    goto :goto_0

    .line 646
    :cond_0
    invoke-virtual {p3}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 647
    invoke-virtual {p0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_reportIncompatibleRootType(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)V

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 650
    invoke-virtual {p0, p3, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->findTypedValueSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 652
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->WRAP_ROOT_VALUE:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 654
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 655
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_rootNames:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/RootNameLookup;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v2, p3, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/RootNameLookup;->findRootName(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;)Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;)V

    :cond_2
    move-object p3, v0

    move v0, v1

    .line 659
    :goto_0
    :try_start_0
    invoke-virtual {p3, p2, p1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    if-eqz v0, :cond_3

    .line 661
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeEndObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 666
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    .line 668
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[no message for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 670
    :cond_4
    new-instance p3, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    invoke-direct {p3, p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p1

    .line 664
    throw p1
.end method

.method public cachedSerializersCount()I
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;->size()I

    move-result v0

    return v0
.end method

.method protected createInstance(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;
    .locals 1

    .line 195
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;

    invoke-direct {v0, p1, p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)V

    return-object v0
.end method

.method public defaultSerializeDateKey(JLcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 551
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATE_KEYS_AS_TIMESTAMPS:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_0

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public defaultSerializeDateKey(Ljava/util/Date;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 567
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATE_KEYS_AS_TIMESTAMPS:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_0

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final defaultSerializeDateValue(JLcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 519
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p3, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    goto :goto_0

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final defaultSerializeDateValue(Ljava/util/Date;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 535
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    goto :goto_0

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public findKeySerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, v1, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;->createKeySerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_keySerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_0

    .line 477
    invoke-static {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdKeySerializers;->getStdKeySerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 483
    :cond_0
    instance-of p1, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ContextualSerializer;

    if-eqz p1, :cond_1

    .line 484
    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ContextualSerializer;

    .line 485
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ContextualSerializer;->createContextual(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public findTypedValueSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Z",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_knownSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->typedValueSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;->typedValueSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 449
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->findValueSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v1, v2, p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;->createTypeSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 452
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;

    invoke-direct {v1, p3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V

    move-object v0, v1

    :cond_2
    if-eqz p2, :cond_3

    .line 455
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;->addTypedSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V

    :cond_3
    return-object v0
.end method

.method public findTypedValueSerializer(Ljava/lang/Class;ZLcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_knownSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->typedValueSerializer(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;->typedValueSerializer(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 420
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;->createTypeSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 424
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;

    invoke-direct {v1, p3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V

    move-object v0, v1

    :cond_2
    if-eqz p2, :cond_3

    .line 427
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;->addTypedSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V

    :cond_3
    return-object v0
.end method

.method public findValueSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_knownSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->untypedValueSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;->untypedValueSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_createAndCacheUntypedSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 387
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1

    .line 396
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_handleContextualResolvable(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1
.end method

.method public findValueSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_knownSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->untypedValueSerializer(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;->untypedValueSerializer(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;->untypedValueSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_createAndCacheUntypedSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 351
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1

    .line 361
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_handleContextualResolvable(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1
.end method

.method public flushCachedSerializers()V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/SerializerCache;->flush()V

    return-void
.end method

.method public generateJsonSchema(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSchema;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSchema;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 278
    const-class v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;

    if-eqz p1, :cond_3

    .line 286
    invoke-virtual {p0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->createInstance(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;

    move-result-object p2

    .line 288
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    if-ne p3, v0, :cond_2

    const/4 p3, 0x0

    .line 294
    invoke-virtual {p2, p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 295
    instance-of v1, v0, Lcom/amazon/whispersync/org/codehaus/jackson/schema/SchemaAware;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/schema/SchemaAware;

    invoke-interface {v0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/schema/SchemaAware;->getSchema(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSchema;->getDefaultSchemaNode()Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    move-result-object p2

    .line 298
    :goto_0
    instance-of p3, p2, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    if-eqz p3, :cond_1

    .line 303
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSchema;

    check-cast p2, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSchema;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;)V

    return-object p1

    .line 299
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Class "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " would not be serialized as a JSON object and therefore has no schema"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 289
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broken serializer provider: createInstance returned instance of type "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; blueprint of type "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 279
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A class must be provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNullKeySerializer()Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_nullKeySerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    return-object v0
.end method

.method public getNullValueSerializer()Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_nullValueSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    return-object v0
.end method

.method public getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 502
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_unknownTypeSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    return-object p1
.end method

.method public hasSerializerFor(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;",
            ")Z"
        }
    .end annotation

    .line 310
    invoke-virtual {p0, p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->createInstance(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_findExplicitUntypedSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 242
    const-class v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;

    if-eqz p4, :cond_1

    .line 250
    invoke-virtual {p0, p1, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->createInstance(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    if-ne p4, v0, :cond_0

    .line 256
    invoke-virtual {p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    return-void

    .line 253
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Broken serializer provider: createInstance returned instance of type "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; blueprint of type "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 243
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can not pass null serializerFactory"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 264
    const-class v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;

    if-eqz p5, :cond_1

    .line 267
    invoke-virtual {p0, p1, p5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->createInstance(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;

    move-result-object p1

    .line 268
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p5

    if-ne p5, v0, :cond_0

    .line 271
    invoke-virtual {p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)V

    return-void

    .line 269
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Broken serializer provider: createInstance returned instance of type "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; blueprint of type "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 265
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can not pass null serializerFactory"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDefaultKeySerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 210
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_keySerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    return-void

    .line 208
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not pass null JsonSerializer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNullKeySerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 228
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_nullKeySerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    return-void

    .line 226
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not pass null JsonSerializer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNullValueSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 219
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/StdSerializerProvider;->_nullValueSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    return-void

    .line 217
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not pass null JsonSerializer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
