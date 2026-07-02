.class public Lcom/amazon/org/codehaus/jackson/map/deser/std/ThrowableDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;
.source "ThrowableDeserializer.java"


# static fields
.field protected static final PROP_NAME_MESSAGE:Ljava/lang/String; = "message"


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;)V

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;Z)V

    return-void
.end method


# virtual methods
.method public deserializeFromObject(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_deserializeUsingPropertyBased(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_1

    .line 74
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_f

    .line 80
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromString()Z

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateUsingDefault()Z

    move-result v1

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    .line 84
    :cond_2
    new-instance p1, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not deserialize Throwable of type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " without having a default contructor, a single-String-arg constructor; or explicit @JsonCreator"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    const/4 v5, 0x0

    .line 92
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/amazon/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eq v6, v7, :cond_c

    .line 93
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v6

    .line 94
    iget-object v7, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v7, v6}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v7

    .line 95
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eqz v7, :cond_6

    if-eqz v3, :cond_4

    .line 99
    invoke-virtual {v7, p1, p2, v3}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    if-nez v4, :cond_5

    .line 104
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v4}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->size()I

    move-result v4

    add-int/2addr v4, v4

    .line 105
    new-array v4, v4, [Ljava/lang/Object;

    :cond_5
    add-int/lit8 v6, v5, 0x1

    .line 107
    aput-object v7, v4, v5

    add-int/lit8 v5, v6, 0x1

    .line 108
    invoke-virtual {v7, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v4, v6

    goto :goto_3

    :cond_6
    const-string v7, "message"

    .line 113
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v0, :cond_8

    .line 115
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v4, :cond_b

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_7

    .line 119
    aget-object v7, v4, v6

    check-cast v7, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    add-int/lit8 v8, v6, 0x1

    .line 120
    aget-object v8, v4, v8

    invoke-virtual {v7, v3, v8}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    :cond_7
    move-object v4, v2

    goto :goto_3

    .line 130
    :cond_8
    iget-object v7, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v7, :cond_9

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 131
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/amazon/org/codehaus/jackson/JsonParser;

    goto :goto_3

    .line 134
    :cond_9
    iget-object v7, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v7, :cond_a

    .line 135
    invoke-virtual {v7, p1, p2, v3, v6}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->deserializeAndSet(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 139
    :cond_a
    invoke-virtual {p0, p1, p2, v3, v6}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperty(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    :cond_b
    :goto_3
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    goto :goto_1

    :cond_c
    if-nez v3, :cond_e

    if-eqz v0, :cond_d

    .line 150
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {p1, v2}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    .line 152
    :cond_d
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDefault()Ljava/lang/Object;

    move-result-object p1

    :goto_4
    move-object v3, p1

    if-eqz v4, :cond_e

    :goto_5
    if-ge v1, v5, :cond_e

    .line 157
    aget-object p1, v4, v1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    add-int/lit8 p2, v1, 0x1

    .line 158
    aget-object p2, v4, p2

    invoke-virtual {p1, v3, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    :cond_e
    return-object v3

    .line 77
    :cond_f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not instantiate abstract type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (need to add/enable type information?)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/amazon/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public unwrappingDeserializer()Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazon/org/codehaus/jackson/map/deser/std/ThrowableDeserializer;

    if-eq v0, v1, :cond_0

    return-object p0

    .line 55
    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/deser/std/ThrowableDeserializer;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/std/ThrowableDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;Z)V

    return-object v0
.end method
