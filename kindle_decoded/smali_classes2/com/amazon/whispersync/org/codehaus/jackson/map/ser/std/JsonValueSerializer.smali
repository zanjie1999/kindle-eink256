.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "JsonValueSerializer.java"

# interfaces
.implements Lcom/amazon/whispersync/org/codehaus/jackson/map/ResolvableSerializer;
.implements Lcom/amazon/whispersync/org/codehaus/jackson/schema/SchemaAware;


# annotations
.annotation runtime Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/ResolvableSerializer;",
        "Lcom/amazon/whispersync/org/codehaus/jackson/schema/SchemaAware;"
    }
.end annotation


# instance fields
.field protected final _accessorMethod:Ljava/lang/reflect/Method;

.field protected _forceTypeInformation:Z

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


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")V"
        }
    .end annotation

    .line 61
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    .line 62
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;

    .line 63
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_valueSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    .line 64
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    return-void
.end method


# virtual methods
.method public getSchema(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 161
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_valueSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    instance-of v0, p2, Lcom/amazon/whispersync/org/codehaus/jackson/schema/SchemaAware;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/amazon/whispersync/org/codehaus/jackson/schema/SchemaAware;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/schema/SchemaAware;->getSchema(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSchema;->getDefaultSchemaNode()Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected isNaturalTypeWithStdHandling(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "*>;)Z"
        }
    .end annotation

    .line 206
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 208
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->isPrimitive()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 209
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, p1, :cond_1

    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, p1, :cond_1

    return v1

    .line 213
    :cond_0
    const-class p1, Ljava/lang/String;

    if-eq v0, p1, :cond_1

    const-class p1, Ljava/lang/Integer;

    if-eq v0, p1, :cond_1

    const-class p1, Ljava/lang/Boolean;

    if-eq v0, p1, :cond_1

    const-class p1, Ljava/lang/Double;

    if-eq v0, p1, :cond_1

    return v1

    .line 219
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JacksonStdImpl;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public resolve(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_valueSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_1

    .line 186
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->USE_STATIC_TYPING:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    const/4 v1, 0x0

    .line 194
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->findTypedValueSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_valueSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    .line 199
    invoke-virtual {p0, v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->isNaturalTypeWithStdHandling(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_forceTypeInformation:Z

    :cond_1
    return-void
.end method

.method public serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_valueSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    if-nez v1, :cond_1

    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    .line 86
    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p3, v1, v2, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 88
    :cond_1
    invoke-virtual {v1, v0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 94
    :goto_0
    instance-of p3, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 95
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    .line 98
    :cond_2
    instance-of p3, p2, Ljava/lang/Error;

    if-eqz p3, :cond_3

    .line 99
    check-cast p2, Ljava/lang/Error;

    throw p2

    .line 102
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "()"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 90
    throw p1
.end method

.method public serializeWithType(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_valueSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    if-eqz v1, :cond_3

    .line 126
    iget-boolean v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_forceTypeInformation:Z

    if-eqz v2, :cond_1

    .line 127
    invoke-virtual {p4, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    .line 129
    :cond_1
    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V

    .line 130
    iget-boolean p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_forceTypeInformation:Z

    if-eqz p3, :cond_2

    .line 131
    invoke-virtual {p4, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    :cond_2
    return-void

    .line 136
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    const/4 v1, 0x1

    .line 137
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p3, p4, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p4

    .line 139
    invoke-virtual {p4, v0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 145
    :goto_0
    instance-of p3, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz p3, :cond_4

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 146
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    .line 149
    :cond_4
    instance-of p3, p2, Ljava/lang/Error;

    if-eqz p3, :cond_5

    .line 150
    check-cast p2, Ljava/lang/Error;

    throw p2

    .line 153
    :cond_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "()"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 141
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(@JsonValue serializer for method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
