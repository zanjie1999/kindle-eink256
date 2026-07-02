.class public Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;
.super Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;
.source "BasicClassIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;,
        Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;,
        Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;,
        Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$MinimalMethodFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector<",
        "Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
        ">;"
    }
.end annotation


# static fields
.field protected static final BOOLEAN_DESC:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

.field public static final DEFAULT_GETTER_FILTER:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_SETTER_AND_GETTER_FILTER:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_SETTER_FILTER:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final INT_DESC:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

.field protected static final LONG_DESC:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

.field protected static final MINIMAL_FILTER:Lcom/amazon/org/codehaus/jackson/map/introspect/MethodFilter;

.field protected static final STRING_DESC:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

.field public static final instance:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v2

    .line 29
    invoke-static {v0}, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->forOtherUse(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->STRING_DESC:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 33
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 34
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->forOtherUse(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->BOOLEAN_DESC:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 38
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 39
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->forOtherUse(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->INT_DESC:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 43
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 44
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->forOtherUse(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->LONG_DESC:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 55
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;

    invoke-direct {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;-><init>(Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$1;)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->DEFAULT_GETTER_FILTER:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;

    .line 62
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;-><init>()V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->DEFAULT_SETTER_FILTER:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;

    .line 69
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;-><init>()V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->DEFAULT_SETTER_AND_GETTER_FILTER:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;

    .line 71
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$MinimalMethodFilter;

    invoke-direct {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$MinimalMethodFilter;-><init>(Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$1;)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->MINIMAL_FILTER:Lcom/amazon/org/codehaus/jackson/map/introspect/MethodFilter;

    .line 79
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;-><init>()V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->instance:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector;-><init>()V

    return-void
.end method


# virtual methods
.method protected _findCachedDesc(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 1

    .line 199
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    .line 200
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_0

    .line 201
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->STRING_DESC:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    return-object p1

    .line 203
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 204
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->BOOLEAN_DESC:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    return-object p1

    .line 206
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 207
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->INT_DESC:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    return-object p1

    .line 209
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 210
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->LONG_DESC:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public classWithCreators(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;"
        }
    .end annotation

    .line 182
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v0

    .line 183
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object p1

    .line 184
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, p1, p3}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object p1

    .line 185
    sget-object p2, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->MINIMAL_FILTER:Lcom/amazon/org/codehaus/jackson/map/introspect/MethodFilter;

    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->resolveMemberMethods(Lcom/amazon/org/codehaus/jackson/map/introspect/MethodFilter;)V

    const/4 p2, 0x1

    .line 187
    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->resolveCreators(Z)V

    return-object p1
.end method

.method public collectProperties(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;Z)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            "Z)",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;"
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->classWithCreators(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object p3

    .line 158
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->MINIMAL_FILTER:Lcom/amazon/org/codehaus/jackson/map/introspect/MethodFilter;

    invoke-virtual {p3, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->resolveMemberMethods(Lcom/amazon/org/codehaus/jackson/map/introspect/MethodFilter;)V

    .line 159
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->resolveFields()V

    .line 160
    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->constructPropertyCollector(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/org/codehaus/jackson/type/JavaType;Z)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->collect()Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;

    move-result-object p1

    return-object p1
.end method

.method protected constructPropertyCollector(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/org/codehaus/jackson/type/JavaType;Z)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Z)",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;"
        }
    .end annotation

    .line 173
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;

    invoke-direct {v0, p1, p4, p3, p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;-><init>(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;ZLcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)V

    return-object v0
.end method

.method public bridge synthetic forClassAnnotations(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->forClassAnnotations(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object p1

    return-object p1
.end method

.method public forClassAnnotations(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;"
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v0

    .line 129
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 130
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v1, p3}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object p3

    .line 131
    invoke-static {p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->forOtherUse(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic forCreation(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->forCreation(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object p1

    return-object p1
.end method

.method public forCreation(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 1

    .line 117
    invoke-virtual {p0, p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->_findCachedDesc(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->collectProperties(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;Z)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->forDeserialization(Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;)Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic forDeserialization(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->forDeserialization(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object p1

    return-object p1
.end method

.method public forDeserialization(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 1

    .line 106
    invoke-virtual {p0, p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->_findCachedDesc(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->collectProperties(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;Z)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->forDeserialization(Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;)Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic forDirectClassAnnotations(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->forDirectClassAnnotations(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object p1

    return-object p1
.end method

.method public forDirectClassAnnotations(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;"
        }
    .end annotation

    .line 138
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v0

    .line 139
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 140
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v1, p3}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object p3

    .line 142
    invoke-static {p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->forOtherUse(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic forSerialization(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->forSerialization(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object p1

    return-object p1
.end method

.method public forSerialization(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 1

    .line 94
    invoke-virtual {p0, p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->_findCachedDesc(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->collectProperties(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;Z)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->forSerialization(Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;)Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected getDeserializationMethodFilter(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;)Lcom/amazon/org/codehaus/jackson/map/introspect/MethodFilter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_GETTERS_AS_SETTERS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 240
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->DEFAULT_SETTER_AND_GETTER_FILTER:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;

    return-object p1

    .line 243
    :cond_0
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->DEFAULT_SETTER_FILTER:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;

    return-object p1
.end method

.method protected getSerializationMethodFilter(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;)Lcom/amazon/org/codehaus/jackson/map/introspect/MethodFilter;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;->DEFAULT_GETTER_FILTER:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;

    return-object p1
.end method
