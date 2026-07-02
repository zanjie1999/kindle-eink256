.class public final Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule;
.super Ljava/lang/Object;
.source "ProviderMethodsModule.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Module;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule$LogProvider;
    }
.end annotation


# instance fields
.field private final delegate:Ljava/lang/Object;

.field private final typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    .line 49
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule;->typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    return-void
.end method

.method public static forModule(Lcom/amazon/whispersync/com/google/inject/Module;)Lcom/amazon/whispersync/com/google/inject/Module;
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule;->forObject(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/Module;

    move-result-object p0

    return-object p0
.end method

.method public static forObject(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/Module;
    .locals 1

    .line 66
    instance-of v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule;

    if-eqz v0, :cond_0

    .line 67
    sget-object p0, Lcom/amazon/whispersync/com/google/inject/util/Modules;->EMPTY_MODULE:Lcom/amazon/whispersync/com/google/inject/Module;

    return-object p0

    .line 70
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized configure(Lcom/amazon/whispersync/com/google/inject/Binder;)V
    .locals 2

    monitor-enter p0

    .line 73
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule;->getProviderMethods(Lcom/amazon/whispersync/com/google/inject/Binder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;

    .line 74
    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->configure(Lcom/amazon/whispersync/com/google/inject/Binder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method createProviderMethod(Lcom/amazon/whispersync/com/google/inject/Binder;Ljava/lang/reflect/Method;)Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Binder;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod<",
            "TT;>;"
        }
    .end annotation

    .line 91
    invoke-interface {p1, p2}, Lcom/amazon/whispersync/com/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/Binder;

    move-result-object p1

    .line 92
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {v0, p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 95
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 96
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 97
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule;->typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    invoke-virtual {v2, p2}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getParameterTypes(Ljava/lang/reflect/Member;)Ljava/util/List;

    move-result-object v2

    .line 98
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    const/4 v4, 0x0

    .line 99
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 100
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    aget-object v6, v3, v4

    invoke-virtual {p0, v0, v5, p2, v6}, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule;->getKey(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v5

    .line 101
    const-class v6, Ljava/util/logging/Logger;

    invoke-static {v6}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amazon/whispersync/com/google/inject/Key;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 105
    const-class v5, Ljava/util/logging/Logger;

    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/UniqueAnnotations;->create()Ljava/lang/annotation/Annotation;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v5

    .line 106
    invoke-interface {p1, v5}, Lcom/amazon/whispersync/com/google/inject/Binder;->bind(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;

    move-result-object v6

    new-instance v8, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule$LogProvider;

    invoke-direct {v8, p2}, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule$LogProvider;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {v6, v8}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 109
    :cond_0
    invoke-static {v5}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->get(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-interface {p1, v5}, Lcom/amazon/whispersync/com/google/inject/Binder;->getProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule;->typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    invoke-virtual {v2, p2}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getReturnType(Ljava/lang/reflect/Method;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v2

    .line 116
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    invoke-virtual {p0, v0, v2, p2, v3}, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule;->getKey(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v3

    .line 117
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->findScopeAnnotation(Lcom/amazon/whispersync/com/google/inject/internal/Errors;[Ljava/lang/annotation/Annotation;)Ljava/lang/Class;

    move-result-object v8

    .line 120
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/com/google/inject/spi/Message;

    .line 121
    invoke-interface {p1, v2}, Lcom/amazon/whispersync/com/google/inject/Binder;->addError(Lcom/amazon/whispersync/com/google/inject/spi/Message;)V

    goto :goto_1

    .line 124
    :cond_2
    new-instance p1, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;

    iget-object v5, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v6

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;-><init>(Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/reflect/Method;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;Ljava/util/List;Ljava/lang/Class;)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 134
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method getKey(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;",
            "Ljava/lang/reflect/Member;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 129
    invoke-static {p1, p3, p4}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->findBindingAnnotation(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-nez p1, :cond_0

    .line 130
    invoke-static {p2}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p2, p1}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getProviderMethods(Lcom/amazon/whispersync/com/google/inject/Binder;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Binder;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod<",
            "*>;>;"
        }
    .end annotation

    .line 79
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    .line 81
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 82
    const-class v6, Lcom/amazon/whispersync/com/google/inject/Provides;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 83
    invoke-virtual {p0, p1, v5}, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule;->createProviderMethod(Lcom/amazon/whispersync/com/google/inject/Binder;Ljava/lang/reflect/Method;)Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
