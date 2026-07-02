.class final Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;
.super Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
.source "ConstructorBindingImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/spi/ConstructorBinding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
        "TT;>;",
        "Lcom/amazon/whispersync/com/google/inject/spi/ConstructorBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final constructorInjectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

.field private final factory:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Scoping;",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p2, p1, p3}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)V

    .line 57
    new-instance p2, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;-><init>(ZLcom/amazon/whispersync/com/google/inject/Key;)V

    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;

    .line 58
    new-instance p1, Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory;

    invoke-direct {p1, p4}, Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory;-><init>(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;)V

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory;->create()Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy;

    move-result-object p1

    .line 60
    iput-object p4, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->constructorInjectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    .line 61
    iget-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;

    new-instance p3, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;

    const/4 p4, 0x0

    invoke-direct {p3, p5, p1, p4, p4}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;-><init>(Ljava/util/Set;Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy;[Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;)V

    invoke-static {p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;->access$002(Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory<",
            "+TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Scoping;",
            "Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct/range {p0 .. p5}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)V

    .line 50
    iput-object p6, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;

    .line 51
    iput-object p7, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->constructorInjectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    return-void
.end method

.method static create(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Z)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Scoping;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "Z)",
            "Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 74
    invoke-virtual {p5}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->size()I

    move-result v0

    if-nez p2, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getDeclaringType()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {p5, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->missingImplementation(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 87
    :cond_1
    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Classes;->isInnerClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    invoke-virtual {p5, v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->cannotInjectInnerClass(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 91
    :cond_2
    invoke-virtual {p5, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->throwIfNewErrors(I)V

    if-nez p2, :cond_3

    .line 96
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->forConstructorOf(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    move-result-object p2
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {p5, p0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    move-object v7, p2

    .line 103
    invoke-virtual {p4}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->isExplicitlyScoped()Z

    move-result p2

    if-nez p2, :cond_4

    .line 104
    invoke-virtual {v7}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    .line 105
    invoke-static {p5, p2}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->findScopeAnnotation(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 107
    invoke-static {p2}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->forAnnotation(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object p2

    invoke-virtual {p5, v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p4

    invoke-static {p2, p0, p4}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->makeInjectable(Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object p4

    :cond_4
    move-object v5, p4

    .line 112
    invoke-virtual {p5, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->throwIfNewErrors(I)V

    .line 114
    new-instance v6, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;

    invoke-direct {v6, p6, p1}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;-><init>(ZLcom/amazon/whispersync/com/google/inject/Key;)V

    .line 115
    invoke-static {p1, p0, v6, p3, v5}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->scope(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    move-result-object v4

    .line 118
    new-instance p2, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;)V

    return-object p2
.end method


# virtual methods
.method public acceptTargetVisitor(Lcom/amazon/whispersync/com/google/inject/spi/BindingTargetVisitor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/spi/BindingTargetVisitor<",
            "-TT;TV;>;)TV;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;->access$000(Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "not initialized"

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 163
    invoke-interface {p1, p0}, Lcom/amazon/whispersync/com/google/inject/spi/BindingTargetVisitor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/ConstructorBinding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/amazon/whispersync/com/google/inject/Binder;)V
    .locals 3

    .line 202
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->getConstructor()Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    move-result-object v0

    .line 203
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getScoping()Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/amazon/whispersync/com/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/Binder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/amazon/whispersync/com/google/inject/Binder;->bind(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->getConstructor()Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getDeclaringType()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toConstructor(Ljava/lang/reflect/Constructor;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->applyTo(Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 217
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 218
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;

    .line 219
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/com/google/inject/Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getScoping()Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getScoping()Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->constructorInjectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->constructorInjectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    invoke-static {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getConstructor()Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;->access$000(Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Binding is not ready"

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;->access$000(Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;->getConstructionProxy()Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy;->getInjectionPoint()Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "*>;>;"
        }
    .end annotation

    .line 184
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->getConstructor()Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->getInjectableMembers()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;->build()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->forInjectionPoints(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getInjectableMembers()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;->access$000(Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Binding is not ready"

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;->access$000(Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;->getInjectableMembers()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method getInternalConstructor()Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;->access$000(Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;->access$000(Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;->getConstructionProxy()Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy;->getInjectionPoint()Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->constructorInjectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    return-object v0
.end method

.method getInternalDependencies()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "*>;>;"
        }
    .end annotation

    .line 145
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->builder()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;->access$000(Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;

    move-result-object v1

    if-nez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->constructorInjectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->constructorInjectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getDeclaringType()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->forInstanceMethodsAndFields(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->getConstructor()Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->getInjectableMembers()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;

    .line 158
    :catch_0
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;->build()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->forInjectionPoints(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 229
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getScoping()Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->constructorInjectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public initialize(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;

    iget-object v1, p1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->options:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v1, v1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;->disableCircularProxies:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;->access$102(Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;Z)Z

    .line 125
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->constructors:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->constructorInjectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    invoke-virtual {p1, v1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;->get(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;->access$002(Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;

    return-void
.end method

.method isInitialized()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;->access$000(Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 208
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    const-class v1, Lcom/amazon/whispersync/com/google/inject/spi/ConstructorBinding;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "source"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getScoping()Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object v1

    const-string/jumbo v2, "scope"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected withKey(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .line 196
    new-instance v8, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getScoping()Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;

    iget-object v7, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->constructorInjectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    const/4 v1, 0x0

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;)V

    return-object v8
.end method

.method protected withScoping(Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/Scoping;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .line 191
    new-instance v8, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v3

    iget-object v6, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->factory:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;

    iget-object v7, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->constructorInjectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    const/4 v1, 0x0

    move-object v0, v8

    move-object v4, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;)V

    return-object v8
.end method
