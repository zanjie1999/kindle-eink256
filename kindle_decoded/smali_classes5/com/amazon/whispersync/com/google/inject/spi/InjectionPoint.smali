.class public final Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;
.super Ljava/lang/Object;
.source "InjectionPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Signature;,
        Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;,
        Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;,
        Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;,
        Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMethod;,
        Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableField;,
        Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final declaringType:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;"
        }
    .end annotation
.end field

.field private final dependencies:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final member:Ljava/lang/reflect/Member;

.field private final optional:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/reflect/Constructor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    .line 76
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->declaringType:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->optional:Z

    .line 78
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->forMember(Ljava/lang/reflect/Member;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;[[Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->dependencies:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    return-void
.end method

.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/reflect/Field;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "Z)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    .line 84
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->declaringType:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    .line 85
    iput-boolean p3, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->optional:Z

    .line 87
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p3

    .line 89
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {v0, p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 92
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getFieldType(Ljava/lang/reflect/Field;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p1

    invoke-static {p1, p2, p3, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->getKey(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;->getErrors()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    goto :goto_0

    :catch_1
    move-exception p1

    .line 94
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    :goto_0
    const/4 p1, 0x0

    .line 98
    :goto_1
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->throwConfigurationExceptionIfErrorsExist()V

    .line 100
    invoke-static {p3}, Lcom/amazon/whispersync/com/google/inject/internal/Nullability;->allowsNull([Ljava/lang/annotation/Annotation;)Z

    move-result p2

    const/4 p3, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->newDependency(Lcom/amazon/whispersync/com/google/inject/Key;ZI)Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->dependencies:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    return-void
.end method

.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/reflect/Method;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Z)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    .line 69
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->declaringType:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    .line 70
    iput-boolean p3, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->optional:Z

    .line 71
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p3

    invoke-direct {p0, p2, p1, p3}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->forMember(Ljava/lang/reflect/Member;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;[[Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->dependencies:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 0

    .line 58
    invoke-static {p0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->overrides(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result p0

    return p0
.end method

.method private static checkForMisplacedBindingAnnotations(Ljava/lang/reflect/Member;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Z
    .locals 4

    .line 382
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->findBindingAnnotation(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 390
    :cond_0
    instance-of v2, p0, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 392
    :try_start_0
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    return v1

    .line 399
    :catch_0
    :cond_1
    invoke-virtual {p1, p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->misplacedBindingAnnotation(Ljava/lang/reflect/Member;Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    const/4 p0, 0x1

    return p0
.end method

.method public static forConstructor(Ljava/lang/reflect/Constructor;)Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;"
        }
    .end annotation

    .line 207
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;-><init>(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public static forConstructor(Ljava/lang/reflect/Constructor;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "+TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;"
        }
    .end annotation

    .line 220
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 221
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->constructorNotDefinedByType(Ljava/lang/reflect/Constructor;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->throwConfigurationExceptionIfErrorsExist()V

    .line 226
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    invoke-direct {v0, p1, p0}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;-><init>(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public static forConstructorOf(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;"
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 240
    new-instance v1, Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 243
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_4

    aget-object v7, v2, v6

    .line 246
    const-class v8, Lcom/amazon/whispersync/com/google/inject/Inject;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/amazon/whispersync/com/google/inject/Inject;

    if-nez v8, :cond_1

    .line 248
    const-class v8, Lcom/amazon/whispersync/javax/inject/Inject;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/amazon/whispersync/javax/inject/Inject;

    if-nez v8, :cond_0

    goto :goto_2

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 254
    :cond_1
    invoke-interface {v8}, Lcom/amazon/whispersync/com/google/inject/Inject;->optional()Z

    move-result v8

    :goto_1
    if-eqz v8, :cond_2

    .line 258
    invoke-virtual {v1, v7}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->optionalConstructor(Ljava/lang/reflect/Constructor;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    :cond_2
    if-eqz v5, :cond_3

    .line 262
    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->tooManyConstructors(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 266
    :cond_3
    invoke-static {v7, v1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->checkForMisplacedBindingAnnotations(Ljava/lang/reflect/Member;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Z

    move-object v5, v7

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 269
    :cond_4
    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->throwConfigurationExceptionIfErrorsExist()V

    if-eqz v5, :cond_5

    .line 272
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    invoke-direct {v0, p0, v5}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;-><init>(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/reflect/Constructor;)V

    return-object v0

    :cond_5
    :try_start_0
    new-array v2, v4, [Ljava/lang/Class;

    .line 277
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 280
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    .line 282
    :cond_6
    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->missingConstructor(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 283
    new-instance p0, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw p0

    .line 286
    :cond_7
    :goto_3
    invoke-static {v2, v1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->checkForMisplacedBindingAnnotations(Ljava/lang/reflect/Member;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Z

    .line 287
    new-instance v3, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    invoke-direct {v3, p0, v2}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;-><init>(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 289
    :catch_0
    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->missingConstructor(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 290
    new-instance p0, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw p0
.end method

.method public static forConstructorOf(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;"
        }
    .end annotation

    .line 304
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->forConstructorOf(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    move-result-object p0

    return-object p0
.end method

.method public static forInstanceMethodsAndFields(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;)",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .line 355
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;-><init>()V

    const/4 v1, 0x0

    .line 356
    invoke-static {p0, v1, v0}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getInjectionPoints(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;ZLcom/amazon/whispersync/com/google/inject/internal/Errors;)Ljava/util/Set;

    move-result-object p0

    .line 357
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->hasErrors()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    .line 358
    :cond_0
    new-instance v1, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    invoke-virtual {v1, p0}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->withPartialValue(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/ConfigurationException;

    move-result-object p0

    throw p0
.end method

.method public static forInstanceMethodsAndFields(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .line 375
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->forInstanceMethodsAndFields(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private forMember(Ljava/lang/reflect/Member;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;[[Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;[[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "*>;>;"
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 107
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 109
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 112
    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getParameterTypes(Ljava/lang/reflect/Member;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    .line 114
    :try_start_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/annotation/Annotation;

    .line 115
    invoke-static {v3, p1, v4, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->getKey(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v3

    .line 116
    invoke-static {v4}, Lcom/amazon/whispersync/com/google/inject/internal/Nullability;->allowsNull([Ljava/lang/annotation/Annotation;)Z

    move-result v4

    invoke-direct {p0, v3, v4, v2}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->newDependency(Lcom/amazon/whispersync/com/google/inject/Key;ZI)Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 121
    invoke-virtual {v3}, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;->getErrors()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    goto :goto_0

    :catch_1
    move-exception v3

    .line 119
    invoke-virtual {v3}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->throwConfigurationExceptionIfErrorsExist()V

    .line 126
    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public static forStaticMethodsAndFields(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;)",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .line 319
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;-><init>()V

    const/4 v1, 0x1

    .line 321
    invoke-static {p0, v1, v0}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getInjectionPoints(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;ZLcom/amazon/whispersync/com/google/inject/internal/Errors;)Ljava/util/Set;

    move-result-object p0

    .line 322
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->hasErrors()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    .line 323
    :cond_0
    new-instance v1, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    invoke-virtual {v1, p0}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->withPartialValue(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/ConfigurationException;

    move-result-object p0

    throw p0
.end method

.method public static forStaticMethodsAndFields(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .line 340
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->forStaticMethodsAndFields(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static getAtInject(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/annotation/Annotation;
    .locals 1

    .line 466
    const-class v0, Lcom/amazon/whispersync/javax/inject/Inject;

    invoke-interface {p0, v0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 467
    const-class v0, Lcom/amazon/whispersync/com/google/inject/Inject;

    invoke-interface {p0, v0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getInjectionPoints(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;ZLcom/amazon/whispersync/com/google/inject/internal/Errors;)Ljava/util/Set;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;Z",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    .line 632
    new-instance v2, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;

    invoke-direct {v2}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;-><init>()V

    .line 635
    invoke-static/range {p0 .. p0}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->hierarchyFor(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Ljava/util/List;

    move-result-object v3

    .line 636
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move v7, v4

    const/4 v8, 0x0

    :goto_0
    if-ltz v7, :cond_c

    if-eqz v8, :cond_1

    if-ge v7, v4, :cond_1

    if-nez v7, :cond_0

    .line 641
    sget-object v9, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;->BOTTOM:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    iput-object v9, v8, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->position:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    goto :goto_1

    .line 643
    :cond_0
    sget-object v9, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;->MIDDLE:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    iput-object v9, v8, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->position:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    .line 647
    :cond_1
    :goto_1
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    .line 649
    invoke-virtual {v9}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v11, :cond_4

    aget-object v14, v10, v13

    .line 650
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v15

    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v15

    if-ne v15, v0, :cond_3

    .line 651
    invoke-static {v14}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getAtInject(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/annotation/Annotation;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 653
    new-instance v6, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableField;

    invoke-direct {v6, v9, v14, v15}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableField;-><init>(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    .line 654
    iget-boolean v15, v6, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;->jsr330:Z

    if-eqz v15, :cond_2

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v15

    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 655
    invoke-virtual {v1, v14}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->cannotInjectFinalField(Ljava/lang/reflect/Field;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 657
    :cond_2
    invoke-virtual {v2, v6}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;->add(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;)V

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 662
    :cond_4
    invoke-virtual {v9}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v10, v6

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_b

    aget-object v13, v6, v11

    .line 663
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v14

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v14

    if-ne v14, v0, :cond_8

    .line 664
    invoke-static {v13}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getAtInject(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 666
    new-instance v15, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMethod;

    invoke-direct {v15, v9, v13, v14}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMethod;-><init>(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    .line 668
    invoke-static {v13, v1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->checkForMisplacedBindingAnnotations(Ljava/lang/reflect/Member;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Z

    move-result v14

    invoke-static {v15, v1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->isValidMethod(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMethod;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    or-int v14, v14, v16

    if-eqz v14, :cond_5

    if-eqz v8, :cond_8

    .line 671
    invoke-virtual {v8, v13, v12, v15}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->removeIfOverriddenBy(Ljava/lang/reflect/Method;ZLcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMethod;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 673
    sget-object v14, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->logger:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v12, "Method: {0} is not a valid injectable method (because it either has misplaced binding annotations or specifies type parameters) but is overriding a method that is valid. Because it is not valid, the method will not be injected. To fix this, make the method a valid injectable method."

    invoke-virtual {v14, v15, v12, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    if-eqz v0, :cond_6

    .line 683
    invoke-virtual {v2, v15}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;->add(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;)V

    goto :goto_5

    :cond_6
    if-nez v8, :cond_7

    .line 692
    new-instance v8, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;

    invoke-direct {v8, v2}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;-><init>(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;)V

    goto :goto_4

    .line 696
    :cond_7
    invoke-virtual {v8, v13, v5, v15}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->removeIfOverriddenBy(Ljava/lang/reflect/Method;ZLcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMethod;)Z

    .line 698
    :goto_4
    invoke-virtual {v8, v15}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->add(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMethod;)V

    :cond_8
    :goto_5
    const/4 v14, 0x0

    goto :goto_6

    :cond_9
    if-eqz v8, :cond_8

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 702
    invoke-virtual {v8, v13, v14, v12}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$OverrideIndex;->removeIfOverriddenBy(Ljava/lang/reflect/Method;ZLcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMethod;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 704
    sget-object v15, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v12, "Method: {0} is not annotated with @Inject but is overriding a method that is annotated with @javax.inject.Inject.  Because it is not annotated with @Inject, the method will not be injected. To fix this, annotate the method with @Inject."

    invoke-virtual {v15, v5, v12, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    :goto_6
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x1

    const/4 v12, 0x0

    goto :goto_3

    :cond_b
    add-int/lit8 v7, v7, -0x1

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 715
    :cond_c
    invoke-virtual {v2}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 716
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 719
    :cond_d
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->builder()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;

    move-result-object v3

    .line 720
    iget-object v0, v2, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMembers;->head:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    move-object v2, v0

    :goto_7
    if-eqz v2, :cond_f

    .line 723
    :try_start_0
    invoke-virtual {v2}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;->toInjectionPoint()Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 725
    iget-boolean v4, v2, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;->optional:Z

    if-nez v4, :cond_e

    .line 726
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 721
    :cond_e
    :goto_8
    iget-object v2, v2, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;->next:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;

    goto :goto_7

    .line 730
    :cond_f
    invoke-virtual {v3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;->build()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method private static hierarchyFor(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;>;"
        }
    .end annotation

    .line 751
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 753
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 754
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getSupertype(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static isValidMethod(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMethod;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Z
    .locals 3

    .line 736
    iget-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMember;->jsr330:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 737
    iget-object p0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$InjectableMethod;->method:Ljava/lang/reflect/Method;

    .line 738
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    invoke-virtual {p1, p0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->cannotInjectAbstractMethod(Ljava/lang/reflect/Method;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    const/4 v2, 0x0

    .line 742
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    .line 743
    invoke-virtual {p1, p0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->cannotInjectMethodWithTypeParameters(Ljava/lang/reflect/Method;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method private newDependency(Lcom/amazon/whispersync/com/google/inject/Key;ZI)Lcom/amazon/whispersync/com/google/inject/spi/Dependency;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;ZI)",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "TT;>;"
        }
    .end annotation

    .line 131
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;-><init>(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;Lcom/amazon/whispersync/com/google/inject/Key;ZI)V

    return-object v0
.end method

.method private static overrides(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 2

    .line 766
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 767
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 770
    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 774
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 184
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    iget-object v1, p1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->declaringType:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->declaringType:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDeclaringType()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->declaringType:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    return-object v0
.end method

.method public getDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "*>;>;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->dependencies:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    return-object v0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->declaringType:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isOptional()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->optional:Z

    return v0
.end method

.method public isToolable()Z
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/AnnotatedElement;

    const-class v1, Lcom/amazon/whispersync/com/google/inject/spi/Toolable;

    invoke-interface {v0, v1}, Ljava/lang/reflect/AnnotatedElement;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Classes;->toString(Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
