.class public abstract Lcom/amazon/kindle/event/RedrivableEventProvider;
.super Lcom/amazon/kindle/event/BaseEventProvider;
.source "RedrivableEventProvider.java"


# instance fields
.field private final applicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p2}, Lcom/amazon/kindle/event/BaseEventProvider;-><init>(I)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/event/RedrivableEventProvider;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/event/RedrivableEventProvider;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kindle/event/RedrivableEventProvider;->applicationContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected abstract getAccountId()Ljava/lang/String;
.end method

.method protected publishEvent(Lcom/amazon/kindle/event/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/event/Event<",
            "TT;>;)V"
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getPayload()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/kindle/event/IRedrivableEventPayload;

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/event/RedrivableEventProvider$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/event/RedrivableEventProvider$2;-><init>(Lcom/amazon/kindle/event/RedrivableEventProvider;Lcom/amazon/kindle/event/Event;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 85
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kindle/event/BaseEventProvider;->publishEvent(Lcom/amazon/kindle/event/Event;)V

    :goto_0
    return-void
.end method

.method protected publishEvent(Lcom/amazon/kindle/event/Event;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/event/Event<",
            "+",
            "Lcom/amazon/kindle/event/IRedrivableEventPayload;",
            ">;Z)V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/event/BaseEventProvider;->handlerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getType()Lcom/amazon/kindle/event/EventType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 91
    iget-object v1, p0, Lcom/amazon/kindle/event/RedrivableEventProvider;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kindle/event/EventProviderDB;->getInstance(Landroid/content/Context;)Lcom/amazon/kindle/event/EventProviderDB;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 94
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/event/IEventHandler;

    .line 95
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lcom/amazon/kindle/event/EventProviderDB;->persistEvent(Ljava/lang/Class;Lcom/amazon/kindle/event/Event;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kindle/event/BaseEventProvider;->publishEvent(Lcom/amazon/kindle/event/Event;)V

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 103
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/event/IEventHandler;

    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/amazon/kindle/event/EventProviderDB;->markEventProcessed(Ljava/lang/Class;Lcom/amazon/kindle/event/Event;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/event/IEventHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 37
    invoke-super {p0, p1}, Lcom/amazon/kindle/event/BaseEventProvider;->registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    .line 39
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/event/RedrivableEventProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/event/RedrivableEventProvider$1;-><init>(Lcom/amazon/kindle/event/RedrivableEventProvider;Lcom/amazon/kindle/event/IEventHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
