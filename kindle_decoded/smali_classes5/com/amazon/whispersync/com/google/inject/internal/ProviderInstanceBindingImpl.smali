.class final Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;
.super Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
.source "ProviderInstanceBindingImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/spi/ProviderInstanceBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
        "TT;>;",
        "Lcom/amazon/whispersync/com/google/inject/spi/ProviderInstanceBinding<",
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

.field final providerInstance:Lcom/amazon/whispersync/com/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/Provider;Ljava/util/Set;)V
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
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "+TT;>;",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)V

    .line 45
    iput-object p6, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;->providerInstance:Lcom/amazon/whispersync/com/google/inject/Provider;

    .line 46
    invoke-static {p7}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;->injectionPoints:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Ljava/util/Set;Lcom/amazon/whispersync/com/google/inject/Provider;)V
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
            ">;",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "+TT;>;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)V

    .line 52
    invoke-static {p4}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;->injectionPoints:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    .line 53
    iput-object p5, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;->providerInstance:Lcom/amazon/whispersync/com/google/inject/Provider;

    return-void
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

    .line 58
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;->providerInstance:Lcom/amazon/whispersync/com/google/inject/Provider;

    instance-of v1, v0, Lcom/amazon/whispersync/com/google/inject/spi/ProviderWithExtensionVisitor;

    if-eqz v1, :cond_0

    .line 59
    check-cast v0, Lcom/amazon/whispersync/com/google/inject/spi/ProviderWithExtensionVisitor;

    invoke-interface {v0, p1, p0}, Lcom/amazon/whispersync/com/google/inject/spi/ProviderWithExtensionVisitor;->acceptExtensionVisitor(Lcom/amazon/whispersync/com/google/inject/spi/BindingTargetVisitor;Lcom/amazon/whispersync/com/google/inject/spi/ProviderInstanceBinding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 62
    :cond_0
    invoke-interface {p1, p0}, Lcom/amazon/whispersync/com/google/inject/spi/BindingTargetVisitor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/ProviderInstanceBinding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/amazon/whispersync/com/google/inject/Binder;)V
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getScoping()Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazon/whispersync/com/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/Binder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazon/whispersync/com/google/inject/Binder;->bind(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;->getProviderInstance()Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->applyTo(Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 107
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 108
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;

    .line 109
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

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;->providerInstance:Lcom/amazon/whispersync/com/google/inject/Provider;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;->providerInstance:Lcom/amazon/whispersync/com/google/inject/Provider;

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

    .line 75
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;->providerInstance:Lcom/amazon/whispersync/com/google/inject/Provider;

    instance-of v1, v0, Lcom/amazon/whispersync/com/google/inject/spi/HasDependencies;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/amazon/whispersync/com/google/inject/spi/HasDependencies;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/spi/HasDependencies;->getDependencies()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;->injectionPoints:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

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

    .line 71
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;->injectionPoints:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    return-object v0
.end method

.method public getProviderInstance()Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "+TT;>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;->providerInstance:Lcom/amazon/whispersync/com/google/inject/Provider;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 119
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

    .line 97
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    const-class v1, Lcom/amazon/whispersync/com/google/inject/spi/ProviderInstanceBinding;

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

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;->providerInstance:Lcom/amazon/whispersync/com/google/inject/Provider;

    const-string/jumbo v2, "provider"

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

    .line 86
    new-instance v6, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getScoping()Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;->injectionPoints:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    iget-object v5, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;->providerInstance:Lcom/amazon/whispersync/com/google/inject/Provider;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Ljava/util/Set;Lcom/amazon/whispersync/com/google/inject/Provider;)V

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

    .line 81
    new-instance v6, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;->injectionPoints:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    iget-object v5, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;->providerInstance:Lcom/amazon/whispersync/com/google/inject/Provider;

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Ljava/util/Set;Lcom/amazon/whispersync/com/google/inject/Provider;)V

    return-object v6
.end method
