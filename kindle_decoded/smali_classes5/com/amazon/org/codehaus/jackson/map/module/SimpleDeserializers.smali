.class public Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;
.super Ljava/lang/Object;
.source "SimpleDeserializers.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/map/Deserializers;


# instance fields
.field protected _classMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addDeserializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "+TT;>;)V"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 37
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 38
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public findArrayDeserializer(Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 0
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

    .line 57
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    :goto_0
    return-object p1
.end method

.method public findBeanDeserializer(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
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

    .line 66
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    :goto_0
    return-object p1
.end method

.method public findCollectionDeserializer(Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
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

    .line 77
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    :goto_0
    return-object p1
.end method

.method public findCollectionLikeDeserializer(Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
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

    .line 88
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    :goto_0
    return-object p1
.end method

.method public findEnumDeserializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
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

    .line 96
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {p3, p1}, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    :goto_0
    return-object p1
.end method

.method public findMapDeserializer(Lcom/amazon/org/codehaus/jackson/map/type/MapType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/type/MapType;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
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

    .line 108
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    :goto_0
    return-object p1
.end method

.method public findMapLikeDeserializer(Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
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

    .line 120
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    :goto_0
    return-object p1
.end method

.method public findTreeNodeDeserializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 0
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

    .line 128
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {p3, p1}, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    :goto_0
    return-object p1
.end method
