.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;
.source "UnwrappingBeanPropertyWriter.java"


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V

    return-void
.end method


# virtual methods
.method protected _findAndAddDynamic(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 0
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

    .line 87
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_nonTrivialBaseType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p3, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->constructSpecializedType(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    .line 89
    invoke-virtual {p3, p1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p3, p2, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    .line 93
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->isUnwrappingSerializer()Z

    move-result p3

    if-nez p3, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->unwrappingSerializer()Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    .line 96
    :cond_1
    iget-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_dynamicSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    invoke-virtual {p3, p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->newWith(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_dynamicSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    return-object p1
.end method

.method public serializeAsField(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ne v0, p1, :cond_1

    .line 54
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_reportSelfReference(Ljava/lang/Object;)V

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    if-nez p1, :cond_4

    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 62
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_dynamicSerializers:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 63
    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    if-nez v2, :cond_3

    .line 65
    invoke-virtual {p0, v1, p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;->_findAndAddDynamic(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v2

    .line 70
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->isUnwrappingSerializer()Z

    move-result v1

    if-nez v1, :cond_5

    .line 71
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_name:Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;

    invoke-virtual {p2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;)V

    .line 74
    :cond_5
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_typeSerializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;

    if-nez v1, :cond_6

    .line 75
    invoke-virtual {p1, v0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_1

    .line 77
    :cond_6
    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V

    :goto_1
    return-void
.end method

.method public withSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;"
        }
    .end annotation

    .line 31
    const-class v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;

    if-ne v0, v0, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->isUnwrappingSerializer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->unwrappingSerializer()Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    .line 38
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V

    return-object v0

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "UnwrappingBeanPropertyWriter sub-class does not override \'withSerializer()\'; needs to!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
