.class public Lcom/amazon/kindle/observablemodel/ListenerSet;
.super Ljava/lang/Object;
.source "ListenerSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ID:",
        "Ljava/lang/Object;",
        "VA",
        "LUE:Ljava/lang/Object;",
        "LISTENER:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mWaitingForChangeListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TID;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "T",
            "LISTENER;",
            ">;>;>;"
        }
    .end annotation
.end field

.field mWaitingForInitialValueListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TID;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "T",
            "LISTENER;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/ListenerSet;->mWaitingForInitialValueListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/ListenerSet;->mWaitingForChangeListeners:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private addChangeListener(Ljava/lang/Object;Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TID;",
            "Ljava/lang/ref/WeakReference<",
            "T",
            "LISTENER;",
            ">;)V"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ListenerSet;->mWaitingForChangeListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/ListenerSet;->mWaitingForChangeListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method addListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TID;T",
            "LISTENER;",
            ")V"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 36
    iget-object p2, p0, Lcom/amazon/kindle/observablemodel/ListenerSet;->mWaitingForInitialValueListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_0

    .line 38
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/ListenerSet;->mWaitingForInitialValueListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method findKeyForListener(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "LISTENER;",
            ")TID;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ListenerSet;->mWaitingForInitialValueListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/observablemodel/ListenerSet;->findKeyForListener(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ListenerSet;->mWaitingForChangeListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/observablemodel/ListenerSet;->findKeyForListener(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method findKeyForListener(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TID;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "T",
            "LISTENER;",
            ">;>;>;T",
            "LISTENER;",
            ")TID;"
        }
    .end annotation

    .line 111
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 113
    invoke-virtual {p0, p1, p2, v1}, Lcom/amazon/kindle/observablemodel/ListenerSet;->isListenerMappedByKey(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method isListenerMappedByKey(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TID;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "T",
            "LISTENER;",
            ">;>;>;T",
            "LISTENER;",
            "TID;)Z"
        }
    .end annotation

    .line 97
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    .line 102
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 103
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return p3
.end method

.method keySetWaitingForChangeValue()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TID;>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ListenerSet;->mWaitingForChangeListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method keySetWaitingForInitialValue()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TID;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ListenerSet;->mWaitingForInitialValueListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method processChangeValues(Ljava/util/Collection;Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator;Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TID;>;",
            "Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator<",
            "TID;TVA",
            "LUE;",
            ">;",
            "Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher<",
            "TID;TVA",
            "LUE;",
            "T",
            "LISTENER;",
            ">;)V"
        }
    .end annotation

    .line 187
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/ListenerSet;->mWaitingForChangeListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_0

    .line 193
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 194
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 196
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 197
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 198
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 201
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 204
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 208
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_3
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_4

    .line 209
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 212
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 215
    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/ListenerSet;->mWaitingForInitialValueListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_5

    .line 216
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 217
    :cond_5
    invoke-virtual {p3, v0}, Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher;->keyHasNoListeners(Ljava/lang/Object;)V

    goto :goto_0

    .line 221
    :cond_6
    invoke-virtual {p2, v0}, Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator;->getCurrentValueForKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 223
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 224
    invoke-virtual {p3, v0, v1, v3}, Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher;->handleListenerValueForKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    return-void
.end method

.method processCurrentValueListeners(Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator;Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator<",
            "TID;TVA",
            "LUE;",
            ">;",
            "Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher<",
            "TID;TVA",
            "LUE;",
            "T",
            "LISTENER;",
            ">;)V"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ListenerSet;->mWaitingForInitialValueListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 158
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/observablemodel/ListenerSet;->mWaitingForInitialValueListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 160
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 161
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 162
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    .line 165
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 166
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    if-nez v3, :cond_2

    .line 170
    invoke-virtual {p1, v2}, Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator;->getCurrentValueForKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 173
    :cond_2
    invoke-virtual {p2, v2, v3, v5}, Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher;->handleListenerValueForKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    invoke-direct {p0, v2, v4}, Lcom/amazon/kindle/observablemodel/ListenerSet;->addChangeListener(Ljava/lang/Object;Ljava/lang/ref/WeakReference;)V

    goto :goto_1

    .line 179
    :cond_3
    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/ListenerSet;->mWaitingForChangeListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 180
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 181
    :cond_4
    invoke-virtual {p2, v2}, Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher;->keyHasNoListeners(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method processValueListeners(Ljava/util/Map;Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TID;TVA",
            "LUE;",
            ">;",
            "Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher<",
            "TID;TVA",
            "LUE;",
            "T",
            "LISTENER;",
            ">;)V"
        }
    .end annotation

    .line 231
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/observablemodel/ListenerSet$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/observablemodel/ListenerSet$1;-><init>(Lcom/amazon/kindle/observablemodel/ListenerSet;Ljava/util/Map;)V

    invoke-virtual {p0, v0, v1, p2}, Lcom/amazon/kindle/observablemodel/ListenerSet;->processChangeValues(Ljava/util/Collection;Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator;Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher;)V

    .line 238
    new-instance v0, Lcom/amazon/kindle/observablemodel/ListenerSet$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/observablemodel/ListenerSet$2;-><init>(Lcom/amazon/kindle/observablemodel/ListenerSet;Ljava/util/Map;)V

    invoke-virtual {p0, v0, p2}, Lcom/amazon/kindle/observablemodel/ListenerSet;->processCurrentValueListeners(Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator;Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher;)V

    return-void
.end method

.method removeListener(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "LISTENER;",
            ")",
            "Ljava/util/Set<",
            "TID;>;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 90
    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/ListenerSet;->mWaitingForInitialValueListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v1, p1}, Lcom/amazon/kindle/observablemodel/ListenerSet;->removeListenerFromMap(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 91
    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/ListenerSet;->mWaitingForChangeListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v1, p1}, Lcom/amazon/kindle/observablemodel/ListenerSet;->removeListenerFromMap(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method removeListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "LISTENER;",
            "TID;)V"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ListenerSet;->mWaitingForInitialValueListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kindle/observablemodel/ListenerSet;->removeListenerFromMap(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ListenerSet;->mWaitingForInitialValueListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ListenerSet;->mWaitingForInitialValueListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ListenerSet;->mWaitingForChangeListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kindle/observablemodel/ListenerSet;->removeListenerFromMap(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 140
    iget-object p1, p0, Lcom/amazon/kindle/observablemodel/ListenerSet;->mWaitingForChangeListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 141
    iget-object p1, p0, Lcom/amazon/kindle/observablemodel/ListenerSet;->mWaitingForChangeListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method removeListenerFromMap(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TID;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "T",
            "LISTENER;",
            ">;>;>;T",
            "LISTENER;",
            ")",
            "Ljava/util/Set<",
            "TID;>;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 66
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 68
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 69
    invoke-virtual {p0, p1, p2, v3}, Lcom/amazon/kindle/observablemodel/ListenerSet;->removeListenerFromMap(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 74
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 75
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 81
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method removeListenerFromMap(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TID;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "T",
            "LISTENER;",
            ">;>;>;T",
            "LISTENER;",
            "TID;)Z"
        }
    .end annotation

    .line 45
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    .line 50
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 55
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_1

    .line 56
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_2
    return p3
.end method
