.class Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ProviderBindingImpl;
.super Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
.source "InjectorImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/spi/ProviderBinding;
.implements Lcom/amazon/whispersync/com/google/inject/spi/HasDependencies;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderBindingImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
        "Lcom/amazon/whispersync/com/google/inject/Provider<",
        "TT;>;>;",
        "Lcom/amazon/whispersync/com/google/inject/spi/ProviderBinding<",
        "Lcom/amazon/whispersync/com/google/inject/Provider<",
        "TT;>;>;",
        "Lcom/amazon/whispersync/com/google/inject/spi/HasDependencies;"
    }
.end annotation


# instance fields
.field final providedBinding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/Binding;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;>;",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "TT;>;)V"
        }
    .end annotation

    .line 326
    invoke-interface {p3}, Lcom/amazon/whispersync/com/google/inject/spi/Element;->getSource()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p3}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ProviderBindingImpl;->createInternalFactory(Lcom/amazon/whispersync/com/google/inject/Binding;)Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    move-result-object v4

    sget-object v5, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->UNSCOPED:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)V

    .line 328
    check-cast p3, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ProviderBindingImpl;->providedBinding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    return-void
.end method

.method static createInternalFactory(Lcom/amazon/whispersync/com/google/inject/Binding;)Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory<",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;>;"
        }
    .end annotation

    .line 332
    invoke-interface {p0}, Lcom/amazon/whispersync/com/google/inject/Binding;->getProvider()Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p0

    .line 333
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ProviderBindingImpl$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ProviderBindingImpl$1;-><init>(Lcom/amazon/whispersync/com/google/inject/Provider;)V

    return-object v0
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
            "-",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;TV;>;)TV;"
        }
    .end annotation

    .line 345
    invoke-interface {p1, p0}, Lcom/amazon/whispersync/com/google/inject/spi/BindingTargetVisitor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/ProviderBinding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/amazon/whispersync/com/google/inject/Binder;)V
    .locals 1

    .line 349
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This element represents a synthetic binding."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 365
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ProviderBindingImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 366
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ProviderBindingImpl;

    .line 367
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

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ProviderBindingImpl;->providedBinding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ProviderBindingImpl;->providedBinding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    invoke-static {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getDependencies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "*>;>;"
        }
    .end annotation

    .line 360
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ProviderBindingImpl;->getProvidedKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->get(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getProvidedKey()Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "+TT;>;"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ProviderBindingImpl;->providedBinding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 377
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getScoping()Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ProviderBindingImpl;->providedBinding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 353
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    const-class v1, Lcom/amazon/whispersync/com/google/inject/spi/ProviderBinding;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ProviderBindingImpl;->getProvidedKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v1

    const-string/jumbo v2, "providedKey"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
