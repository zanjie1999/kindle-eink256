.class final Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;
.super Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
.source "InstanceBindingImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/spi/InstanceBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
        "TT;>;",
        "Lcom/amazon/whispersync/com/google/inject/spi/InstanceBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final injectionPoints:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation
.end field

.field final instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final provider:Lcom/amazon/whispersync/com/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Ljava/util/Set;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory<",
            "+TT;>;",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ">;TT;)V"
        }
    .end annotation

    .line 42
    sget-object v5, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->EAGER_SINGLETON:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)V

    .line 43
    invoke-static {p5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;->injectionPoints:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    .line 44
    iput-object p6, p0, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    .line 45
    invoke-static {p6}, Lcom/amazon/whispersync/com/google/inject/util/Providers;->of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;->provider:Lcom/amazon/whispersync/com/google/inject/Provider;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Ljava/util/Set;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Scoping;",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ">;TT;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)V

    .line 51
    invoke-static {p4}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;->injectionPoints:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    .line 52
    iput-object p5, p0, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    .line 53
    invoke-static {p5}, Lcom/amazon/whispersync/com/google/inject/util/Providers;->of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;->provider:Lcom/amazon/whispersync/com/google/inject/Provider;

    return-void
.end method


# virtual methods
.method public acceptTargetVisitor(Lcom/amazon/whispersync/com/google/inject/spi/BindingTargetVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/spi/BindingTargetVisitor<",
            "-TT;TV;>;)TV;"
        }
    .end annotation

    .line 61
    invoke-interface {p1, p0}, Lcom/amazon/whispersync/com/google/inject/spi/BindingTargetVisitor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/InstanceBinding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/amazon/whispersync/com/google/inject/Binder;)V
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/Binder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->bind(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toInstance(Ljava/lang/Object;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 101
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 102
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;

    .line 103
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

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
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

    .line 73
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    instance-of v1, v0, Lcom/amazon/whispersync/com/google/inject/spi/HasDependencies;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/amazon/whispersync/com/google/inject/spi/HasDependencies;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/spi/HasDependencies;->getDependencies()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;->injectionPoints:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->forInjectionPoints(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getInjectionPoints()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;->injectionPoints:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    return-object v0
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public getProvider()Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;->provider:Lcom/amazon/whispersync/com/google/inject/Provider;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 113
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getScoping()Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 92
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    const-class v1, Lcom/amazon/whispersync/com/google/inject/spi/InstanceBinding;

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

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    const-string v2, "instance"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withKey(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .line 83
    new-instance v6, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getScoping()Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;->injectionPoints:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    iget-object v5, p0, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Ljava/util/Set;Ljava/lang/Object;)V

    return-object v6
.end method

.method public withScoping(Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/Scoping;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .line 79
    new-instance v6, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;->injectionPoints:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    iget-object v5, p0, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Ljava/util/Set;Ljava/lang/Object;)V

    return-object v6
.end method
