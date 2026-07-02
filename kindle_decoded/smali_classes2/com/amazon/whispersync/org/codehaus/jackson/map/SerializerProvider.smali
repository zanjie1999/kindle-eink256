.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;
.super Ljava/lang/Object;
.source "SerializerProvider.java"


# static fields
.field protected static final TYPE_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;


# instance fields
.field protected final _config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

.field protected final _serializationView:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->uncheckedSimpleType(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->TYPE_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->getSerializationView()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_serializationView:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public abstract cachedSerializersCount()I
.end method

.method public constructSpecializedType(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->constructSpecializedType(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->getTypeFactory()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public abstract defaultSerializeDateKey(JLcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract defaultSerializeDateKey(Ljava/util/Date;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract defaultSerializeDateValue(JLcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract defaultSerializeDateValue(Ljava/util/Date;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public final defaultSerializeField(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 458
    invoke-virtual {p3, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->getNullValueSerializer()Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p2

    invoke-virtual {p2, p1, p3, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    .line 466
    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    :goto_0
    return-void
.end method

.method public final defaultSerializeNull(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 517
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->getNullValueSerializer()Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public final defaultSerializeValue(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->getNullValueSerializer()Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    invoke-virtual {p1, v0, p2, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    .line 446
    invoke-virtual {p0, v1, v2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    :goto_0
    return-void
.end method

.method public abstract findKeySerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
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
.end method

.method public final findTypedValueSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Z)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Z)",
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 352
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->findTypedValueSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1
.end method

.method public abstract findTypedValueSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
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
.end method

.method public final findTypedValueSerializer(Ljava/lang/Class;Z)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 336
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1
.end method

.method public abstract findTypedValueSerializer(Ljava/lang/Class;ZLcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
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
.end method

.method public final findValueSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 320
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1
.end method

.method public abstract findValueSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
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
.end method

.method public final findValueSerializer(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1
.end method

.method public abstract findValueSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
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
.end method

.method public abstract flushCachedSerializers()V
.end method

.method public abstract generateJsonSchema(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSchema;
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
.end method

.method public final getConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    return-object v0
.end method

.method public final getFilterProvider()Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/FilterProvider;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->getFilterProvider()Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/FilterProvider;

    move-result-object v0

    return-object v0
.end method

.method public final getKeySerializer()Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 367
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->TYPE_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->findKeySerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public final getKeySerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 381
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->findKeySerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1
.end method

.method public abstract getNullKeySerializer()Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNullValueSerializer()Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public final getSerializationView()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_serializationView:Ljava/lang/Class;

    return-object v0
.end method

.method public abstract getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
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
.end method

.method public abstract hasSerializerFor(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)Z
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
.end method

.method public final isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result p1

    return p1
.end method

.method public abstract serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract setDefaultKeySerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setNullKeySerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setNullValueSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
