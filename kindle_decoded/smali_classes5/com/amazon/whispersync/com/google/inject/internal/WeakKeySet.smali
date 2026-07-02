.class final Lcom/amazon/whispersync/com/google/inject/internal/WeakKeySet;
.super Ljava/lang/Object;
.source "WeakKeySet.java"


# instance fields
.field private backingSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/WeakKeySet;->backingSet:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/WeakKeySet;->backingSet:Ljava/util/Map;

    .line 49
    :cond_0
    instance-of v0, p2, Ljava/lang/Class;

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    if-ne p2, v0, :cond_2

    :cond_1
    const/4 p2, 0x0

    .line 52
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/WeakKeySet;->backingSet:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_3

    .line 55
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Sets;->newLinkedHashSet()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/WeakKeySet;->backingSet:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_3
    invoke-static {p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public contains(Lcom/amazon/whispersync/com/google/inject/Key;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;)Z"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/WeakKeySet;->backingSet:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getSources(Lcom/amazon/whispersync/com/google/inject/Key;)Ljava/util/Set;
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

    .line 68
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/WeakKeySet;->backingSet:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method
