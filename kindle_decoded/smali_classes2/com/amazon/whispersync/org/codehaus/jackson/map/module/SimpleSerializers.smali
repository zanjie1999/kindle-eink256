.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers$Base;
.source "SimpleSerializers.java"


# instance fields
.field protected _classMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected _interfaceMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers$Base;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    .line 38
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    return-void
.end method

.method private _addSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "*>;)V"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 78
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 80
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    if-nez p1, :cond_2

    .line 85
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    .line 87
    :cond_2
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method protected _findInterfaceMapping(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 193
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 194
    invoke-virtual {p2, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;->reset(Ljava/lang/Class;)V

    .line 195
    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    if-eqz v3, :cond_0

    return-object v3

    .line 199
    :cond_0
    invoke-virtual {p0, v2, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;->_findInterfaceMapping(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public addSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "*>;)V"
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;->handledType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 66
    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;->_addSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V

    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JsonSerializer of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not define valid handledType() -- must either register with method that takes type argument "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " or make serializer extend \'org.codehaus.jackson.map.ser.std.SerializerBase\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "TT;>;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;->_addSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V

    return-void
.end method

.method public findArraySerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 152
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;->findSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1
.end method

.method public findCollectionLikeSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 166
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;->findSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1
.end method

.method public findCollectionSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 159
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;->findSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1
.end method

.method public findMapLikeSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/MapLikeType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/MapLikeType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 182
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;->findSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1
.end method

.method public findMapSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/MapType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/MapType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 174
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;->findSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1
.end method

.method public findSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 101
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    .line 102
    new-instance p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 106
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 107
    iget-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    if-eqz p3, :cond_3

    .line 108
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    if-eqz p3, :cond_3

    return-object p3

    .line 114
    :cond_0
    iget-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    if-eqz p3, :cond_3

    .line 115
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    if-eqz p3, :cond_1

    return-object p3

    :cond_1
    move-object p3, p1

    :goto_0
    if-eqz p3, :cond_3

    .line 121
    invoke-virtual {p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;->reset(Ljava/lang/Class;)V

    .line 122
    iget-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    if-eqz p4, :cond_2

    return-object p4

    .line 120
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p3

    goto :goto_0

    .line 130
    :cond_3
    iget-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    if-eqz p3, :cond_6

    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;->_findInterfaceMapping(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p3

    if-eqz p3, :cond_4

    return-object p3

    .line 136
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p3

    if-nez p3, :cond_6

    .line 137
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleSerializers;->_findInterfaceMapping(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p3

    if-eqz p3, :cond_5

    return-object p3

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method
