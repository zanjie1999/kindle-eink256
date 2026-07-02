.class public Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;
.super Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;
.source "TypeNameIdResolver.java"


# instance fields
.field protected final _config:Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "*>;"
        }
    .end annotation
.end field

.field protected final _idToType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ">;"
        }
    .end annotation
.end field

.field protected final _typeToId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getTypeFactory()Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;)V

    .line 33
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_config:Lcom/amazon/org/codehaus/jackson/map/MapperConfig;

    .line 34
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_typeToId:Ljava/util/HashMap;

    .line 35
    iput-object p4, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_idToType:Ljava/util/HashMap;

    return-void
.end method

.method protected static _defaultTypeId(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 151
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 152
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static construct(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;ZZ)Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Ljava/util/Collection<",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;ZZ)",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;"
        }
    .end annotation

    if-eq p3, p4, :cond_7

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p4, :cond_1

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_1
    if-eqz p2, :cond_6

    .line 54
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/org/codehaus/jackson/map/jsontype/NamedType;

    .line 58
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 59
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/NamedType;->hasName()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/NamedType;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-static {v3}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_defaultTypeId(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-eqz p3, :cond_4

    .line 61
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p4, :cond_2

    .line 68
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/org/codehaus/jackson/type/JavaType;

    if-eqz v4, :cond_5

    .line 70
    invoke-virtual {v4}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 74
    :cond_5
    invoke-virtual {p0, v3}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 78
    :cond_6
    new-instance p2, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;

    invoke-direct {p2, p0, p1, v1, v0}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;-><init>(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object p2

    .line 43
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public getMechanism()Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$Id;
    .locals 1

    .line 82
    sget-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    return-object v0
.end method

.method public idFromValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_typeToId:Ljava/util/HashMap;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_typeToId:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2

    .line 95
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_config:Lcom/amazon/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_config:Lcom/amazon/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v2, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;

    move-result-object v2

    check-cast v2, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 97
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_config:Lcom/amazon/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findTypeName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    .line 101
    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_defaultTypeId(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_typeToId:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_2
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 112
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; id-to-type="

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_idToType:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeFromId(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->_idToType:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-object p1
.end method
