.class public final Lcom/amazon/whispersync/com/google/inject/util/Providers;
.super Ljava/lang/Object;
.source "Providers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guicify(Lcom/amazon/whispersync/javax/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/javax/inject/Provider<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 72
    instance-of v0, p0, Lcom/amazon/whispersync/com/google/inject/Provider;

    if-eqz v0, :cond_0

    .line 73
    check-cast p0, Lcom/amazon/whispersync/com/google/inject/Provider;

    return-object p0

    :cond_0
    const-string/jumbo v0, "provider"

    .line 76
    invoke-static {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/javax/inject/Provider;

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->forInstanceMethodsAndFields(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    .line 81
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    new-instance p0, Lcom/amazon/whispersync/com/google/inject/util/Providers$2;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/com/google/inject/util/Providers$2;-><init>(Lcom/amazon/whispersync/javax/inject/Provider;)V

    return-object p0

    .line 92
    :cond_1
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 93
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    .line 94
    invoke-virtual {v2}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getDependencies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p0

    .line 97
    new-instance v1, Lcom/amazon/whispersync/com/google/inject/util/Providers$3;

    invoke-direct {v1, v0, p0}, Lcom/amazon/whispersync/com/google/inject/util/Providers$3;-><init>(Lcom/amazon/whispersync/javax/inject/Provider;Ljava/util/Set;)V

    return-object v1
.end method

.method public static of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/util/Providers$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/util/Providers$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
