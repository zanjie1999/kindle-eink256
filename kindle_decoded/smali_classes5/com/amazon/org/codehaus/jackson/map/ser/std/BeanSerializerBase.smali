.class public abstract Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;
.super Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "BeanSerializerBase.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/map/ResolvableSerializer;
.implements Lcom/amazon/org/codehaus/jackson/schema/SchemaAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/amazon/org/codehaus/jackson/map/ResolvableSerializer;",
        "Lcom/amazon/org/codehaus/jackson/schema/SchemaAware;"
    }
.end annotation


# static fields
.field protected static final NO_PROPS:[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;


# instance fields
.field protected final _anyGetterWriter:Lcom/amazon/org/codehaus/jackson/map/ser/AnyGetterWriter;

.field protected final _filteredProps:[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

.field protected final _propertyFilterId:Ljava/lang/Object;

.field protected final _props:[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 28
    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->NO_PROPS:[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;)V
    .locals 6

    .line 100
    iget-object v1, p1, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;->_handledType:Ljava/lang/Class;

    iget-object v2, p1, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    iget-object v3, p1, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    iget-object v4, p1, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/amazon/org/codehaus/jackson/map/ser/AnyGetterWriter;

    iget-object v5, p1, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;-><init>(Ljava/lang/Class;[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/amazon/org/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/amazon/org/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;)V

    .line 76
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 77
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 78
    iput-object p4, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/amazon/org/codehaus/jackson/map/ser/AnyGetterWriter;

    .line 79
    iput-object p5, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/amazon/org/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "[",
            "Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "Lcom/amazon/org/codehaus/jackson/map/ser/AnyGetterWriter;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    .line 89
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 90
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 91
    iput-object p4, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/amazon/org/codehaus/jackson/map/ser/AnyGetterWriter;

    .line 92
    iput-object p5, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected findFilter(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 230
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->getFilterProvider()Lcom/amazon/org/codehaus/jackson/map/ser/FilterProvider;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/FilterProvider;->findFilter(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyFilter;

    move-result-object p1

    return-object p1

    .line 233
    :cond_0
    new-instance p1, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not resolve BeanPropertyFilter with id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'; no FilterProvider configured"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSchema(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/JsonNode;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    const/4 p2, 0x1

    const-string v0, "object"

    .line 244
    invoke-virtual {p0, v0, p2}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

    move-result-object p2

    .line 247
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/node/ContainerNode;->objectNode()Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x0

    .line 248
    :goto_0
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 249
    aget-object v2, v2, v1

    .line 250
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getSerializationType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    if-nez v3, :cond_0

    .line 252
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getGenericPropertyType()Ljava/lang/reflect/Type;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    .line 254
    :goto_1
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getSerializer()Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v4

    if-nez v4, :cond_2

    .line 256
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getRawSerializationType()Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_1

    .line 258
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getPropertyType()Ljava/lang/Class;

    move-result-object v4

    .line 260
    :cond_1
    invoke-virtual {p1, v4, v2}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v4

    .line 262
    :cond_2
    instance-of v5, v4, Lcom/amazon/org/codehaus/jackson/schema/SchemaAware;

    if-eqz v5, :cond_3

    check-cast v4, Lcom/amazon/org/codehaus/jackson/schema/SchemaAware;

    invoke-interface {v4, p1, v3}, Lcom/amazon/org/codehaus/jackson/schema/SchemaAware;->getSchema(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/JsonNode;

    move-result-object v3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/schema/JsonSchema;->getDefaultSchemaNode()Lcom/amazon/org/codehaus/jackson/JsonNode;

    move-result-object v3

    .line 265
    :goto_2
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/amazon/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonNode;)Lcom/amazon/org/codehaus/jackson/JsonNode;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo p1, "properties"

    .line 267
    invoke-virtual {p2, p1, v0}, Lcom/amazon/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonNode;)Lcom/amazon/org/codehaus/jackson/JsonNode;

    return-object p2
.end method

.method public resolve(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    .line 282
    :goto_0
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    array-length v2, v2

    :goto_1
    if-ge v1, v2, :cond_6

    .line 283
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    aget-object v3, v3, v1

    .line 284
    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->hasSerializer()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 288
    :cond_1
    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getSerializationType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v4

    if-nez v4, :cond_3

    .line 295
    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getGenericPropertyType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v4

    .line 296
    invoke-virtual {v4}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isFinal()Z

    move-result v5

    if-nez v5, :cond_3

    .line 301
    invoke-virtual {v4}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->containedTypeCount()I

    move-result v5

    if-lez v5, :cond_5

    .line 302
    :cond_2
    invoke-virtual {v3, v4}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->setNonTrivialBaseType(Lcom/amazon/org/codehaus/jackson/type/JavaType;)V

    goto :goto_2

    .line 307
    :cond_3
    invoke-virtual {p1, v4, v3}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v5

    .line 311
    invoke-virtual {v4}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 312
    invoke-virtual {v4}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;

    if-eqz v4, :cond_4

    .line 315
    instance-of v6, v5, Lcom/amazon/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;

    if-eqz v6, :cond_4

    .line 318
    check-cast v5, Lcom/amazon/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;

    invoke-virtual {v5, v4}, Lcom/amazon/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;->withValueTypeSerializer(Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)Lcom/amazon/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;

    move-result-object v5

    .line 323
    :cond_4
    invoke-virtual {v3, v5}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->withSerializer(Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v3

    .line 324
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    aput-object v3, v4, v1

    if-ge v1, v0, :cond_5

    .line 327
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    aget-object v4, v3, v1

    if-eqz v4, :cond_5

    .line 329
    invoke-virtual {v4, v5}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->withSerializer(Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v4

    aput-object v4, v3, v1

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 335
    :cond_6
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/amazon/org/codehaus/jackson/map/ser/AnyGetterWriter;

    if-eqz v0, :cond_7

    .line 336
    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/AnyGetterWriter;->resolve(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    :cond_7
    return-void
.end method

.method public abstract serialize(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method protected serializeFields(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string v0, "[anySetter]"

    .line 140
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->getSerializationView()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    goto :goto_0

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    :goto_0
    const/4 v2, 0x0

    .line 147
    :try_start_0
    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_2

    .line 148
    aget-object v4, v1, v2

    if-eqz v4, :cond_1

    .line 150
    invoke-virtual {v4, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->serializeAsField(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 153
    :cond_2
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/amazon/org/codehaus/jackson/map/ser/AnyGetterWriter;

    if-eqz v3, :cond_5

    .line 154
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/amazon/org/codehaus/jackson/map/ser/AnyGetterWriter;

    invoke-virtual {v3, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/AnyGetterWriter;->getAndSerialize(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p2

    .line 164
    new-instance p3, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    const-string v3, "Infinite recursion (StackOverflowError)"

    invoke-direct {p3, v3, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    array-length p2, v1

    if-ne v2, p2, :cond_3

    goto :goto_2

    :cond_3
    aget-object p2, v1, v2

    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_2
    new-instance p2, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-direct {p2, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->prependPath(Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;)V

    .line 167
    throw p3

    :catch_1
    move-exception p2

    .line 157
    array-length v3, v1

    if-ne v2, v3, :cond_4

    goto :goto_3

    :cond_4
    aget-object v0, v1, v2

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_3
    invoke-virtual {p0, p3, p2, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;->wrapAndThrow(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    :goto_4
    return-void
.end method

.method protected serializeFieldsFiltered(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string v0, "[anySetter]"

    .line 186
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->getSerializationView()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    goto :goto_0

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 191
    :goto_0
    invoke-virtual {p0, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->findFilter(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyFilter;

    move-result-object v2

    if-nez v2, :cond_1

    .line 194
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 200
    :try_start_0
    array-length v4, v1

    :goto_1
    if-ge v3, v4, :cond_3

    .line 201
    aget-object v5, v1, v3

    if-eqz v5, :cond_2

    .line 203
    invoke-interface {v2, p1, p2, p3, v5}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyFilter;->serializeAsField(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 206
    :cond_3
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/amazon/org/codehaus/jackson/map/ser/AnyGetterWriter;

    if-eqz v2, :cond_6

    .line 207
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/amazon/org/codehaus/jackson/map/ser/AnyGetterWriter;

    invoke-virtual {v2, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/AnyGetterWriter;->getAndSerialize(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p2

    .line 213
    new-instance p3, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    const-string v2, "Infinite recursion (StackOverflowError)"

    invoke-direct {p3, v2, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    array-length p2, v1

    if-ne v3, p2, :cond_4

    goto :goto_2

    :cond_4
    aget-object p2, v1, v3

    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 215
    :goto_2
    new-instance p2, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-direct {p2, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->prependPath(Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;)V

    .line 216
    throw p3

    :catch_1
    move-exception p2

    .line 210
    array-length v2, v1

    if-ne v3, v2, :cond_5

    goto :goto_3

    :cond_5
    aget-object v0, v1, v3

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 211
    :goto_3
    invoke-virtual {p0, p3, p2, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;->wrapAndThrow(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public serializeWithType(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 121
    invoke-virtual {p4, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    .line 122
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->serializeFieldsFiltered(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    .line 127
    :goto_0
    invoke-virtual {p4, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    return-void
.end method
