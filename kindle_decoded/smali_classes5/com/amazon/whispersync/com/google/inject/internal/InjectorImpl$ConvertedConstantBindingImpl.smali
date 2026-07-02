.class Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;
.super Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
.source "InjectorImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/spi/ConvertedConstantBinding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConvertedConstantBindingImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
        "TT;>;",
        "Lcom/amazon/whispersync/com/google/inject/spi/ConvertedConstantBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final originalBinding:Lcom/amazon/whispersync/com/google/inject/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "Ljava/lang/String;",
            ">;"
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

.field final typeConverterBinding:Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Binding;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;TT;",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;",
            ")V"
        }
    .end annotation

    .line 443
    invoke-interface {p4}, Lcom/amazon/whispersync/com/google/inject/spi/Element;->getSource()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/amazon/whispersync/com/google/inject/internal/ConstantFactory;

    invoke-static {p3}, Lcom/amazon/whispersync/com/google/inject/internal/Initializables;->of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Initializable;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstantFactory;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Initializable;)V

    sget-object v5, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->UNSCOPED:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)V

    .line 445
    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;->value:Ljava/lang/Object;

    .line 446
    invoke-static {p3}, Lcom/amazon/whispersync/com/google/inject/util/Providers;->of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;->provider:Lcom/amazon/whispersync/com/google/inject/Provider;

    .line 447
    iput-object p4, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;->originalBinding:Lcom/amazon/whispersync/com/google/inject/Binding;

    .line 448
    iput-object p5, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;->typeConverterBinding:Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;

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

    .line 456
    invoke-interface {p1, p0}, Lcom/amazon/whispersync/com/google/inject/spi/BindingTargetVisitor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/ConvertedConstantBinding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/amazon/whispersync/com/google/inject/Binder;)V
    .locals 1

    .line 476
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This element represents a synthetic binding."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 489
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 490
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;

    .line 491
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

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;->value:Ljava/lang/Object;

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

    .line 472
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;->getSourceKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->get(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

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

    .line 452
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;->provider:Lcom/amazon/whispersync/com/google/inject/Provider;

    return-object v0
.end method

.method public getSourceKey()Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;->originalBinding:Lcom/amazon/whispersync/com/google/inject/Binding;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/Binding;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v0

    return-object v0
.end method

.method public getTypeConverterBinding()Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;->typeConverterBinding:Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 501
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getScoping()Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;->value:Ljava/lang/Object;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 480
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    const-class v1, Lcom/amazon/whispersync/com/google/inject/spi/ConvertedConstantBinding;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;->getSourceKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v1

    const-string/jumbo v2, "sourceKey"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;->value:Ljava/lang/Object;

    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
