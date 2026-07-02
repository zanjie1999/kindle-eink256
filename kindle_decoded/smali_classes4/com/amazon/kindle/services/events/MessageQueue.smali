.class Lcom/amazon/kindle/services/events/MessageQueue;
.super Lcom/amazon/kindle/krx/events/BaseMessageQueue;
.source "MessageQueue.java"


# instance fields
.field private final deadMessageHandler:Lcom/amazon/kindle/services/events/EventHandler;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final service:Lcom/amazon/kindle/services/events/PubSubMessageService;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/services/events/PubSubMessageService;Ljava/util/concurrent/ExecutorService;Lcom/amazon/kindle/services/events/EventHandler;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/amazon/kindle/krx/events/BaseMessageQueue;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/amazon/kindle/services/events/MessageQueue;->service:Lcom/amazon/kindle/services/events/PubSubMessageService;

    .line 40
    iput-object p2, p0, Lcom/amazon/kindle/services/events/MessageQueue;->executor:Ljava/util/concurrent/ExecutorService;

    .line 41
    iput-object p3, p0, Lcom/amazon/kindle/services/events/MessageQueue;->deadMessageHandler:Lcom/amazon/kindle/services/events/EventHandler;

    return-void
.end method

.method private handleEventAsync(Lcom/amazon/kindle/services/events/BaseEventHandler;Ljava/lang/Object;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/amazon/kindle/services/events/MessageQueue;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/services/events/MessageQueue$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/services/events/MessageQueue$1;-><init>(Lcom/amazon/kindle/services/events/MessageQueue;Lcom/amazon/kindle/services/events/BaseEventHandler;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public publish(Lcom/amazon/kindle/krx/events/IEvent;)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/amazon/kindle/services/events/MessageQueue;->service:Lcom/amazon/kindle/services/events/PubSubMessageService;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getHandlersForEvent(Lcom/amazon/kindle/krx/events/IEvent;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 54
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 58
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/services/events/EventHandler;

    .line 59
    invoke-virtual {v1}, Lcom/amazon/kindle/services/events/BaseEventHandler;->hasListener()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/events/IEvent;->isBlocking()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/amazon/kindle/services/events/EventHandler;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 65
    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/amazon/kindle/services/events/MessageQueue;->handleEventAsync(Lcom/amazon/kindle/services/events/BaseEventHandler;Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :cond_3
    :goto_1
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/services/events/EventHandler;->handle(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-void

    .line 55
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/amazon/kindle/services/events/MessageQueue;->deadMessageHandler:Lcom/amazon/kindle/services/events/EventHandler;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/services/events/MessageQueue;->handleEventAsync(Lcom/amazon/kindle/services/events/BaseEventHandler;Ljava/lang/Object;)V

    return-void
.end method
