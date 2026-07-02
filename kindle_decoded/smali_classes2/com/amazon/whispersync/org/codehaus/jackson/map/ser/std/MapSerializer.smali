.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;
.source "MapSerializer.java"

# interfaces
.implements Lcom/amazon/whispersync/org/codehaus/jackson/map/ResolvableSerializer;


# annotations
.annotation runtime Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ContainerSerializerBase<",
        "Ljava/util/Map<",
        "**>;>;",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/ResolvableSerializer;"
    }
.end annotation


# static fields
.field protected static final UNSPECIFIED_TYPE:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;


# instance fields
.field protected _dynamicValueSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

.field protected final _ignoredEntries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _keySerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _keyType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

.field protected final _property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

.field protected _valueSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _valueType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

.field protected final _valueTypeIsStatic:Z

.field protected final _valueTypeSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->unknownType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->UNSPECIFIED_TYPE:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    return-void
.end method

.method protected constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 88
    invoke-direct/range {v0 .. v8}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;-><init>(Ljava/util/HashSet;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/HashSet;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Z",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")V"
        }
    .end annotation

    .line 97
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;-><init>(Ljava/lang/Class;Z)V

    .line 98
    iput-object p8, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    .line 99
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 100
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_keyType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    .line 101
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    .line 102
    iput-boolean p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    .line 103
    iput-object p5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;

    .line 104
    iput-object p6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_keySerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    .line 105
    iput-object p7, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    .line 106
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->emptyMap()Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    return-void
.end method

.method public static construct([Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 136
    invoke-static/range {v0 .. v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->construct([Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static construct([Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Z",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;"
        }
    .end annotation

    .line 143
    invoke-static {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->toSet([Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    if-nez p1, :cond_0

    .line 147
    sget-object p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->UNSPECIFIED_TYPE:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-object v2, p0

    move-object v3, v2

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getKeyType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p0

    .line 150
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    move-object v2, p0

    move-object v3, p1

    :goto_0
    if-nez p2, :cond_2

    if-eqz v3, :cond_1

    .line 154
    invoke-virtual {v3}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->isFinal()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    const/4 p2, 0x0

    :cond_2
    :goto_1
    move v4, p2

    .line 156
    new-instance p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;

    move-object v0, p0

    move-object v5, p3

    move-object v6, p5

    move-object v7, p6

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;-><init>(Ljava/util/HashSet;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)V

    return-object p0
.end method

.method private static toSet([Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 161
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 164
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 165
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 166
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected final _findAndAddDynamic(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;",
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

    .line 414
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, p2, p3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->findAndAddSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object p2

    .line 415
    iget-object p3, p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, p3, :cond_0

    .line 416
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 418
    :cond_0
    iget-object p1, p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    return-object p1
.end method

.method protected final _findAndAddDynamic(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;",
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

    .line 403
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, p2, p3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->findAndAddSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object p2

    .line 405
    iget-object p3, p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, p3, :cond_0

    .line 406
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 408
    :cond_0
    iget-object p1, p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    return-object p1
.end method

.method public _withValueTypeSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ContainerSerializerBase<",
            "*>;"
        }
    .end annotation

    .line 112
    new-instance v9, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_keyType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iget-boolean v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    iget-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_keySerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    iget-object v7, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    iget-object v8, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    move-object v0, v9

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;-><init>(Ljava/util/HashSet;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)V

    .line 114
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    if-eqz p1, :cond_0

    .line 115
    iput-object p1, v9, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    :cond_0
    return-object v9
.end method

.method public getSchema(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 0

    const-string p1, "object"

    const/4 p2, 0x1

    .line 365
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 379
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_keySerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_keyType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->findKeySerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_keySerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    :cond_1
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 23
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->serialize(Ljava/util/Map;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/Map;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 181
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 182
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->serializeFieldsUsing(Ljava/util/Map;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->serializeFields(Ljava/util/Map;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    .line 189
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    return-void
.end method

.method public serializeFields(Ljava/util/Map;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->serializeTypedFields(Ljava/util/Map;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_keySerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    .line 227
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 228
    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_MAP_VALUES:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 230
    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 232
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 233
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 235
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 237
    invoke-virtual {p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->getNullKeySerializer()Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 242
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .line 243
    :cond_3
    invoke-virtual {v0, v5, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    :goto_1
    if-nez v6, :cond_4

    .line 248
    invoke-virtual {p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 250
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 251
    invoke-virtual {v3, v7}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v8

    if-nez v8, :cond_6

    .line 253
    iget-object v8, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v8}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->hasGenericTypes()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 254
    iget-object v8, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p3, v8, v7}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->constructSpecializedType(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v7

    invoke-virtual {p0, v3, v7, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v3

    goto :goto_2

    .line 257
    :cond_5
    invoke-virtual {p0, v3, v7, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v3

    :goto_2
    move-object v8, v3

    .line 259
    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 262
    :cond_6
    :try_start_0
    invoke-virtual {v8, v6, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 265
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 266
    invoke-virtual {p0, p3, v6, p1, v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;->wrapAndThrow(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    return-void
.end method

.method protected serializeFieldsUsing(Ljava/util/Map;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_keySerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    .line 282
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 283
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;

    .line 284
    sget-object v3, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_MAP_VALUES:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 286
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 287
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 288
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 290
    invoke-virtual {p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->getNullKeySerializer()Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 294
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {v0, v5, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    :goto_1
    if-nez v6, :cond_3

    .line 298
    invoke-virtual {p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    .line 302
    :try_start_0
    invoke-virtual {p4, v6, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 304
    :cond_4
    invoke-virtual {p4, v6, p2, p3, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 308
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 309
    invoke-virtual {p0, p3, v6, p1, v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;->wrapAndThrow(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected serializeTypedFields(Ljava/util/Map;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_keySerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    .line 321
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 322
    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_MAP_VALUES:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 324
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 325
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 327
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    .line 329
    invoke-virtual {p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->getNullKeySerializer()Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v9

    invoke-virtual {v9, v4, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 334
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_0

    .line 335
    :cond_2
    invoke-virtual {v0, v7, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    :goto_1
    if-nez v8, :cond_3

    .line 340
    invoke-virtual {p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 342
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v9, v5, :cond_4

    goto :goto_2

    .line 347
    :cond_4
    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p3, v9, v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v6

    move-object v5, v9

    .line 352
    :goto_2
    :try_start_0
    iget-object v9, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;

    invoke-virtual {v6, v8, p2, p3, v9}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    .line 355
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 356
    invoke-virtual {p0, p3, v8, p1, v7}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;->wrapAndThrow(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 23
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->serializeWithType(Ljava/util/Map;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method

.method public serializeWithType(Ljava/util/Map;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 197
    invoke-virtual {p4, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    .line 198
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->serializeFieldsUsing(Ljava/util/Map;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->serializeFields(Ljava/util/Map;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    .line 205
    :cond_1
    :goto_0
    invoke-virtual {p4, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    return-void
.end method
