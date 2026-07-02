.class final Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;
.super Ljava/lang/Object;
.source "InheritingState.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/State;


# instance fields
.field private final blacklistedKeys:Lcom/amazon/whispersync/com/google/inject/internal/WeakKeySet;

.field private final converters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;",
            ">;"
        }
    .end annotation
.end field

.field private final explicitBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final explicitBindingsMutable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final listenerBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final parent:Lcom/amazon/whispersync/com/google/inject/internal/State;

.field private final scopes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/amazon/whispersync/com/google/inject/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/State;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->explicitBindingsMutable:Ljava/util/Map;

    .line 45
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->explicitBindings:Ljava/util/Map;

    .line 47
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->scopes:Ljava/util/Map;

    .line 48
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->converters:Ljava/util/List;

    .line 52
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->listenerBindings:Ljava/util/List;

    .line 53
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/WeakKeySet;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/WeakKeySet;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->blacklistedKeys:Lcom/amazon/whispersync/com/google/inject/internal/WeakKeySet;

    const-string/jumbo v0, "parent"

    .line 57
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/com/google/inject/internal/State;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->parent:Lcom/amazon/whispersync/com/google/inject/internal/State;

    .line 58
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/State;->NONE:Lcom/amazon/whispersync/com/google/inject/internal/State;

    if-ne p1, v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/internal/State;->lock()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addConverter(Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->converters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTypeListener(Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->listenerBindings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist(Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->parent:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/State;->blacklist(Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->blacklistedKeys:Lcom/amazon/whispersync/com/google/inject/internal/WeakKeySet;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/WeakKeySet;->add(Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;)V

    return-void
.end method

.method public getConverter(Ljava/lang/String;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p0

    .line 99
    :goto_0
    sget-object v2, Lcom/amazon/whispersync/com/google/inject/internal/State;->NONE:Lcom/amazon/whispersync/com/google/inject/internal/State;

    if-eq v1, v2, :cond_3

    .line 100
    invoke-interface {v1}, Lcom/amazon/whispersync/com/google/inject/internal/State;->getConvertersThisLevel()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    move-object v7, v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;

    .line 101
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;->getTypeMatcher()Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v7, :cond_0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    move-object v6, p2

    move-object v8, v0

    .line 103
    invoke-virtual/range {v3 .. v8}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->ambiguousTypeConversion(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    goto :goto_1

    .line 99
    :cond_2
    invoke-interface {v1}, Lcom/amazon/whispersync/com/google/inject/internal/State;->parent()Lcom/amazon/whispersync/com/google/inject/internal/State;

    move-result-object v1

    move-object v0, v7

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getConvertersThisLevel()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->converters:Ljava/util/List;

    return-object v0
.end method

.method public getExplicitBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->explicitBindings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/com/google/inject/Binding;

    if-eqz v0, :cond_0

    .line 68
    check-cast v0, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->parent:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/State;->getExplicitBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getExplicitBindingsThisLevel()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "*>;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->explicitBindings:Ljava/util/Map;

    return-object v0
.end method

.method public getScope(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Scope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/Scope;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->scopes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/com/google/inject/Scope;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->parent:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/State;->getScope(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Scope;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getScopes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/amazon/whispersync/com/google/inject/Scope;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->scopes:Ljava/util/Map;

    return-object v0
.end method

.method public getSourcesForBlacklistedKey(Lcom/amazon/whispersync/com/google/inject/Key;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->blacklistedKeys:Lcom/amazon/whispersync/com/google/inject/internal/WeakKeySet;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/WeakKeySet;->getSources(Lcom/amazon/whispersync/com/google/inject/Key;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getTypeListenerBindings()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->parent:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/internal/State;->getTypeListenerBindings()Ljava/util/List;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->listenerBindings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public isBlacklisted(Lcom/amazon/whispersync/com/google/inject/Key;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;)Z"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->blacklistedKeys:Lcom/amazon/whispersync/com/google/inject/internal/WeakKeySet;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/WeakKeySet;->contains(Lcom/amazon/whispersync/com/google/inject/Key;)Z

    move-result p1

    return p1
.end method

.method public lock()Ljava/lang/Object;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public parent()Lcom/amazon/whispersync/com/google/inject/internal/State;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->parent:Lcom/amazon/whispersync/com/google/inject/internal/State;

    return-object v0
.end method

.method public putAnnotation(Ljava/lang/Class;Lcom/amazon/whispersync/com/google/inject/Scope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/amazon/whispersync/com/google/inject/Scope;",
            ")V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->scopes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "*>;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InheritingState;->explicitBindingsMutable:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
