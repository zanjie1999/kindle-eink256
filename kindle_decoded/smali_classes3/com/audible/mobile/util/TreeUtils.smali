.class public Lcom/audible/mobile/util/TreeUtils;
.super Ljava/lang/Object;
.source "TreeUtils.java"


# direct methods
.method public static getPreorderedParentMap(Ljava/util/Collection;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/audible/mobile/domain/Hierarchical<",
            "TT;>;>(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Map<",
            "TT;TT;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 33
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/mobile/domain/Hierarchical;

    .line 34
    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 37
    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    .line 38
    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/audible/mobile/domain/Hierarchical;

    .line 39
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/audible/mobile/domain/Hierarchical;

    .line 40
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-interface {v2}, Lcom/audible/mobile/domain/Hierarchical;->getChildren()Ljava/util/List;

    move-result-object p0

    .line 43
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_0

    .line 44
    new-instance v4, Landroid/util/Pair;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method
