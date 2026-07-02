.class public Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;
.super Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;
.source "DeserializationConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl<",
        "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;",
        "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
        ">;"
    }
.end annotation


# instance fields
.field protected final _nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

.field protected _problemHandlers:Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode<",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationProblemHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected _sortPropertiesAlphabetically:Z


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

    .line 406
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-static {v0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;->collectFeatureDefaults(Ljava/lang/Class;)I

    move-result v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;I)V

    .line 408
    sget-object v0, Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;->instance:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    iput-object v0, v1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;)V
    .locals 1

    .line 415
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-direct {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;I)V
    .locals 0

    .line 459
    invoke-direct {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;I)V

    .line 460
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;

    .line 461
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    .line 462
    iget-boolean p1, p1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    iput-boolean p1, p0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V
    .locals 1

    .line 437
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_subtypeResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    .line 438
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;

    .line 439
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    .line 440
    iget-boolean p1, p1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    iput-boolean p1, p0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)V
    .locals 1

    .line 448
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;)V

    .line 449
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;

    .line 450
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    .line 451
    iget-boolean p1, p1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    iput-boolean p1, p0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    return-void
.end method

.method private constructor <init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Ljava/util/HashMap;Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Ljava/util/HashMap<",
            "Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;",
            ")V"
        }
    .end annotation

    .line 427
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-direct {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    .line 428
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    .line 429
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_subtypeResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    return-void
.end method


# virtual methods
.method public addHandler(Lcom/amazon/org/codehaus/jackson/map/DeserializationProblemHandler;)V
    .locals 2

    .line 815
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;

    invoke-static {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;->contains(Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 816
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;

    invoke-direct {v0, p1, v1}, Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;-><init>(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;)V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;

    :cond_0
    return-void
.end method

.method public canOverrideAccessModifiers()Z
    .locals 1

    .line 709
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public clearHandlers()V
    .locals 1

    const/4 v0, 0x0

    .line 828
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;

    return-void
.end method

.method public createUnshared(Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotations:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 657
    iput-boolean v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_mixInAnnotationsShared:Z

    .line 658
    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    invoke-direct {v1, p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Ljava/util/HashMap;Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    return-object v1
.end method

.method public bridge synthetic createUnshared(Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->createUnshared(Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public deserializerInstance(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;>;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 890
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getHandlerInstantiator()Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {v0, p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;->deserializerInstance(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 897
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result p1

    invoke-static {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    return-object p1
.end method

.method public disable(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 777
    invoke-super {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;->disable(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V

    return-void
.end method

.method public bridge synthetic disable(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->disable(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)V

    return-void
.end method

.method public enable(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 766
    invoke-super {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;->enable(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V

    return-void
.end method

.method public bridge synthetic enable(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->enable(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)V

    return-void
.end method

.method public fromAnnotations(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 637
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    const/4 v1, 0x0

    .line 638
    invoke-static {p1, v0, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object p1

    .line 640
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->getDefaultVisibilityChecker()Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    .line 641
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findAutoDetectVisibility(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withVisibilityChecker(Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    return-void
.end method

.method public getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    .line 671
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_ANNOTATIONS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    invoke-super {p0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    return-object v0

    .line 674
    :cond_0
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/introspect/NopAnnotationIntrospector;->instance:Lcom/amazon/org/codehaus/jackson/map/introspect/NopAnnotationIntrospector;

    return-object v0
.end method

.method public getBase64Variant()Lcom/amazon/org/codehaus/jackson/Base64Variant;
    .locals 1

    .line 844
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/Base64Variants;->getDefaultVariant()Lcom/amazon/org/codehaus/jackson/Base64Variant;

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

    .line 720
    invoke-super {p0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getDefaultVisibilityChecker()Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 721
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_SETTERS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 722
    sget-object v1, Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;->withSetterVisibility(Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 724
    :cond_0
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_CREATORS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 725
    sget-object v1, Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;->withCreatorVisibility(Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 727
    :cond_1
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_FIELDS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 728
    sget-object v1, Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;->withFieldVisibility(Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final getNodeFactory()Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;

    return-object v0
.end method

.method public getProblemHandlers()Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode<",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationProblemHandler;",
            ">;"
        }
    .end annotation

    .line 803
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;

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

    .line 868
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getClassIntrospector()Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;->forDeserialization(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;

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

    .line 686
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

    .line 699
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getClassIntrospector()Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;->forDirectClassAnnotations(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;

    move-result-object p1

    return-object p1
.end method

.method public introspectForCreation(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;
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

    .line 877
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getClassIntrospector()Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;->forCreation(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;

    move-result-object p1

    return-object p1
.end method

.method public isAnnotationProcessingEnabled()Z
    .locals 1

    .line 704
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_ANNOTATIONS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z
    .locals 1

    .line 755
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->getMask()I

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

.method public bridge synthetic isEnabled(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)Z
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)Z

    move-result p1

    return p1
.end method

.method public keyDeserializerInstance(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;"
        }
    .end annotation

    .line 903
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getHandlerInstantiator()Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0, p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;->keyDeserializerInstance(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 910
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result p1

    invoke-static {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;

    return-object p1
.end method

.method protected passSerializationFeatures(I)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;
    .locals 1

    .line 474
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->SORT_PROPERTIES_ALPHABETICALLY:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->getMask()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    return-object p0
.end method

.method public set(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 788
    invoke-super {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;->set(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;Z)V

    return-void
.end method

.method public bridge synthetic set(Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;Z)V
    .locals 0

    .line 41
    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->set(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;Z)V

    return-void
.end method

.method public shouldSortPropertiesAlphabetically()Z
    .locals 1

    .line 714
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    return v0
.end method

.method public valueInstantiatorInstance(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;"
        }
    .end annotation

    .line 916
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getHandlerInstantiator()Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {v0, p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;->valueInstantiatorInstance(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 923
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result p1

    invoke-static {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    return-object p1
.end method

.method public varargs with([Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;
    .locals 4

    .line 573
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    .line 574
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 575
    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->getMask()I

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 577
    :cond_0
    new-instance p1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    invoke-direct {p1, p0, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;I)V

    return-object p1
.end method

.method public bridge synthetic with([Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;
    .locals 0

    .line 41
    check-cast p1, [Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->with([Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2

    .line 492
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->withAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withAppendedAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2

    .line 545
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withAppendedAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withAppendedAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->withAppendedAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withClassIntrospector(Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;"
        }
    .end annotation

    .line 487
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withClassIntrospector(Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withClassIntrospector(Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->withClassIntrospector(Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withDateFormat(Ljava/text/DateFormat;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withDateFormat(Ljava/text/DateFormat;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic withDateFormat(Ljava/text/DateFormat;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->withDateFormat(Ljava/text/DateFormat;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withHandlerInstantiator(Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->getHandlerInstantiator()Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withHandlerInstantiator(Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic withHandlerInstantiator(Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->withHandlerInstantiator(Lcom/amazon/org/codehaus/jackson/map/HandlerInstantiator;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withInsertedAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2

    .line 540
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withInsertedAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withInsertedAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->withInsertedAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withNodeFactory(Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;
    .locals 1

    .line 561
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/node/JsonNodeFactory;)V

    return-object v0
.end method

.method public withPropertyNamingStrategy(Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2

    .line 520
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withPropertyNamingStrategy(Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withPropertyNamingStrategy(Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->withPropertyNamingStrategy(Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withSubtypeResolver(Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;
    .locals 1

    .line 513
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    invoke-direct {v0, p0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;)V

    .line 514
    iput-object p1, v0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_subtypeResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    return-object v0
.end method

.method public bridge synthetic withSubtypeResolver(Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->withSubtypeResolver(Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withTypeFactory(Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->getTypeFactory()Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withTypeFactory(Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic withTypeFactory(Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->withTypeFactory(Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withTypeResolverBuilder(Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;"
        }
    .end annotation

    .line 507
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withTypeResolverBuilder(Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withTypeResolverBuilder(Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->withTypeResolverBuilder(Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withVisibility(Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2

    .line 502
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withVisibility(Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withVisibility(Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->withVisibility(Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withVisibilityChecker(Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;"
        }
    .end annotation

    .line 497
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->_base:Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;->withVisibilityChecker(Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withVisibilityChecker(Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->withVisibilityChecker(Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public varargs without([Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;
    .locals 4

    .line 589
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    .line 590
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 591
    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->getMask()I

    move-result v3

    not-int v3, v3

    and-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 593
    :cond_0
    new-instance p1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    invoke-direct {p1, p0, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;-><init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;I)V

    return-object p1
.end method

.method public bridge synthetic without([Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)Lcom/amazon/org/codehaus/jackson/map/MapperConfig$Impl;
    .locals 0

    .line 41
    check-cast p1, [Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->without([Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method
