.class final Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;
.super Ljava/lang/Object;
.source "MembersInjectorStore.java"


# instance fields
.field private final cache:Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/FailableCache<",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

.field private final typeListenerBindings:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore$1;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;)V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;->cache:Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;

    .line 48
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    .line 49
    invoke-static {p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;->typeListenerBindings:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;->createWithListeners(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;

    move-result-object p0

    return-object p0
.end method

.method private createWithListeners(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 86
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->size()I

    move-result v0

    .line 90
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->forInstanceMethodsAndFields(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 92
    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 93
    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->getPartialValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 95
    :goto_0
    invoke-virtual {p0, v1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;->getInjectors(Ljava/util/Set;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object v1

    .line 96
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->throwIfNewErrors(I)V

    .line 98
    new-instance v2, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;

    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v3, v3, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->lookups:Lcom/amazon/whispersync/com/google/inject/internal/Lookups;

    invoke-direct {v2, p2, v3}, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/Lookups;)V

    .line 99
    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;->typeListenerBindings:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    invoke-virtual {v3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;

    .line 100
    invoke-virtual {v4}, Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;->getTypeMatcher()Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    :try_start_1
    invoke-virtual {v4}, Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;->getListener()Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;

    move-result-object v5

    invoke-interface {v5, p1, v2}, Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;->hear(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    .line 104
    invoke-virtual {p2, v4, p1, v5}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errorNotifyingTypeListener(Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/Throwable;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    goto :goto_1

    .line 108
    :cond_1
    invoke-virtual {v2}, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->invalidate()V

    .line 109
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->throwIfNewErrors(I)V

    .line 111
    new-instance p2, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    invoke-direct {p2, v0, p1, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;)V

    return-object p2
.end method


# virtual methods
.method public get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;->cache:Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;->get(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;

    return-object p1
.end method

.method getInjectors(Ljava/util/Set;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ">;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "Lcom/amazon/whispersync/com/google/inject/internal/SingleMemberInjector;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 120
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    .line 122
    :try_start_0
    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->isOptional()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v2

    .line 125
    :goto_1
    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/reflect/Field;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/amazon/whispersync/com/google/inject/internal/SingleFieldInjector;

    iget-object v4, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    invoke-direct {v3, v4, v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/SingleFieldInjector;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    goto :goto_2

    :cond_1
    new-instance v3, Lcom/amazon/whispersync/com/google/inject/internal/SingleMethodInjector;

    iget-object v4, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    invoke-direct {v3, v4, v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/SingleMethodInjector;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    .line 128
    :goto_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 133
    :cond_2
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public hasTypeListeners()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;->typeListenerBindings:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method remove(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;)Z"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;->cache:Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
