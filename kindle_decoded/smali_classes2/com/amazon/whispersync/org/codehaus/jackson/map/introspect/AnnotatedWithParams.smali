.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;
.source "AnnotatedWithParams.java"


# instance fields
.field protected final _paramAnnotations:[Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;


# direct methods
.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 33
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;

    return-void
.end method


# virtual methods
.method public final addIfNotPresent(Ljava/lang/annotation/Annotation;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;->_annotations:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V

    return-void
.end method

.method public final addOrOverride(Ljava/lang/annotation/Annotation;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;->_annotations:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;->add(Ljava/lang/annotation/Annotation;)V

    return-void
.end method

.method public final addOrOverrideParam(ILjava/lang/annotation/Annotation;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;-><init>()V

    .line 56
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;

    aput-object v0, v1, p1

    .line 58
    :cond_0
    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;->add(Ljava/lang/annotation/Annotation;)V

    return-void
.end method

.method public abstract call()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract call([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract call1(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;->_annotations:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public final getAnnotationCount()I
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;->_annotations:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;->size()I

    move-result v0

    return v0
.end method

.method public final getParameter(I)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    .locals 3

    .line 138
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;

    aget-object v2, v2, p1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Ljava/lang/reflect/Type;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;I)V

    return-object v0
.end method

.method public final getParameterAnnotations(I)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 130
    array-length v1, v0

    if-gt p1, v1, :cond_0

    .line 131
    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getParameterClass(I)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getParameterCount()I
.end method

.method public abstract getParameterType(I)Ljava/lang/reflect/Type;
.end method

.method protected getType(Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;[Ljava/lang/reflect/TypeVariable;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;",
            "[",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 93
    array-length v0, p2

    if-lez v0, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;->childInstance()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;

    move-result-object p1

    .line 95
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 96
    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-virtual {p1, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;->_addPlaceholder(Ljava/lang/String;)V

    .line 100
    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v1

    if-nez v4, :cond_0

    .line 101
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->unknownType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v4

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v4

    .line 103
    :goto_1
    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;->addBinding(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method protected replaceParameterAnnotations(ILcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;

    aput-object p2, v0, p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameter(I)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object p1

    return-object p1
.end method

.method public final resolveParameterType(ILcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameterType(I)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method
