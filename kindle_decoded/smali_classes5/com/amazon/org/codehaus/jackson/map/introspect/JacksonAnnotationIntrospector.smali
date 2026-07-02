.class public Lcom/amazon/org/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;
.super Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;
.source "JacksonAnnotationIntrospector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;-><init>()V

    return-void
.end method


# virtual methods
.method protected _constructNoTypeResolverBuilder()Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
    .locals 1

    .line 811
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->noTypeInfoBuilder()Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected _constructStdTypeResolverBuilder()Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
    .locals 1

    .line 801
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;-><init>()V

    return-object v0
.end method

.method protected _findTypeResolver(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<",
            "*>;"
        }
    .end annotation

    .line 744
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo;

    invoke-virtual {p2, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo;

    .line 745
    const-class v1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonTypeResolver;

    invoke-virtual {p2, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonTypeResolver;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    return-object v2

    .line 757
    :cond_0
    invoke-interface {v1}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonTypeResolver;->value()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->typeResolverBuilderInstance(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    return-object v2

    .line 763
    :cond_2
    invoke-interface {v0}, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo;->use()Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    move-result-object v1

    sget-object v3, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->NONE:Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    if-ne v1, v3, :cond_3

    .line 764
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_constructNoTypeResolverBuilder()Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    move-result-object p1

    return-object p1

    .line 766
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_constructStdTypeResolverBuilder()Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v1

    .line 769
    :goto_0
    const-class v3, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonTypeIdResolver;

    invoke-virtual {p2, v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonTypeIdResolver;

    if-nez v3, :cond_4

    goto :goto_1

    .line 770
    :cond_4
    invoke-interface {v3}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonTypeIdResolver;->value()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->typeIdResolverInstance(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_5

    .line 773
    invoke-interface {v2, p3}, Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;->init(Lcom/amazon/org/codehaus/jackson/type/JavaType;)V

    .line 775
    :cond_5
    invoke-interface {v0}, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo;->use()Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    move-result-object p1

    invoke-interface {v1, p1, v2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->init(Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$Id;Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object p1

    .line 780
    invoke-interface {v0}, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo;->include()Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    move-result-object p3

    .line 781
    sget-object v1, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    if-ne p3, v1, :cond_6

    instance-of p2, p2, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    if-eqz p2, :cond_6

    .line 782
    sget-object p3, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;->PROPERTY:Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    .line 784
    :cond_6
    invoke-interface {p1, p3}, Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->inclusion(Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object p1

    .line 785
    invoke-interface {v0}, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo;->property()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->typeProperty(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object p1

    .line 786
    invoke-interface {v0}, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo;->defaultImpl()Ljava/lang/Class;

    move-result-object p2

    .line 787
    const-class p3, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$None;

    if-eq p2, p3, :cond_7

    .line 788
    invoke-interface {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->defaultImpl(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object p1

    :cond_7
    return-object p1
.end method

.method protected _isIgnorable(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Z
    .locals 1

    .line 731
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonIgnore;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/annotate/JsonIgnore;

    if-eqz p1, :cond_0

    .line 732
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/annotate/JsonIgnore;->value()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public findAutoDetectVisibility(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;"
        }
    .end annotation

    .line 125
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect;

    if-nez p1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-interface {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;->with(Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect;)Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public findCachability(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .line 69
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonCachable;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonCachable;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 73
    :cond_0
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonCachable;->value()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1
.end method

.method public findContentDeserializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;>;"
        }
    .end annotation

    .line 531
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonDeserialize;

    if-eqz p1, :cond_0

    .line 533
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonDeserialize;->contentUsing()Ljava/lang/Class;

    move-result-object p1

    .line 534
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer$None;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findContentSerializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;>;"
        }
    .end annotation

    .line 329
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;

    if-eqz p1, :cond_0

    .line 331
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;->contentUsing()Ljava/lang/Class;

    move-result-object p1

    .line 332
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer$None;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeserializablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 1

    .line 685
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonProperty;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonProperty;

    if-eqz v0, :cond_0

    .line 687
    invoke-interface {v0}, Lcom/amazon/org/codehaus/jackson/annotate/JsonProperty;->value()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 691
    :cond_0
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonView;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonBackReference;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonManagedReference;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public findDeserializationContentType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 582
    const-class p2, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonDeserialize;

    if-eqz p1, :cond_0

    .line 584
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonDeserialize;->contentAs()Ljava/lang/Class;

    move-result-object p1

    .line 585
    const-class p2, Lcom/amazon/org/codehaus/jackson/map/annotate/NoClass;

    if-eq p1, p2, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeserializationKeyType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 564
    const-class p2, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonDeserialize;

    if-eqz p1, :cond_0

    .line 566
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonDeserialize;->keyAs()Ljava/lang/Class;

    move-result-object p1

    .line 567
    const-class p2, Lcom/amazon/org/codehaus/jackson/map/annotate/NoClass;

    if-eq p1, p2, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeserializationType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 546
    const-class p2, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonDeserialize;

    if-eqz p1, :cond_0

    .line 548
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonDeserialize;->as()Ljava/lang/Class;

    move-result-object p1

    .line 549
    const-class p2, Lcom/amazon/org/codehaus/jackson/map/annotate/NoClass;

    if-eq p1, p2, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeserializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;>;"
        }
    .end annotation

    .line 504
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonDeserialize;

    if-eqz p1, :cond_0

    .line 506
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonDeserialize;->using()Ljava/lang/Class;

    move-result-object p1

    .line 507
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer$None;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic findDeserializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->findDeserializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public findFilterId(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 1

    .line 104
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonFilter;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonFilter;

    if-eqz p1, :cond_0

    .line 106
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonFilter;->value()Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findGettablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 1

    .line 442
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonProperty;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonProperty;

    if-eqz v0, :cond_0

    .line 444
    invoke-interface {v0}, Lcom/amazon/org/codehaus/jackson/annotate/JsonProperty;->value()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 449
    :cond_0
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonGetter;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonGetter;

    if-eqz v0, :cond_1

    .line 451
    invoke-interface {v0}, Lcom/amazon/org/codehaus/jackson/annotate/JsonGetter;->value()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 457
    :cond_1
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonView;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :cond_3
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public findIgnoreUnknownProperties(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .line 91
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonIgnoreProperties;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/annotate/JsonIgnoreProperties;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 92
    :cond_0
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/annotate/JsonIgnoreProperties;->ignoreUnknown()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findInjectableValueId(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 2

    .line 167
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JacksonInject;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JacksonInject;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 174
    :cond_0
    invoke-interface {v0}, Lcom/amazon/org/codehaus/jackson/map/annotate/JacksonInject;->value()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 177
    instance-of v0, p1, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-nez v0, :cond_1

    .line 178
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getRawType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 180
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 181
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 182
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getRawType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    .line 184
    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method public findKeyDeserializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation

    .line 518
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonDeserialize;

    if-eqz p1, :cond_0

    .line 520
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonDeserialize;->keyUsing()Ljava/lang/Class;

    move-result-object p1

    .line 521
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer$None;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findKeySerializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;>;"
        }
    .end annotation

    .line 316
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;

    if-eqz p1, :cond_0

    .line 318
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;->keyUsing()Ljava/lang/Class;

    move-result-object p1

    .line 319
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer$None;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findPropertiesToIgnore(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 1

    .line 85
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonIgnoreProperties;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/annotate/JsonIgnoreProperties;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 86
    :cond_0
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/annotate/JsonIgnoreProperties;->value()[Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findPropertyContentTypeResolver(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<",
            "*>;"
        }
    .end annotation

    .line 227
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_findTypeResolver(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object p1

    return-object p1

    .line 228
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Must call method with a container type (got "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public findPropertyNameForParam(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 711
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonProperty;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/annotate/JsonProperty;

    if-eqz p1, :cond_0

    .line 713
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/annotate/JsonProperty;->value()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findPropertyTypeResolver(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<",
            "*>;"
        }
    .end annotation

    .line 212
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 214
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_findTypeResolver(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object p1

    return-object p1
.end method

.method public findReferenceType(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    .locals 1

    .line 139
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonManagedReference;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonManagedReference;

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0}, Lcom/amazon/org/codehaus/jackson/annotate/JsonManagedReference;->value()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->managed(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object p1

    return-object p1

    .line 143
    :cond_0
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonBackReference;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/annotate/JsonBackReference;

    if-eqz p1, :cond_1

    .line 145
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/annotate/JsonBackReference;->value()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->back(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findRootName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 1

    .line 79
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonRootName;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonRootName;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 80
    :cond_0
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonRootName;->value()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findSerializablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 1

    .line 480
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonProperty;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonProperty;

    if-eqz v0, :cond_0

    .line 482
    invoke-interface {v0}, Lcom/amazon/org/codehaus/jackson/annotate/JsonProperty;->value()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 486
    :cond_0
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonView;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public findSerializationContentType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 387
    const-class p2, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;

    if-eqz p1, :cond_0

    .line 389
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;->contentAs()Ljava/lang/Class;

    move-result-object p1

    .line 390
    const-class p2, Lcom/amazon/org/codehaus/jackson/map/annotate/NoClass;

    if-eq p1, p2, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializationInclusion(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .locals 1

    .line 343
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;

    if-eqz v0, :cond_0

    .line 345
    invoke-interface {v0}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;->include()Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object p1

    return-object p1

    .line 350
    :cond_0
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonWriteNullProperties;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/annotate/JsonWriteNullProperties;

    if-eqz p1, :cond_2

    .line 352
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/annotate/JsonWriteNullProperties;->value()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 353
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->ALWAYS:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    :goto_0
    return-object p1

    :cond_2
    return-object p2
.end method

.method public findSerializationKeyType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 374
    const-class p2, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;

    if-eqz p1, :cond_0

    .line 376
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;->keyAs()Ljava/lang/Class;

    move-result-object p1

    .line 377
    const-class p2, Lcom/amazon/org/codehaus/jackson/map/annotate/NoClass;

    if-eq p1, p2, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializationPropertyOrder(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 1

    .line 419
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonPropertyOrder;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/annotate/JsonPropertyOrder;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 420
    :cond_0
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/annotate/JsonPropertyOrder;->value()[Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findSerializationSortAlphabetically(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .line 425
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonPropertyOrder;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/annotate/JsonPropertyOrder;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 426
    :cond_0
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/annotate/JsonPropertyOrder;->alphabetic()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findSerializationType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 361
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;

    if-eqz p1, :cond_0

    .line 363
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;->as()Ljava/lang/Class;

    move-result-object p1

    .line 364
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/NoClass;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializationTyping(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    .locals 1

    .line 400
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 401
    :cond_0
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;->typing()Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findSerializationViews(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 407
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonView;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonView;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 408
    :cond_0
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonView;->value()[Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findSerializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
    .locals 2

    .line 292
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;

    if-eqz v0, :cond_0

    .line 294
    invoke-interface {v0}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;->using()Ljava/lang/Class;

    move-result-object v0

    .line 295
    const-class v1, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer$None;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 304
    :cond_0
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonRawValue;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonRawValue;

    if-eqz v0, :cond_1

    .line 305
    invoke-interface {v0}, Lcom/amazon/org/codehaus/jackson/annotate/JsonRawValue;->value()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getRawType()Ljava/lang/Class;

    move-result-object p1

    .line 308
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/std/RawSerializer;

    invoke-direct {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/std/RawSerializer;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findSettablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 1

    .line 624
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonProperty;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonProperty;

    if-eqz v0, :cond_0

    .line 626
    invoke-interface {v0}, Lcom/amazon/org/codehaus/jackson/annotate/JsonProperty;->value()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 628
    :cond_0
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonSetter;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonSetter;

    if-eqz v0, :cond_1

    .line 630
    invoke-interface {v0}, Lcom/amazon/org/codehaus/jackson/annotate/JsonSetter;->value()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 637
    :cond_1
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonView;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonBackReference;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonManagedReference;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :cond_3
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public findSubtypes(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .line 236
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonSubTypes;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/annotate/JsonSubTypes;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 238
    :cond_0
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/annotate/JsonSubTypes;->value()[Lcom/amazon/org/codehaus/jackson/annotate/JsonSubTypes$Type;

    move-result-object p1

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 241
    new-instance v4, Lcom/amazon/org/codehaus/jackson/map/jsontype/NamedType;

    invoke-interface {v3}, Lcom/amazon/org/codehaus/jackson/annotate/JsonSubTypes$Type;->value()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v3}, Lcom/amazon/org/codehaus/jackson/annotate/JsonSubTypes$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/amazon/org/codehaus/jackson/map/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public findTypeName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 1

    .line 249
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeName;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeName;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 250
    :cond_0
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeName;->value()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findTypeResolver(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<",
            "*>;"
        }
    .end annotation

    .line 199
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_findTypeResolver(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object p1

    return-object p1
.end method

.method public findValueInstantiator(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 1

    .line 604
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonValueInstantiator;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonValueInstantiator;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 606
    :cond_0
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonValueInstantiator;->value()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public hasAnyGetterAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1

    .line 663
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonAnyGetter;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public hasAnySetterAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1

    .line 654
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonAnySetter;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public hasAsValueAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1

    .line 466
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonValue;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/annotate/JsonValue;

    if-eqz p1, :cond_0

    .line 468
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/annotate/JsonValue;->value()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasCreatorAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Z
    .locals 1

    .line 673
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonCreator;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public hasIgnoreMarker(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z
    .locals 0

    .line 161
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_isIgnorable(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Z

    move-result p1

    return p1
.end method

.method public isHandled(Ljava/lang/annotation/Annotation;)Z
    .locals 1

    .line 35
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p1

    .line 45
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JacksonAnnotation;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isIgnorableConstructor(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z
    .locals 0

    .line 266
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_isIgnorable(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Z

    move-result p1

    return p1
.end method

.method public isIgnorableField(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;)Z
    .locals 0

    .line 277
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_isIgnorable(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Z

    move-result p1

    return p1
.end method

.method public isIgnorableMethod(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 0

    .line 261
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_isIgnorable(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Z

    move-result p1

    return p1
.end method

.method public isIgnorableType(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .line 97
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonIgnoreType;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/annotate/JsonIgnoreType;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 98
    :cond_0
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/annotate/JsonIgnoreType;->value()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public shouldUnwrapProperty(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .locals 1

    .line 153
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonUnwrapped;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/annotate/JsonUnwrapped;

    if-eqz p1, :cond_0

    .line 156
    invoke-interface {p1}, Lcom/amazon/org/codehaus/jackson/annotate/JsonUnwrapped;->enabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
