.class public Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;
.super Ljava/lang/Object;
.source "ProviderMethod.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/spi/ProviderWithDependencies;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/spi/ProviderWithDependencies<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final dependencies:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final exposed:Z

.field private final instance:Ljava/lang/Object;

.field private final key:Lcom/amazon/whispersync/com/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final method:Ljava/lang/reflect/Method;

.field private final parameterProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final scopeAnnotation:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/reflect/Method;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;Ljava/util/List;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "*>;>;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "*>;>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    .line 56
    iput-object p6, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->scopeAnnotation:Ljava/lang/Class;

    .line 57
    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->instance:Ljava/lang/Object;

    .line 58
    iput-object p4, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->dependencies:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    .line 59
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    .line 60
    iput-object p5, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->parameterProviders:Ljava/util/List;

    .line 61
    const-class p1, Lcom/amazon/whispersync/com/google/inject/Exposed;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->exposed:Z

    const/4 p1, 0x1

    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-void
.end method


# virtual methods
.method public configure(Lcom/amazon/whispersync/com/google/inject/Binder;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/Binder;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->scopeAnnotation:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->bind(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->scopeAnnotation:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->bind(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 88
    :goto_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->exposed:Z

    if-eqz v0, :cond_1

    .line 91
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/PrivateBinder;->expose(Lcom/amazon/whispersync/com/google/inject/Key;)V

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 123
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;

    .line 125
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    iget-object v2, p1, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->instance:Ljava/lang/Object;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->instance:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->parameterProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 98
    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->parameterProviders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-interface {v3}, Lcom/amazon/whispersync/com/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->instance:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 109
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Exceptions;->throwCleanly(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    .line 107
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
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

    .line 114
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->dependencies:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    return-object v0
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->instance:Ljava/lang/Object;

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

    .line 67
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@Provides "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$StackTraceElements;->forMember(Ljava/lang/reflect/Member;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
