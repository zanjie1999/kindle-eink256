.class public final Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;
.super Ljava/lang/Object;
.source "PrivateElementsImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;


# instance fields
.field private elements:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Element;",
            ">;"
        }
    .end annotation
.end field

.field private elementsMutable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Element;",
            ">;"
        }
    .end annotation
.end field

.field private exposedKeysToSources:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap<",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private exposureBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/internal/ExposureBuilder<",
            "*>;>;"
        }
    .end annotation
.end field

.field private injector:Lcom/amazon/whispersync/com/google/inject/Injector;

.field private final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->elementsMutable:Ljava/util/List;

    .line 52
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->exposureBuilders:Ljava/util/List;

    const-string/jumbo v0, "source"

    .line 62
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->source:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 101
    invoke-interface {p1, p0}, Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public addExposureBuilder(Lcom/amazon/whispersync/com/google/inject/internal/ExposureBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/ExposureBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->exposureBuilders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyTo(Lcom/amazon/whispersync/com/google/inject/Binder;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->source:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/Binder;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->newPrivateBinder()Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    move-result-object p1

    .line 115
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/spi/Element;

    .line 116
    invoke-interface {v1, p1}, Lcom/amazon/whispersync/com/google/inject/spi/Element;->applyTo(Lcom/amazon/whispersync/com/google/inject/Binder;)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->getExposedKeys()Ljava/util/Set;

    .line 120
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->exposedKeysToSources:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->entrySet()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 121
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/amazon/whispersync/com/google/inject/PrivateBinder;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-interface {v2, v1}, Lcom/amazon/whispersync/com/google/inject/PrivateBinder;->expose(Lcom/amazon/whispersync/com/google/inject/Key;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Element;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->elements:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->elementsMutable:Ljava/util/List;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->elements:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->elementsMutable:Ljava/util/List;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->elements:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    return-object v0
.end method

.method public getElementsMutable()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Element;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->elementsMutable:Ljava/util/List;

    return-object v0
.end method

.method public getExposedKeys()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;>;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->exposedKeysToSources:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;

    if-nez v0, :cond_1

    .line 89
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->exposureBuilders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/com/google/inject/internal/ExposureBuilder;

    .line 91
    invoke-virtual {v2}, Lcom/amazon/whispersync/com/google/inject/internal/ExposureBuilder;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/whispersync/com/google/inject/internal/ExposureBuilder;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->exposedKeysToSources:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->exposureBuilders:Ljava/util/List;

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->exposedKeysToSources:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->keySet()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getExposedSource(Lcom/amazon/whispersync/com/google/inject/Key;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->getExposedKeys()Ljava/util/Set;

    .line 127
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->exposedKeysToSources:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p0, v4, v1

    const-string p1, "%s not exposed by %s."

    .line 128
    invoke-static {v3, p1, v4}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public getInjector()Lcom/amazon/whispersync/com/google/inject/Injector;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->injector:Lcom/amazon/whispersync/com/google/inject/Injector;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public initInjector(Lcom/amazon/whispersync/com/google/inject/Injector;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->injector:Lcom/amazon/whispersync/com/google/inject/Injector;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "injector already initialized"

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v0, "injector"

    .line 84
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/Injector;

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->injector:Lcom/amazon/whispersync/com/google/inject/Injector;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 133
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    const-class v1, Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->getExposedKeys()Ljava/util/Set;

    move-result-object v1

    const-string v2, "exposedKeys"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "source"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
