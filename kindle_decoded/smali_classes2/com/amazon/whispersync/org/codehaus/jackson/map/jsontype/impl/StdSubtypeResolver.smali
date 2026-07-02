.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;
.source "StdSubtypeResolver.java"


# instance fields
.field protected _registeredSubtypes:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected _collectAndResolve(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;",
            "Ljava/util/HashMap<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;)V"
        }
    .end annotation

    .line 119
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;->hasName()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p4, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findTypeName(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;

    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v1, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object p2, v1

    .line 127
    :cond_0
    invoke-virtual {p5, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;->hasName()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    invoke-virtual {p5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;

    .line 131
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;->hasName()Z

    move-result p1

    if-nez p1, :cond_1

    .line 132
    invoke-virtual {p5, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    .line 138
    :cond_2
    invoke-virtual {p5, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {p4, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findSubtypes(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 140
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 141
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;

    .line 142
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p4, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v2

    .line 144
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;->hasName()Z

    move-result v0

    if-nez v0, :cond_3

    .line 145
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;

    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p4, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findTypeName(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v3, v0

    goto :goto_1

    :cond_3
    move-object v3, p2

    :goto_1
    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 147
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public collectAndResolveSubtypes(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 91
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;->getRawType()Ljava/lang/Class;

    move-result-object v7

    .line 93
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;

    .line 95
    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    .line 97
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Ljava/util/HashMap;)V

    goto :goto_0

    .line 102
    :cond_1
    new-instance v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    .line 103
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Ljava/util/HashMap;)V

    .line 104
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public collectAndResolveSubtypes(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 58
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;->getRawType()Ljava/lang/Class;

    move-result-object v7

    .line 60
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;

    .line 62
    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    .line 64
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Ljava/util/HashMap;)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p3, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findSubtypes(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 72
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;

    .line 73
    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    .line 74
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Ljava/util/HashMap;)V

    goto :goto_1

    .line 77
    :cond_2
    new-instance v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;->getRawType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    .line 81
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Ljava/util/HashMap;)V

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public varargs registerSubtypes([Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;)V
    .locals 4

    .line 29
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    .line 32
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 33
    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs registerSubtypes([Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 40
    array-length v0, p1

    new-array v0, v0, [Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;

    .line 41
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 42
    new-instance v3, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;

    aget-object v4, p1, v2

    invoke-direct {v3, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;-><init>(Ljava/lang/Class;)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->registerSubtypes([Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;)V

    return-void
.end method
