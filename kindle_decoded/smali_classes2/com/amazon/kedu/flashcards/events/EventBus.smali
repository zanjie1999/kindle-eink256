.class public Lcom/amazon/kedu/flashcards/events/EventBus;
.super Ljava/lang/Object;
.source "EventBus.java"


# instance fields
.field private eventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/amazon/kedu/flashcards/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field private registeredHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kedu/flashcards/events/Event;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/amazon/kedu/flashcards/events/EventHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private started:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/events/EventBus;->eventQueue:Ljava/util/Queue;

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/events/EventBus;->registeredHandlers:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/events/EventBus;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private getHandlersForEvent(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kedu/flashcards/events/Event;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kedu/flashcards/events/EventHandler;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 102
    :goto_0
    const-class v1, Lcom/amazon/kedu/flashcards/events/Event;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/events/EventBus;->registeredHandlers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/events/EventBus;->registeredHandlers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 108
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected handleEvent(Lcom/amazon/kedu/flashcards/events/EventHandler;Lcom/amazon/kedu/flashcards/events/Event;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 94
    invoke-interface {p1, p2}, Lcom/amazon/kedu/flashcards/events/EventHandler;->onEvent(Lcom/amazon/kedu/flashcards/events/Event;)V

    :cond_0
    return-void
.end method

.method public publish(Lcom/amazon/kedu/flashcards/events/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/kedu/flashcards/events/Event;",
            ">(TT;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/events/EventBus;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/events/EventBus;->getHandlersForEvent(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/flashcards/events/EventHandler;

    .line 37
    invoke-virtual {p0, v1, p1}, Lcom/amazon/kedu/flashcards/events/EventBus;->handleEvent(Lcom/amazon/kedu/flashcards/events/EventHandler;Lcom/amazon/kedu/flashcards/events/Event;)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/events/EventBus;->eventQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/events/EventBus;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/events/EventBus;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/events/EventBus;->eventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/events/EventBus;->eventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/events/Event;

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/events/EventBus;->publish(Lcom/amazon/kedu/flashcards/events/Event;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public subscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kedu/flashcards/events/Event;",
            ">;",
            "Lcom/amazon/kedu/flashcards/events/EventHandler;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 53
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/events/EventBus;->registeredHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/events/EventBus;->registeredHandlers:Ljava/util/Map;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/events/EventBus;->registeredHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/events/EventBus;->registeredHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    .line 50
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "EventHandler cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unsubscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kedu/flashcards/events/Event;",
            ">;",
            "Lcom/amazon/kedu/flashcards/events/EventHandler;",
            ")V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/events/EventBus;->registeredHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/events/EventBus;->registeredHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
