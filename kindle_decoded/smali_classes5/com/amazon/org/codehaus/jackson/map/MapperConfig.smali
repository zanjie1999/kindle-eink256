.class public abstract Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
.super Ljava/lang/Object;
.source "MapperConfig.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;,
        Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;,
        Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_DATE_FORMAT:Ljava/text/DateFormat;


# instance fields
.field protected _base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

.field protected _mixInAnnotations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected _mixInAnnotationsShared:Z

.field protected _subtypeResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;->instance:Lcom/amazon/org/codehaus/jackson/map/util/StdDateFormat;

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->DEFAULT_DATE_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;",
            "Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;",
            "Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;",
            "Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v10, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    sget-object v8, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->DEFAULT_DATE_FORMAT:Ljava/text/DateFormat;

    const/4 v7, 0x0

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;-><init>(Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;)V

    iput-object v10, v0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-object v1, p4

    .line 131
    iput-object v1, v0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_subtypeResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    const/4 v1, 0x1

    .line 133
    iput-boolean v1, v0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotationsShared:Z

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "TT;>;)V"
        }
    .end annotation

    .line 142
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    iget-object v1, p1, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_subtypeResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "TT;>;",
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;",
            ")V"
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    .line 151
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_subtypeResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    const/4 p2, 0x1

    .line 153
    iput-boolean p2, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotationsShared:Z

    .line 154
    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final addMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 499
    iput-boolean v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotationsShared:Z

    .line 500
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    goto :goto_0

    .line 501
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotationsShared:Z

    if-eqz v0, :cond_1

    .line 502
    iput-boolean v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotationsShared:Z

    .line 503
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    .line 505
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final appendAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->create(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    return-void
.end method

.method public abstract canOverrideAccessModifiers()Z
.end method

.method public constructSpecializedType(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 599
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getTypeFactory()Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructSpecializedType(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public final constructType(Lcom/amazon/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/TypeReference<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 592
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getTypeFactory()Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public final constructType(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 578
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getTypeFactory()Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public abstract createUnshared(Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;",
            ")TT;"
        }
    .end annotation
.end method

.method public final findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    :goto_0
    return-object p1
.end method

.method public abstract fromAnnotations(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    return-object v0
.end method

.method public getClassIntrospector()Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->getClassIntrospector()Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    return-object v0
.end method

.method public final getDateFormat()Ljava/text/DateFormat;
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultTyper(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<",
            "*>;"
        }
    .end annotation

    .line 543
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->getTypeResolverBuilder()Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultVisibilityChecker()Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->getVisibilityChecker()Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    return-object v0
.end method

.method public final getHandlerInstantiator()Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->getHandlerInstantiator()Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    return-object v0
.end method

.method public final getPropertyNamingStrategy()Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->getPropertyNamingStrategy()Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;

    move-result-object v0

    return-object v0
.end method

.method public final getSubtypeResolver()Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_subtypeResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    if-nez v0, :cond_0

    .line 555
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_subtypeResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_subtypeResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    return-object v0
.end method

.method public final getTypeFactory()Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->getTypeFactory()Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    return-object v0
.end method

.method public final insertAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->create(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    return-void
.end method

.method public abstract introspectClassAnnotations(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DESC:",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")TDESC;"
        }
    .end annotation
.end method

.method public introspectClassAnnotations(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DESC:",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)TDESC;"
        }
    .end annotation

    .line 634
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->introspectClassAnnotations(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;

    move-result-object p1

    return-object p1
.end method

.method public abstract introspectDirectClassAnnotations(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DESC:",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")TDESC;"
        }
    .end annotation
.end method

.method public introspectDirectClassAnnotations(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DESC:",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)TDESC;"
        }
    .end annotation

    .line 654
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->introspectDirectClassAnnotations(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;

    move-result-object p1

    return-object p1
.end method

.method public abstract isAnnotationProcessingEnabled()Z
.end method

.method public abstract isEnabled(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)Z
.end method

.method public final mixInCount()I
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final setAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 725
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    return-void
.end method

.method public setDateFormat(Ljava/text/DateFormat;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    .line 745
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->DEFAULT_DATE_FORMAT:Ljava/text/DateFormat;

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withDateFormat(Ljava/text/DateFormat;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    return-void
.end method

.method public final setMixInAnnotations(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 474
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 475
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 476
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 477
    new-instance v2, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    const/4 p1, 0x0

    .line 480
    iput-boolean p1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotationsShared:Z

    .line 481
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    return-void
.end method

.method public abstract shouldSortPropertiesAlphabetically()Z
.end method

.method public typeIdResolverInstance(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;"
        }
    .end annotation

    .line 697
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getHandlerInstantiator()Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {v0, p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;->typeIdResolverInstance(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 704
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->canOverrideAccessModifiers()Z

    move-result p1

    invoke-static {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    return-object p1
.end method

.method public typeResolverBuilderInstance(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<",
            "*>;>;)",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<",
            "*>;"
        }
    .end annotation

    .line 678
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getHandlerInstantiator()Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0, p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;->typeResolverBuilderInstance(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 685
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->canOverrideAccessModifiers()Z

    move-result p1

    invoke-static {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    return-object p1
.end method

.method public abstract withAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withAppendedAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withClassIntrospector(Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            ">;)TT;"
        }
    .end annotation
.end method

.method public abstract withDateFormat(Ljava/text/DateFormat;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/DateFormat;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withHandlerInstantiator(Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withInsertedAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withPropertyNamingStrategy(Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withSubtypeResolver(Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withTypeFactory(Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withTypeResolverBuilder(Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<",
            "*>;)TT;"
        }
    .end annotation
.end method

.method public abstract withVisibility(Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;",
            "Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withVisibilityChecker(Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;)TT;"
        }
    .end annotation
.end method
