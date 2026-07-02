.class public Lcom/amazon/kindle/event/BaseEventProvider;
.super Ljava/lang/Object;
.source "BaseEventProvider.java"

# interfaces
.implements Lcom/amazon/kindle/event/IEventProvider;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private SUPPORTED_EVENT_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/event/EventType;",
            ">;"
        }
    .end annotation
.end field

.field protected handlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/event/EventType;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/event/IEventHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field protected workers:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/amazon/kindle/event/BaseEventProvider;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/event/BaseEventProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kindle/event/EventType;

    .line 36
    sget-object v1, Lcom/amazon/kindle/event/IEventProvider;->ALL_EVENT_TYPE:Lcom/amazon/kindle/event/EventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/event/BaseEventProvider;->SUPPORTED_EVENT_TYPES:Ljava/util/Collection;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/event/BaseEventProvider;->handlerMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/amazon/kindle/event/BaseEventProvider;->workers:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 8

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kindle/event/EventType;

    .line 36
    sget-object v1, Lcom/amazon/kindle/event/IEventProvider;->ALL_EVENT_TYPE:Lcom/amazon/kindle/event/EventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/event/BaseEventProvider;->SUPPORTED_EVENT_TYPES:Ljava/util/Collection;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/event/BaseEventProvider;->handlerMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/amazon/kindle/event/BaseEventProvider;->workers:Ljava/util/concurrent/ExecutorService;

    if-lez p1, :cond_0

    .line 55
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v1, v0

    move v2, p1

    move v3, p1

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/amazon/kindle/event/BaseEventProvider;->workers:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/event/BaseEventProvider;Lcom/amazon/kindle/event/Event;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/kindle/event/BaseEventProvider;->handleEvent(Lcom/amazon/kindle/event/Event;)V

    return-void
.end method

.method private handleEvent(Lcom/amazon/kindle/event/Event;)V
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

    .line 133
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handling event: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getType()Lcom/amazon/kindle/event/EventType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getType()Lcom/amazon/kindle/event/EventType;

    move-result-object v0

    .line 138
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/event/BaseEventProvider;->handleEvent(Lcom/amazon/kindle/event/Event;Lcom/amazon/kindle/event/EventType;)V

    .line 139
    sget-object v0, Lcom/amazon/kindle/event/IEventProvider;->ALL_EVENT_TYPE:Lcom/amazon/kindle/event/EventType;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/event/BaseEventProvider;->handleEvent(Lcom/amazon/kindle/event/Event;Lcom/amazon/kindle/event/EventType;)V

    return-void
.end method


# virtual methods
.method public getSupportedEventTypes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/event/EventType;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/amazon/kindle/event/BaseEventProvider;->SUPPORTED_EVENT_TYPES:Ljava/util/Collection;

    return-object v0
.end method

.method protected handleEvent(Lcom/amazon/kindle/event/Event;Lcom/amazon/kindle/event/EventType;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/event/Event<",
            "TT;>;",
            "Lcom/amazon/kindle/event/EventType;",
            ")V"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/amazon/kindle/event/BaseEventProvider;->handlerMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    if-eqz p2, :cond_0

    .line 146
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/event/IEventHandler;

    .line 148
    :try_start_0
    invoke-interface {v0, p1}, Lcom/amazon/kindle/event/IEventHandler;->handleEvent(Lcom/amazon/kindle/event/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 150
    sget-object v1, Lcom/amazon/kindle/event/BaseEventProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in handling event: type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getType()Lcom/amazon/kindle/event/EventType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
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

    .line 109
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receiving event: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getType()Lcom/amazon/kindle/event/EventType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kindle/event/BaseEventProvider;->workers:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    new-instance v1, Lcom/amazon/kindle/event/BaseEventProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/event/BaseEventProvider$1;-><init>(Lcom/amazon/kindle/event/BaseEventProvider;Lcom/amazon/kindle/event/Event;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void

    .line 116
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/event/BaseEventProvider;->handleEvent(Lcom/amazon/kindle/event/Event;)V

    return-void
.end method

.method public registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/event/IEventHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 65
    invoke-interface {p1}, Lcom/amazon/kindle/event/IEventHandler;->getEventTypes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/event/EventType;

    .line 66
    iget-object v2, p0, Lcom/amazon/kindle/event/BaseEventProvider;->handlerMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-nez v2, :cond_1

    .line 68
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 69
    iget-object v3, p0, Lcom/amazon/kindle/event/BaseEventProvider;->handlerMap:Ljava/util/Map;

    monitor-enter v3

    .line 70
    :try_start_0
    iget-object v4, p0, Lcom/amazon/kindle/event/BaseEventProvider;->handlerMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 71
    iget-object v4, p0, Lcom/amazon/kindle/event/BaseEventProvider;->handlerMap:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object v2, p0, Lcom/amazon/kindle/event/BaseEventProvider;->handlerMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 73
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 76
    :cond_1
    :goto_1
    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public unregisterHandler(Lcom/amazon/kindle/event/IEventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/event/IEventHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 86
    invoke-interface {p1}, Lcom/amazon/kindle/event/IEventHandler;->getEventTypes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/event/EventType;

    .line 87
    iget-object v2, p0, Lcom/amazon/kindle/event/BaseEventProvider;->handlerMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_0

    .line 89
    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 91
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/amazon/kindle/event/BaseEventProvider;->handlerMap:Ljava/util/Map;

    monitor-enter v3

    .line 93
    :try_start_0
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/amazon/kindle/event/BaseEventProvider;->handlerMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return-void
.end method
