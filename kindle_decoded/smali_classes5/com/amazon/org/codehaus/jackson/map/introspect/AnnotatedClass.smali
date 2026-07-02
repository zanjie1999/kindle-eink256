.class public final Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;
.super Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;
.source "AnnotatedClass.java"


# static fields
.field private static final NO_ANNOTATION_MAPS:[Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;


# instance fields
.field protected final _annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

.field protected final _class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected _classAnnotations:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

.field protected _constructors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation
.end field

.field protected _creatorMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected _defaultConstructor:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

.field protected _fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation
.end field

.field protected _memberMethods:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;

.field protected final _mixInResolver:Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;

.field protected final _primaryMixIn:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected final _superTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    .line 15
    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->NO_ANNOTATION_MAPS:[Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/util/List;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;",
            "Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;",
            ")V"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    .line 110
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_superTypes:Ljava/util/List;

    .line 111
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    .line 112
    iput-object p4, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 113
    :cond_0
    invoke-interface {p4, p1}, Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    .line 115
    iput-object p5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    return-void
.end method

.method private _emptyAnnotationMap()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 1

    .line 866
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;-><init>()V

    return-object v0
.end method

.method private _emptyAnnotationMaps(I)[Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 3

    if-nez p1, :cond_0

    .line 871
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->NO_ANNOTATION_MAPS:[Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    return-object p1

    .line 873
    :cond_0
    new-array v0, p1, [Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 875
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private _isIncludableField(Ljava/lang/reflect/Field;)Z
    .locals 2

    .line 906
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 910
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p1

    .line 911
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public static construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;",
            "Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 132
    invoke-static {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/util/ClassUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 133
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;-><init>(Ljava/lang/Class;Ljava/util/List;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 134
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->resolveClassAnnotations()V

    return-object v0
.end method

.method public static constructWithoutSuperTypes(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;",
            "Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;"
        }
    .end annotation

    .line 146
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 147
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;-><init>(Ljava/lang/Class;Ljava/util/List;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 148
    invoke-virtual {v6}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->resolveClassAnnotations()V

    return-object v6
.end method


# virtual methods
.method protected _addClassMixIns(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    if-eqz v0, :cond_0

    .line 505
    invoke-interface {v0, p2}, Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addClassMixIns(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method protected _addClassMixIns(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 516
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 517
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v5, v4}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 518
    invoke-virtual {p1, v4}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 528
    :cond_2
    invoke-static {p3, p2}, Lcom/amazon/org/codehaus/jackson/map/util/ClassUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Class;

    .line 529
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v3, p3, v1

    .line 530
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v4, v3}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 531
    invoke-virtual {p1, v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method protected _addConstructorMixIns(Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 546
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 547
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    aget-object v5, p1, v4

    .line 548
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_1

    .line 549
    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-eqz v6, :cond_4

    .line 550
    invoke-virtual {p0, v5, v6, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Constructor;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;Z)V

    goto :goto_4

    :cond_1
    if-nez v3, :cond_2

    .line 554
    new-array v3, v0, [Lcom/amazon/org/codehaus/jackson/map/introspect/MemberKey;

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_2

    .line 556
    new-instance v7, Lcom/amazon/org/codehaus/jackson/map/introspect/MemberKey;

    iget-object v8, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-virtual {v8}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/amazon/org/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 559
    :cond_2
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/introspect/MemberKey;

    invoke-direct {v6, v5}, Lcom/amazon/org/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v0, :cond_4

    .line 562
    aget-object v8, v3, v7

    invoke-virtual {v6, v8}, Lcom/amazon/org/codehaus/jackson/map/introspect/MemberKey;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 565
    :cond_3
    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v6, v7}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Constructor;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;Z)V

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method protected _addFactoryMixIns(Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 577
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_5

    aget-object v5, p1, v4

    .line 578
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_3

    .line 581
    :cond_0
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_1

    goto :goto_3

    :cond_1
    if-nez v3, :cond_2

    .line 585
    new-array v3, v0, [Lcom/amazon/org/codehaus/jackson/map/introspect/MemberKey;

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_2

    .line 587
    new-instance v7, Lcom/amazon/org/codehaus/jackson/map/introspect/MemberKey;

    iget-object v8, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v8}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/amazon/org/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 590
    :cond_2
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/introspect/MemberKey;

    invoke-direct {v6, v5}, Lcom/amazon/org/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v0, :cond_4

    .line 592
    aget-object v8, v3, v7

    invoke-virtual {v6, v8}, Lcom/amazon/org/codehaus/jackson/map/introspect/MemberKey;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 595
    :cond_3
    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v6, v7}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Method;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;Z)V

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected _addFieldMixIns(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;)V"
        }
    .end annotation

    .line 733
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 734
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    invoke-static {p2, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/util/ClassUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    .line 736
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    .line 737
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 741
    invoke-direct {p0, v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_isIncludableField(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 744
    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 746
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;

    if-eqz v4, :cond_3

    .line 748
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v3, v6

    .line 749
    iget-object v8, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v8, v7}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 750
    invoke-virtual {v4, v7}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;->addOrOverride(Ljava/lang/annotation/Annotation;)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected _addFields(Ljava/util/Map;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 696
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 702
    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addFields(Ljava/util/Map;Ljava/lang/Class;)V

    .line 703
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 705
    invoke-direct {p0, v4}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_isIncludableField(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 713
    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructField(Ljava/lang/reflect/Field;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v4

    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 716
    :cond_1
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    if-eqz v1, :cond_2

    .line 717
    invoke-interface {v1, p2}, Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 719
    invoke-virtual {p0, v0, p2, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addFieldMixIns(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method protected _addMemberMethods(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/introspect/MethodFilter;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/MethodFilter;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;",
            ")V"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 613
    invoke-virtual/range {p0 .. p5}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addMethodMixIns(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/introspect/MethodFilter;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 620
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length p4, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_5

    aget-object v2, p1, v1

    .line 621
    invoke-virtual {p0, v2, p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_isIncludableMethod(Ljava/lang/reflect/Method;Lcom/amazon/org/codehaus/jackson/map/introspect/MethodFilter;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 624
    :cond_2
    invoke-virtual {p3, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->find(Ljava/lang/reflect/Method;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v3

    if-nez v3, :cond_3

    .line 626
    invoke-virtual {p0, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructMethod(Ljava/lang/reflect/Method;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v3

    .line 627
    invoke-virtual {p3, v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->add(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    .line 629
    invoke-virtual {p5, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->remove(Ljava/lang/reflect/Method;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 631
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Method;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;Z)V

    goto :goto_1

    .line 637
    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addMixUnders(Ljava/lang/reflect/Method;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    .line 646
    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_4

    .line 647
    invoke-virtual {v3, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->withMethod(Ljava/lang/reflect/Method;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->add(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected _addMethodMixIns(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/introspect/MethodFilter;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/MethodFilter;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;",
            ")V"
        }
    .end annotation

    .line 657
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 658
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    invoke-static {p4, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/util/ClassUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    .line 660
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Class;

    .line 661
    invoke-virtual {p4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p4

    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p4, v1

    .line 662
    invoke-virtual {p0, v2, p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_isIncludableMethod(Ljava/lang/reflect/Method;Lcom/amazon/org/codehaus/jackson/map/introspect/MethodFilter;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 665
    :cond_1
    invoke-virtual {p3, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->find(Ljava/lang/reflect/Method;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 671
    invoke-virtual {p0, v2, v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addMixUnders(Ljava/lang/reflect/Method;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto :goto_1

    .line 677
    :cond_2
    invoke-virtual {p0, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructMethod(Ljava/lang/reflect/Method;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v2

    invoke-virtual {p5, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->add(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected _addMixOvers(Ljava/lang/reflect/Constructor;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;",
            "Z)V"
        }
    .end annotation

    .line 930
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 931
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v5, v4}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 932
    invoke-virtual {p2, v4}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->addOrOverride(Ljava/lang/annotation/Annotation;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    .line 936
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 937
    array-length p3, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_3

    .line 938
    aget-object v1, p1, v0

    array-length v3, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 939
    invoke-virtual {p2, v0, v5}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->addOrOverrideParam(ILjava/lang/annotation/Annotation;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected _addMixOvers(Ljava/lang/reflect/Method;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;Z)V
    .locals 6

    .line 952
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 953
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v5, v4}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 954
    invoke-virtual {p2, v4}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->addOrOverride(Ljava/lang/annotation/Annotation;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    .line 958
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 959
    array-length p3, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_3

    .line 960
    aget-object v1, p1, v0

    array-length v3, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 961
    invoke-virtual {p2, v0, v5}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->addOrOverrideParam(ILjava/lang/annotation/Annotation;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected _addMixUnders(Ljava/lang/reflect/Method;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 4

    .line 973
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 974
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v3, v2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 975
    invoke-virtual {p2, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected _collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 5

    .line 854
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;-><init>()V

    if-eqz p1, :cond_1

    .line 856
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 857
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v4, v3}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 858
    invoke-virtual {v0, v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->add(Ljava/lang/annotation/Annotation;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected _collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 4

    .line 844
    array-length v0, p1

    .line 845
    new-array v1, v0, [Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 847
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected _constructConstructor(Ljava/lang/reflect/Constructor;Z)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;Z)",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;"
        }
    .end annotation

    .line 778
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v0, :cond_0

    .line 779
    new-instance p2, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    invoke-direct {p0, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_emptyAnnotationMaps(I)[Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    return-object p2

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 782
    new-instance p2, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {p2, p1, v1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    return-object p2

    .line 784
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p2

    .line 785
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    .line 793
    array-length v2, p2

    if-eq v1, v2, :cond_5

    .line 797
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    .line 799
    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    array-length v3, p2

    const/4 v5, 0x2

    add-int/2addr v3, v5

    if-ne v1, v3, :cond_2

    .line 801
    array-length v0, p2

    add-int/2addr v0, v5

    new-array v0, v0, [[Ljava/lang/annotation/Annotation;

    .line 802
    array-length v2, p2

    invoke-static {p2, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object p2

    :goto_0
    move-object v6, v0

    move-object v0, p2

    move-object p2, v6

    goto :goto_1

    .line 804
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 806
    array-length v2, p2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_3

    .line 809
    array-length v0, p2

    add-int/2addr v0, v3

    new-array v0, v0, [[Ljava/lang/annotation/Annotation;

    .line 810
    array-length v2, p2

    invoke-static {p2, v4, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 811
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object p2

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    .line 815
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error: constructor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has mismatch: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " parameters; "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sets of annotations"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_5
    invoke-virtual {p0, p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v0

    .line 821
    :goto_2
    new-instance p2, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {p2, p1, v1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    return-object p2
.end method

.method protected _constructCreatorMethod(Ljava/lang/reflect/Method;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 3

    .line 827
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v0, :cond_0

    .line 828
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    invoke-direct {p0, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_emptyAnnotationMaps(I)[Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    return-object v0

    .line 830
    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    return-object v0
.end method

.method protected _constructField(Ljava/lang/reflect/Field;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;
    .locals 2

    .line 836
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v0, :cond_0

    .line 837
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;-><init>(Ljava/lang/reflect/Field;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    return-object v0

    .line 839
    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;-><init>(Ljava/lang/reflect/Field;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    return-object v0
.end method

.method protected _constructMethod(Ljava/lang/reflect/Method;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 3

    .line 770
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 771
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v2

    invoke-direct {v0, p1, v2, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    return-object v0

    .line 773
    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v2

    invoke-direct {v0, p1, v2, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    return-object v0
.end method

.method protected _isIncludableMethod(Ljava/lang/reflect/Method;Lcom/amazon/org/codehaus/jackson/map/introspect/MethodFilter;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 888
    invoke-interface {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/MethodFilter;->includeMethod(Ljava/lang/reflect/Method;)Z

    move-result p2

    if-nez p2, :cond_0

    return v0

    .line 895
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public fields()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    if-nez v0, :cond_0

    .line 244
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->find(Ljava/lang/String;[Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object p1

    return-object p1
.end method

.method protected getAllAnnotations()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    return-object v0
.end method

.method public getAnnotated()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic getAnnotated()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotated()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
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

    .line 170
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 173
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotations()Lcom/amazon/org/codehaus/jackson/map/util/Annotations;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    return-object v0
.end method

.method public getConstructors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 209
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDefaultConstructor()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    return-object v0
.end method

.method public getFieldCount()I
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getGenericType()Ljava/lang/reflect/Type;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    return-object v0
.end method

.method public getMemberMethodCount()I
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->size()I

    move-result v0

    return v0
.end method

.method public getModifiers()I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    return-object v0
.end method

.method public getStaticMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    if-nez v0, :cond_0

    .line 217
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasAnnotations()Z
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public memberMethods()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    return-object v0
.end method

.method public resolveClassAnnotations()V
    .locals 7

    .line 265
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    .line 267
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v1, :cond_0

    return-void

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 273
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {p0, v0, v2, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addClassMixIns(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 277
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v5, v4}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 278
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v5, v4}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_superTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 285
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {p0, v3, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addClassMixIns(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;)V

    .line 286
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, v1, v4

    .line 287
    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v6, v5}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 288
    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v6, v5}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 301
    :cond_6
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    const-class v1, Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addClassMixIns(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;)V

    return-void
.end method

.method public resolveCreators(Z)V
    .locals 9

    const/4 v0, 0x0

    .line 317
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    .line 318
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 319
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_3

    aget-object v6, v1, v4

    .line 320
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_0

    .line 321
    invoke-virtual {p0, v6, v5}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructConstructor(Ljava/lang/reflect/Constructor;Z)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v5

    iput-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 324
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    if-nez v5, :cond_1

    .line 325
    new-instance v5, Ljava/util/ArrayList;

    const/16 v7, 0xa

    array-length v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    .line 327
    :cond_1
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-virtual {p0, v6, v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructConstructor(Ljava/lang/reflect/Constructor;Z)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 332
    :cond_3
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    if-eqz v1, :cond_5

    .line 333
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 334
    :cond_4
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addConstructorMixIns(Ljava/lang/Class;)V

    .line 343
    :cond_5
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    if-eqz v1, :cond_8

    .line 344
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-eqz v2, :cond_6

    .line 345
    invoke-virtual {v1, v2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableConstructor(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 346
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 349
    :cond_6
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    if-eqz v1, :cond_8

    .line 351
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_8

    .line 352
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-virtual {v2, v4}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableConstructor(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 353
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 359
    :cond_8
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    if-eqz p1, :cond_f

    .line 363
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v0, p1

    :goto_3
    if-ge v3, v0, :cond_c

    aget-object v1, p1, v3

    .line 364
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_4

    .line 367
    :cond_9
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-ge v2, v5, :cond_a

    goto :goto_4

    .line 372
    :cond_a
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    if-nez v2, :cond_b

    .line 373
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    .line 375
    :cond_b
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructCreatorMethod(Ljava/lang/reflect/Method;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 378
    :cond_c
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 379
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addFactoryMixIns(Ljava/lang/Class;)V

    .line 382
    :cond_d
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    if-eqz p1, :cond_f

    .line 383
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    if-eqz p1, :cond_f

    .line 385
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :cond_e
    :goto_5
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_f

    .line 386
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableMethod(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 387
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_f
    return-void
.end method

.method public resolveFields()V
    .locals 3

    .line 456
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 457
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addFields(Ljava/util/Map;Ljava/lang/Class;)V

    .line 458
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    goto :goto_0

    .line 461
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    .line 462
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method public resolveFields(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 487
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->resolveFields()V

    return-void
.end method

.method public resolveMemberMethods(Lcom/amazon/org/codehaus/jackson/map/introspect/MethodFilter;)V
    .locals 9

    .line 405
    const-class v0, Ljava/lang/Object;

    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-direct {v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;-><init>()V

    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    .line 406
    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-direct {v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;-><init>()V

    .line 408
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    move-object v2, p0

    move-object v4, p1

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addMemberMethods(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/introspect/MethodFilter;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V

    .line 411
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_superTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Class;

    .line 412
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v2, v3}, Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    :goto_1
    move-object v6, v2

    .line 413
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    move-object v2, p0

    move-object v4, p1

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addMemberMethods(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/introspect/MethodFilter;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V

    goto :goto_0

    .line 416
    :cond_1
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    if-eqz v2, :cond_2

    .line 417
    invoke-interface {v2, v0}, Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 419
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    move-object v2, p0

    move-object v4, p1

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addMethodMixIns(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/introspect/MethodFilter;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V

    .line 429
    :cond_2
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    if-eqz p1, :cond_4

    .line 430
    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 431
    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 432
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 433
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 435
    :try_start_0
    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClasses()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 437
    invoke-virtual {p0, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_constructMethod(Ljava/lang/reflect/Method;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v2

    .line 438
    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Method;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;Z)V

    .line 439
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-virtual {v1, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->add(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    :cond_4
    return-void
.end method

.method public resolveMemberMethods(Lcom/amazon/org/codehaus/jackson/map/introspect/MethodFilter;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 478
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->resolveMemberMethods(Lcom/amazon/org/codehaus/jackson/map/introspect/MethodFilter;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[AnnotedClass "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withAnnotations(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->withAnnotations(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object p1

    return-object p1
.end method

.method public withAnnotations(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .locals 7

    .line 120
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_superTypes:Ljava/util/List;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->_mixInResolver:Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;-><init>(Ljava/lang/Class;Ljava/util/List;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    return-object v6
.end method
