.class public Lcom/amazon/org/codehaus/jackson/map/util/RootNameLookup;
.super Ljava/lang/Object;
.source "RootNameLookup.java"


# instance fields
.field protected _rootNames:Lcom/amazon/org/codehaus/jackson/map/util/LRUMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/util/LRUMap<",
            "Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;",
            "Lcom/amazon/org/codehaus/jackson/io/SerializedString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findRootName(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/MapperConfig;)Lcom/amazon/org/codehaus/jackson/io/SerializedString;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/io/SerializedString;"
        }
    .end annotation

    .line 26
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/util/RootNameLookup;->findRootName(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/MapperConfig;)Lcom/amazon/org/codehaus/jackson/io/SerializedString;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized findRootName(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/MapperConfig;)Lcom/amazon/org/codehaus/jackson/io/SerializedString;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/io/SerializedString;"
        }
    .end annotation

    monitor-enter p0

    .line 31
    :try_start_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 33
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/util/RootNameLookup;->_rootNames:Lcom/amazon/org/codehaus/jackson/map/util/LRUMap;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/util/LRUMap;

    const/16 v2, 0x14

    const/16 v3, 0xc8

    invoke-direct {v1, v2, v3}, Lcom/amazon/org/codehaus/jackson/map/util/LRUMap;-><init>(II)V

    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/util/RootNameLookup;->_rootNames:Lcom/amazon/org/codehaus/jackson/map/util/LRUMap;

    goto :goto_0

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/util/RootNameLookup;->_rootNames:Lcom/amazon/org/codehaus/jackson/map/util/LRUMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/org/codehaus/jackson/io/SerializedString;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 38
    monitor-exit p0

    return-object v1

    .line 41
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;

    move-result-object v1

    check-cast v1, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 42
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object p2

    .line 43
    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    .line 44
    invoke-virtual {p2, v1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findRootName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 48
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    .line 50
    :cond_2
    new-instance p1, Lcom/amazon/org/codehaus/jackson/io/SerializedString;

    invoke-direct {p1, p2}, Lcom/amazon/org/codehaus/jackson/io/SerializedString;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/util/RootNameLookup;->_rootNames:Lcom/amazon/org/codehaus/jackson/map/util/LRUMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
