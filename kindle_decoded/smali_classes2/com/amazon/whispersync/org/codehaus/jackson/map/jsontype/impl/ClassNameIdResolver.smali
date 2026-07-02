.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;
.source "ClassNameIdResolver.java"


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;)V

    return-void
.end method


# virtual methods
.method protected final _idFrom(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 72
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    .line 77
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util"

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    instance-of p2, p1, Ljava/util/EnumSet;

    if-eqz p2, :cond_1

    .line 88
    check-cast p1, Ljava/util/EnumSet;

    invoke-static {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ClassUtil;->findEnumType(Ljava/util/EnumSet;)Ljava/lang/Class;

    move-result-object p1

    .line 90
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object p2

    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {p2, v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBase;->toCanonical()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_1
    instance-of p2, p1, Ljava/util/EnumMap;

    if-eqz p2, :cond_2

    .line 92
    check-cast p1, Ljava/util/EnumMap;

    invoke-static {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ClassUtil;->findEnumType(Ljava/util/EnumMap;)Ljava/lang/Class;

    move-result-object p1

    .line 93
    const-class p2, Ljava/lang/Object;

    .line 95
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    const-class v1, Ljava/util/EnumMap;

    invoke-virtual {v0, v1, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructMapType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/MapType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBase;->toCanonical()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 p1, 0x9

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, ".Arrays$"

    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, ".Collections$"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_3
    const-string p1, "List"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_5

    const-string p1, "java.util.ArrayList"

    move-object v0, p1

    goto :goto_0

    :cond_4
    const/16 p1, 0x24

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_5

    .line 117
    invoke-static {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ClassUtil;->getOuterClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 123
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;->_baseType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    .line 124
    invoke-static {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ClassUtil;->getOuterClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_5

    .line 126
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;->_baseType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_0
    return-object v0
.end method

.method public getMechanism()Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->CLASS:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    return-object v0
.end method

.method public idFromValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;->_idFrom(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
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

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;->_idFrom(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public registerSubtype(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public typeFromId(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 4

    const-string v0, "Invalid type id \'"

    const/16 v1, 0x3c

    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 49
    invoke-static {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->fromCanonical(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1

    .line 54
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ClassUtil;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;->_typeFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;->_baseType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, v3, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructSpecializedType(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 59
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' (for id type \'Id.class\'): "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 57
    :catch_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' (for id type \'Id.class\'): no such class found"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
