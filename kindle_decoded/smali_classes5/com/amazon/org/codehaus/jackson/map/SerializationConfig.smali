.class public Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;
.super Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;
.source "SerializationConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl<",
        "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;",
        "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
        ">;"
    }
.end annotation


# instance fields
.field protected _filterProvider:Lcom/amazon/org/codehaus/jackson/map/ser/FilterProvider;

.field protected _serializationInclusion:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

.field protected _serializationView:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;)V
    .locals 10
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

    move-object v9, p0

    .line 490
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-static {v0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;->collectFeatureDefaults(Ljava/lang/Class;)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;I)V

    const/4 v0, 0x0

    .line 459
    iput-object v0, v9, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 492
    iput-object v0, v9, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lcom/amazon/org/codehaus/jackson/map/ser/FilterProvider;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;)V
    .locals 1

    .line 499
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-direct {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;I)V
    .locals 0

    .line 570
    invoke-direct {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;I)V

    const/4 p2, 0x0

    .line 459
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 571
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 572
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    .line 573
    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lcom/amazon/org/codehaus/jackson/map/ser/FilterProvider;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lcom/amazon/org/codehaus/jackson/map/ser/FilterProvider;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V
    .locals 1

    .line 520
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_subtypeResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    const/4 p2, 0x0

    .line 459
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 521
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 522
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    .line 523
    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lcom/amazon/org/codehaus/jackson/map/ser/FilterProvider;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lcom/amazon/org/codehaus/jackson/map/ser/FilterProvider;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)V
    .locals 1

    .line 553
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;)V

    const/4 v0, 0x0

    .line 459
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 554
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 556
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    if-ne p2, v0, :cond_0

    .line 557
    iget p2, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_PROPERTIES:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->getMask()I

    move-result v0

    not-int v0, v0

    and-int/2addr p2, v0

    iput p2, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    goto :goto_0

    .line 559
    :cond_0
    iget p2, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_PROPERTIES:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->getMask()I

    move-result v0

    or-int/2addr p2, v0

    iput p2, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    .line 561
    :goto_0
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    .line 562
    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lcom/amazon/org/codehaus/jackson/map/ser/FilterProvider;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lcom/amazon/org/codehaus/jackson/map/ser/FilterProvider;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/ser/FilterProvider;)V
    .locals 1

    .line 531
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;)V

    const/4 v0, 0x0

    .line 459
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 532
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 533
    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    .line 534
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lcom/amazon/org/codehaus/jackson/map/ser/FilterProvider;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 542
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;)V

    const/4 v0, 0x0

    .line 459
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 543
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 544
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    .line 545
    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lcom/amazon/org/codehaus/jackson/map/ser/FilterProvider;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lcom/amazon/org/codehaus/jackson/map/ser/FilterProvider;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Ljava/util/HashMap;Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Ljava/util/HashMap<",
            "Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;",
            ")V"
        }
    .end annotation

    .line 510
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-direct {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    .line 511
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    .line 512
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_subtypeResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    return-void
.end method


# virtual methods
.method public canOverrideAccessModifiers()Z
    .locals 1

    .line 823
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic createUnshared(Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->createUnshared(Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public createUnshared(Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;
    .locals 2

    .line 774
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 775
    iput-boolean v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotationsShared:Z

    .line 776
    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    invoke-direct {v1, p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Ljava/util/HashMap;Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    return-object v1
.end method

.method public bridge synthetic disable(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->disable(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)V

    return-void
.end method

.method public disable(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 889
    invoke-super {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;->disable(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V

    return-void
.end method

.method public bridge synthetic enable(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->enable(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)V

    return-void
.end method

.method public enable(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 878
    invoke-super {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;->enable(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V

    return-void
.end method

.method public fromAnnotations(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 754
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    const/4 v1, 0x0

    .line 755
    invoke-static {p1, v0, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object p1

    .line 756
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->getDefaultVisibilityChecker()Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findAutoDetectVisibility(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withVisibilityChecker(Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    .line 760
    invoke-virtual {v0, p1, v1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationInclusion(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object v1

    .line 761
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    if-eq v1, v2, :cond_0

    .line 762
    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->setSerializationInclusion(Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)V

    .line 765
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationTyping(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 767
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->USE_STATIC_TYPING:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;->STATIC:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->set(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;Z)V

    :cond_2
    return-void
.end method

.method public getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    .line 785
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->USE_ANNOTATIONS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    invoke-super {p0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    return-object v0

    .line 788
    :cond_0
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->nopInstance()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVisibilityChecker()Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;"
        }
    .end annotation

    .line 834
    invoke-super {p0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getDefaultVisibilityChecker()Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 835
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_GETTERS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 836
    sget-object v1, Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;->withGetterVisibility(Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 839
    :cond_0
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_IS_GETTERS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 840
    sget-object v1, Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;->withIsGetterVisibility(Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 842
    :cond_1
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_FIELDS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 843
    sget-object v1, Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;->withFieldVisibility(Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getFilterProvider()Lcom/amazon/org/codehaus/jackson/map/ser/FilterProvider;
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lcom/amazon/org/codehaus/jackson/map/ser/FilterProvider;

    return-object v0
.end method

.method public getSerializationInclusion()Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    if-eqz v0, :cond_0

    return-object v0

    .line 922
    :cond_0
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_PROPERTIES:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->ALWAYS:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    :goto_0
    return-object v0
.end method

.method public getSerializationView()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 915
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    return-object v0
.end method

.method public introspect(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .line 973
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getClassIntrospector()Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;->forSerialization(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;

    move-result-object p1

    return-object p1
.end method

.method public introspectClassAnnotations(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .line 800
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getClassIntrospector()Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;->forClassAnnotations(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;

    move-result-object p1

    return-object p1
.end method

.method public introspectDirectClassAnnotations(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .line 813
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getClassIntrospector()Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;->forDirectClassAnnotations(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;

    move-result-object p1

    return-object p1
.end method

.method public isAnnotationProcessingEnabled()Z
    .locals 1

    .line 818
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->USE_ANNOTATIONS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isEnabled(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)Z
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)Z

    move-result p1

    return p1
.end method

.method public isEnabled(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)Z
    .locals 1

    .line 867
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->getMask()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public serializerInstance(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;>;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 985
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getHandlerInstantiator()Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 987
    invoke-virtual {v0, p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;->serializerInstance(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 992
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->canOverrideAccessModifiers()Z

    move-result p1

    invoke-static {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    return-object p1
.end method

.method public bridge synthetic set(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;Z)V
    .locals 0

    .line 38
    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->set(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;Z)V

    return-void
.end method

.method public set(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 900
    invoke-super {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;->set(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;Z)V

    return-void
.end method

.method public final setDateFormat(Ljava/text/DateFormat;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1011
    invoke-super {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->setDateFormat(Ljava/text/DateFormat;)V

    .line 1012
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->set(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;Z)V

    return-void
.end method

.method public setSerializationInclusion(Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 940
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 942
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    if-ne p1, v0, :cond_0

    .line 943
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_PROPERTIES:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->disable(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)V

    goto :goto_0

    .line 945
    :cond_0
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_PROPERTIES:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->enable(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)V

    :goto_0
    return-void
.end method

.method public setSerializationView(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1026
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    return-void
.end method

.method public shouldSortPropertiesAlphabetically()Z
    .locals 1

    .line 828
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->SORT_PROPERTIES_ALPHABETICALLY:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SerializationConfig: flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with([Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;
    .locals 0

    .line 38
    check-cast p1, [Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->with([Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public varargs with([Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;
    .locals 4

    .line 692
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    .line 693
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 694
    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->getMask()I

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 696
    :cond_0
    new-instance p1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    invoke-direct {p1, p0, v0}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;I)V

    return-object p1
.end method

.method public bridge synthetic withAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->withAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;
    .locals 2

    .line 589
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withAppendedAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->withAppendedAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withAppendedAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;
    .locals 2

    .line 599
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withAppendedAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withClassIntrospector(Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->withClassIntrospector(Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withClassIntrospector(Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;"
        }
    .end annotation

    .line 584
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withClassIntrospector(Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withDateFormat(Ljava/text/DateFormat;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->withDateFormat(Ljava/text/DateFormat;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withDateFormat(Ljava/text/DateFormat;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;
    .locals 3

    .line 641
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withDateFormat(Ljava/text/DateFormat;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    new-array p1, v2, [Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 644
    sget-object v2, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v2, p1, v1

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->with([Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array p1, v2, [Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 646
    sget-object v2, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v2, p1, v1

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->without([Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public withFilters(Lcom/amazon/org/codehaus/jackson/map/ser/FilterProvider;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;
    .locals 1

    .line 666
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/ser/FilterProvider;)V

    return-object v0
.end method

.method public bridge synthetic withHandlerInstantiator(Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->withHandlerInstantiator(Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withHandlerInstantiator(Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;
    .locals 2

    .line 653
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withHandlerInstantiator(Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withInsertedAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->withInsertedAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withInsertedAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;
    .locals 2

    .line 594
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withInsertedAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withPropertyNamingStrategy(Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->withPropertyNamingStrategy(Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withPropertyNamingStrategy(Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;
    .locals 2

    .line 626
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withPropertyNamingStrategy(Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public withSerializationInclusion(Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;
    .locals 1

    .line 680
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)V

    return-object v0
.end method

.method public bridge synthetic withSubtypeResolver(Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->withSubtypeResolver(Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withSubtypeResolver(Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;
    .locals 1

    .line 619
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    invoke-direct {v0, p0}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;)V

    .line 620
    iput-object p1, v0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_subtypeResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    return-object v0
.end method

.method public bridge synthetic withTypeFactory(Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->withTypeFactory(Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withTypeFactory(Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;
    .locals 2

    .line 631
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withTypeFactory(Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withTypeResolverBuilder(Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->withTypeResolverBuilder(Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withTypeResolverBuilder(Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;"
        }
    .end annotation

    .line 614
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withTypeResolverBuilder(Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public withView(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;"
        }
    .end annotation

    .line 673
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Ljava/lang/Class;)V

    return-object v0
.end method

.method public bridge synthetic withVisibility(Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->withVisibility(Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withVisibility(Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;
    .locals 2

    .line 609
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withVisibility(Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withVisibilityChecker(Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->withVisibilityChecker(Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withVisibilityChecker(Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;"
        }
    .end annotation

    .line 604
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withVisibilityChecker(Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic without([Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;
    .locals 0

    .line 38
    check-cast p1, [Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->without([Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public varargs without([Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;
    .locals 4

    .line 708
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    .line 709
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 710
    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->getMask()I

    move-result v3

    not-int v3, v3

    and-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 712
    :cond_0
    new-instance p1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    invoke-direct {p1, p0, v0}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;I)V

    return-object p1
.end method
