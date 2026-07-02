.class public abstract Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
.super Ljava/lang/Object;
.source "BindingImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Binding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/Binding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

.field private final internalFactory:Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final key:Lcom/amazon/whispersync/com/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile provider:Lcom/amazon/whispersync/com/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final scoping:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

.field private final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)V
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
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    .line 41
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    .line 42
    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->source:Ljava/lang/Object;

    .line 43
    iput-object p4, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->internalFactory:Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    .line 44
    iput-object p5, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->scoping:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Scoping;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->internalFactory:Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    .line 49
    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    .line 50
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->source:Ljava/lang/Object;

    .line 51
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    .line 52
    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->scoping:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    return-void
.end method


# virtual methods
.method public acceptScopingVisitor(Lcom/amazon/whispersync/com/google/inject/spi/BindingScopingVisitor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/spi/BindingScopingVisitor<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->scoping:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->acceptVisitor(Lcom/amazon/whispersync/com/google/inject/spi/BindingScopingVisitor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public acceptVisitor(Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 93
    invoke-interface {p1, p0}, Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor;->visit(Lcom/amazon/whispersync/com/google/inject/Binding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getInjector()Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    return-object v0
.end method

.method public getInternalFactory()Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory<",
            "+TT;>;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->internalFactory:Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    return-object v0
.end method

.method public getKey()Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    return-object v0
.end method

.method public getProvider()Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->provider:Lcom/amazon/whispersync/com/google/inject/Provider;

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->provider:Lcom/amazon/whispersync/com/google/inject/Provider;

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getProvider() not supported for module bindings"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->provider:Lcom/amazon/whispersync/com/google/inject/Provider;

    return-object v0
.end method

.method public getScoping()Lcom/amazon/whispersync/com/google/inject/internal/Scoping;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->scoping:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public isConstant()Z
    .locals 1

    .line 89
    instance-of v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InstanceBinding;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 109
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    const-class v1, Lcom/amazon/whispersync/com/google/inject/Binding;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;-><init>(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->scoping:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    const-string/jumbo v2, "scope"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->source:Ljava/lang/Object;

    const-string/jumbo v2, "source"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected withKey(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .line 105
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method protected withScoping(Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/Scoping;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .line 101
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method
