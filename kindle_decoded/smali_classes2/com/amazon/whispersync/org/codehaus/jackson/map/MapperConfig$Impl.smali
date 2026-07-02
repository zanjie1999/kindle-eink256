.class abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;
.source "MapperConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CFG::",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$ConfigFeature;",
        "T:",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl<",
        "TCFG;TT;>;>",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected _featureFlags:I


# direct methods
.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;Lcom/amazon/whispersync/org/codehaus/jackson/map/HandlerInstantiator;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector<",
            "+",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;",
            ">;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/HandlerInstantiator;",
            "I)V"
        }
    .end annotation

    .line 1025
    invoke-direct/range {p0 .. p7}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;Lcom/amazon/whispersync/org/codehaus/jackson/map/HandlerInstantiator;)V

    .line 1026
    iput p8, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl<",
            "TCFG;TT;>;)V"
        }
    .end annotation

    .line 1030
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;)V

    .line 1031
    iget p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl<",
            "TCFG;TT;>;I)V"
        }
    .end annotation

    .line 1035
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;)V

    .line 1036
    iput p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl;Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Base;Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl<",
            "TCFG;TT;>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Base;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;",
            ")V"
        }
    .end annotation

    .line 1044
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Base;Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    .line 1045
    iget p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    return-void
.end method

.method static collectFeatureDefaults(Ljava/lang/Class;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Enum<",
            "TF;>;:",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$ConfigFeature;",
            ">(",
            "Ljava/lang/Class<",
            "TF;>;)I"
        }
    .end annotation

    .line 1055
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Enum;

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    .line 1056
    check-cast v3, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$ConfigFeature;

    invoke-interface {v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$ConfigFeature;->enabledByDefault()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1057
    invoke-interface {v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$ConfigFeature;->getMask()I

    move-result v3

    or-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public disable(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCFG;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1132
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$ConfigFeature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    return-void
.end method

.method public enable(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCFG;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1120
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$ConfigFeature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    return-void
.end method

.method public isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)Z
    .locals 1

    .line 1102
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$ConfigFeature;->getMask()I

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

.method public set(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$ConfigFeature;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCFG;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    .line 1148
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl;->enable(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V

    goto :goto_0

    .line 1150
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl;->disable(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V

    :goto_0
    return-void
.end method

.method public varargs abstract with([Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TCFG;)TT;"
        }
    .end annotation
.end method

.method public varargs abstract without([Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TCFG;)TT;"
        }
    .end annotation
.end method
