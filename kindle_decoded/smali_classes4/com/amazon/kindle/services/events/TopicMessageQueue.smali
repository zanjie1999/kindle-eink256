.class public Lcom/amazon/kindle/services/events/TopicMessageQueue;
.super Lcom/amazon/kindle/krx/events/BaseTopicMessageQueue;
.source "TopicMessageQueue.java"


# instance fields
.field private final deadMessageHandler:Lcom/amazon/kindle/services/events/EventHandler;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final service:Lcom/amazon/kindle/services/events/PubSubMessageService;

.field private final topic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/services/events/PubSubMessageService;Ljava/util/concurrent/ExecutorService;Lcom/amazon/kindle/services/events/EventHandler;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/kindle/krx/events/BaseTopicMessageQueue;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kindle/services/events/TopicMessageQueue;->topic:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/amazon/kindle/services/events/TopicMessageQueue;->service:Lcom/amazon/kindle/services/events/PubSubMessageService;

    .line 25
    iput-object p3, p0, Lcom/amazon/kindle/services/events/TopicMessageQueue;->executor:Ljava/util/concurrent/ExecutorService;

    .line 26
    iput-object p4, p0, Lcom/amazon/kindle/services/events/TopicMessageQueue;->deadMessageHandler:Lcom/amazon/kindle/services/events/EventHandler;

    return-void
.end method

.method private handleEventAsync(Lcom/amazon/kindle/services/events/BaseEventHandler;Ljava/lang/Object;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/services/events/TopicMessageQueue;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/services/events/TopicMessageQueue$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/services/events/TopicMessageQueue$1;-><init>(Lcom/amazon/kindle/services/events/TopicMessageQueue;Lcom/amazon/kindle/services/events/BaseEventHandler;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public publish(Ljava/lang/Object;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;Z)V"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/services/events/TopicMessageQueue;->service:Lcom/amazon/kindle/services/events/PubSubMessageService;

    iget-object v1, p0, Lcom/amazon/kindle/services/events/TopicMessageQueue;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getHandlersForTopic(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 32
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 36
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/services/events/TopicEventHandler;

    .line 37
    invoke-virtual {v1}, Lcom/amazon/kindle/services/events/BaseEventHandler;->hasListener()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_3

    .line 40
    invoke-virtual {v1}, Lcom/amazon/kindle/services/events/TopicEventHandler;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 43
    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/amazon/kindle/services/events/TopicMessageQueue;->handleEventAsync(Lcom/amazon/kindle/services/events/BaseEventHandler;Ljava/lang/Object;)V

    goto :goto_0

    .line 41
    :cond_3
    :goto_1
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/services/events/TopicEventHandler;->handle(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-void

    .line 33
    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/amazon/kindle/services/events/TopicMessageQueue;->deadMessageHandler:Lcom/amazon/kindle/services/events/EventHandler;

    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/services/events/TopicMessageQueue;->handleEventAsync(Lcom/amazon/kindle/services/events/BaseEventHandler;Ljava/lang/Object;)V

    return-void
.end method
