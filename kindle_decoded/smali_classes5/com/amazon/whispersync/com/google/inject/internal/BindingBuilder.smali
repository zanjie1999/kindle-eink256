.class public Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;
.super Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;
.source "BindingBuilder.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder<",
        "TT;>;",
        "Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/com/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Binder;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Element;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;-><init>(Lcom/amazon/whispersync/com/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;)V

    return-void
.end method

.method private copyErrorsToBinder(Lcom/amazon/whispersync/com/google/inject/ConfigurationException;)V
    .locals 2

    .line 174
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/com/google/inject/spi/Message;

    .line 175
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    invoke-interface {v1, v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->addError(Lcom/amazon/whispersync/com/google/inject/spi/Message;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic annotatedWith(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;->annotatedWith(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic annotatedWith(Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;->annotatedWith(Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public annotatedWith(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->annotatedWithInternal(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    return-object p0
.end method

.method public annotatedWith(Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->annotatedWithInternal(Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    return-object p0
.end method

.method public bridge synthetic to(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;->to(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic to(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;->to(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic to(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;->to(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public to(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "+TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "linkedKey"

    .line 67
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->checkNotTargetted()V

    .line 69
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->getBinding()Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/amazon/whispersync/com/google/inject/internal/LinkedBindingImpl;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getScoping()Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/LinkedBindingImpl;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/Key;)V

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->setBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    return-object p0
.end method

.method public to(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "+TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 63
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;->to(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 59
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;->to(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toConstructor(Ljava/lang/reflect/Constructor;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>(",
            "Ljava/lang/reflect/Constructor<",
            "TS;>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .line 138
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;->toConstructor(Ljava/lang/reflect/Constructor;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toConstructor(Ljava/lang/reflect/Constructor;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>(",
            "Ljava/lang/reflect/Constructor<",
            "TS;>;",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "+TS;>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    const-string v0, "constructor"

    .line 143
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "type"

    .line 144
    invoke-static {p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->checkNotTargetted()V

    .line 147
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->getBinding()Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 151
    :try_start_0
    invoke-static {p2}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->forInstanceMethodsAndFields(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v7, v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 153
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;->copyErrorsToBinder(Lcom/amazon/whispersync/com/google/inject/ConfigurationException;)V

    .line 154
    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->getPartialValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    goto :goto_0

    .line 159
    :goto_1
    :try_start_1
    invoke-static {p1, p2}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->forConstructor(Ljava/lang/reflect/Constructor;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    move-result-object v6

    .line 160
    new-instance p1, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getScoping()Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object v5

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;Ljava/util/Set;)V

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->setBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    :try_end_1
    .catch Lcom/amazon/whispersync/com/google/inject/ConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 163
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;->copyErrorsToBinder(Lcom/amazon/whispersync/com/google/inject/ConfigurationException;)V

    :goto_2
    return-object p0
.end method

.method public toInstance(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->checkNotTargetted()V

    if-eqz p1, :cond_0

    .line 82
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->forInstanceMethodsAndFields(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;->copyErrorsToBinder(Lcom/amazon/whispersync/com/google/inject/ConfigurationException;)V

    .line 85
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->getPartialValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Binding to null instances is not allowed. Use toProvider(Providers.of(null)) if this is your intended behaviour."

    invoke-interface {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 92
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->getBinding()Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 93
    new-instance v7, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v3

    sget-object v4, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->EAGER_SINGLETON:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-object v1, v7

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Ljava/util/Set;Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->setBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    return-void
.end method

.method public bridge synthetic toProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toProvider(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "+",
            "Lcom/amazon/whispersync/javax/inject/Provider<",
            "+TT;>;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder<",
            "TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "providerKey"

    .line 128
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->checkNotTargetted()V

    .line 131
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->getBinding()Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 132
    new-instance v1, Lcom/amazon/whispersync/com/google/inject/internal/LinkedProviderBindingImpl;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getScoping()Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/LinkedProviderBindingImpl;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/Key;)V

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->setBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    return-object p0
.end method

.method public toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "+TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder<",
            "TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "provider"

    .line 98
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->checkNotTargetted()V

    .line 104
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->forInstanceMethodsAndFields(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 106
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;->copyErrorsToBinder(Lcom/amazon/whispersync/com/google/inject/ConfigurationException;)V

    .line 107
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->getPartialValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    :goto_0
    move-object v5, v0

    .line 110
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->getBinding()Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 111
    new-instance v7, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getScoping()Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object v4

    move-object v1, v7

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Ljava/util/Set;Lcom/amazon/whispersync/com/google/inject/Provider;)V

    invoke-virtual {p0, v7}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->setBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    return-object p0
.end method

.method public toProvider(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "+",
            "Lcom/amazon/whispersync/javax/inject/Provider<",
            "+TT;>;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 123
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/whispersync/javax/inject/Provider<",
            "+TT;>;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 118
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BindingBuilder<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->getBinding()Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
