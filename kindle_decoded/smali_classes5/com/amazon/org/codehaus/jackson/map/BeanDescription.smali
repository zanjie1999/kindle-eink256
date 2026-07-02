.class public abstract Lcom/amazon/org/codehaus/jackson/map/BeanDescription;
.super Ljava/lang/Object;
.source "BeanDescription.java"


# instance fields
.field protected final _type:Lcom/amazon/org/codehaus/jackson/type/JavaType;


# direct methods
.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/BeanDescription;->_type:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-void
.end method


# virtual methods
.method public abstract bindingsForBeanType()Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;
.end method

.method public abstract findAnyGetter()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;
.end method

.method public abstract findAnySetter()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;
.end method

.method public abstract findDefaultConstructor()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
.end method

.method public abstract findDeserializableFields(Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract findGetters(Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract findInjectables()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findJsonValueMethod()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;
.end method

.method public abstract findProperties()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/org/codehaus/jackson/map/BeanPropertyDefinition;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findSerializableFields(Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract findSetters(Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;)Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getBeanClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/BeanDescription;->_type:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public abstract getClassAnnotations()Lcom/amazon/org/codehaus/jackson/map/util/Annotations;
.end method

.method public abstract getClassInfo()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;
.end method

.method public abstract getIgnoredPropertyNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getType()Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/BeanDescription;->_type:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public abstract hasKnownClassAnnotations()Z
.end method

.method public abstract resolveType(Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
.end method
