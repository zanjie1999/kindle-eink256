.class public abstract Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;
.super Ljava/lang/Object;
.source "AnnotationIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;,
        Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nopInstance()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    .line 95
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/introspect/NopAnnotationIntrospector;->instance:Lcom/amazon/org/codehaus/jackson/map/introspect/NopAnnotationIntrospector;

    return-object v0
.end method

.method public static pair(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    .line 99
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;-><init>(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)V

    return-object v0
.end method


# virtual methods
.method public allIntrospectors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;",
            ">;"
        }
    .end annotation

    .line 120
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public allIntrospectors(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public findAutoDetectVisibility(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 0
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

    return-object p2
.end method

.method public findCachability(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract findContentDeserializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
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
.end method

.method public findContentSerializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract findDeserializablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
.end method

.method public abstract findDeserializationContentType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
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
.end method

.method public abstract findDeserializationKeyType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
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
.end method

.method public abstract findDeserializationType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
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
.end method

.method public abstract findDeserializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
.end method

.method public abstract findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public findFilterId(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract findGettablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
.end method

.method public abstract findIgnoreUnknownProperties(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
.end method

.method public findInjectableValueId(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract findKeyDeserializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
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
.end method

.method public findKeySerializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract findPropertiesToIgnore(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
.end method

.method public findPropertyContentTypeResolver(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract findPropertyNameForParam(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;
.end method

.method public findPropertyTypeResolver(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public findReferenceType(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract findRootName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
.end method

.method public abstract findSerializablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializationInclusion(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .locals 0

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

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract findSerializationPropertyOrder(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
.end method

.method public abstract findSerializationSortAlphabetically(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
.end method

.method public abstract findSerializationType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract findSerializationTyping(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;
.end method

.method public abstract findSerializationViews(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract findSerializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
.end method

.method public abstract findSettablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
.end method

.method public findSubtypes(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public findTypeName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

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

    const/4 p1, 0x0

    return-object p1
.end method

.method public findValueInstantiator(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasAnyGetterAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasAnySetterAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract hasAsValueAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
.end method

.method public hasCreatorAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasIgnoreMarker(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z
    .locals 1

    .line 395
    instance-of v0, p1, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v0, :cond_0

    .line 396
    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableMethod(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result p1

    return p1

    .line 398
    :cond_0
    instance-of v0, p1, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;

    if-eqz v0, :cond_1

    .line 399
    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableField(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;)Z

    move-result p1

    return p1

    .line 401
    :cond_1
    instance-of v0, p1, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-eqz v0, :cond_2

    .line 402
    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableConstructor(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public abstract isHandled(Ljava/lang/annotation/Annotation;)Z
.end method

.method public abstract isIgnorableConstructor(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z
.end method

.method public abstract isIgnorableField(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;)Z
.end method

.method public abstract isIgnorableMethod(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
.end method

.method public isIgnorableType(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public shouldUnwrapProperty(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
