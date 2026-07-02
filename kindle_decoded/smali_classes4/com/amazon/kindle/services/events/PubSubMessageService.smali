.class public Lcom/amazon/kindle/services/events/PubSubMessageService;
.super Lcom/amazon/kindle/krx/events/BasePubSubEventsManager;
.source "PubSubMessageService.java"


# static fields
.field static final DEFAULT_THREAD_POOL_SHUTDOWN_TIMEOUT:J = 0x64L

.field private static final MAX_THREAD_NUM:I = 0x5

.field private static final TAG:Ljava/lang/String;

.field private static finder:Lcom/amazon/kindle/services/events/ISubscriberFinder;

.field private static volatile instance:Lcom/amazon/kindle/services/events/PubSubMessageService;

.field private static subscriber_finder_class:Ljava/lang/String;


# instance fields
.field private final deadMessageHandler:Lcom/amazon/kindle/services/events/EventHandler;

.field private final eventExecutor:Ljava/util/concurrent/ExecutorService;

.field private final eventTypeToHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/events/EventHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field final handlersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/events/EventHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final subscribeLock:Ljava/lang/Object;

.field private final topicHandlersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/events/TopicEventHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final topicToHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/events/TopicEventHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final topicToQueue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/events/ITopicMessageQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-class v0, Lcom/amazon/kindle/services/events/PubSubMessageService;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/services/events/PubSubMessageService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 66
    sput-object v0, Lcom/amazon/kindle/services/events/PubSubMessageService;->instance:Lcom/amazon/kindle/services/events/PubSubMessageService;

    const-string v1, "com.amazon.kindle.services.events.SubscriberFinder"

    .line 68
    sput-object v1, Lcom/amazon/kindle/services/events/PubSubMessageService;->subscriber_finder_class:Ljava/lang/String;

    .line 70
    sput-object v0, Lcom/amazon/kindle/services/events/PubSubMessageService;->finder:Lcom/amazon/kindle/services/events/ISubscriberFinder;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 117
    invoke-direct {p0}, Lcom/amazon/kindle/krx/events/BasePubSubEventsManager;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->handlersMap:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->topicHandlersMap:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->eventTypeToHandlers:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->topicToHandlers:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->topicToQueue:Ljava/util/Map;

    .line 56
    new-instance v0, Lcom/amazon/kindle/services/events/DeadEventHandler;

    invoke-direct {v0}, Lcom/amazon/kindle/services/events/DeadEventHandler;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->deadMessageHandler:Lcom/amazon/kindle/services/events/EventHandler;

    .line 59
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object v0

    const-string v1, "pubsub"

    .line 60
    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    const/4 v1, 0x5

    .line 61
    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withThreadNum(I)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    .line 62
    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->eventExecutor:Ljava/util/concurrent/ExecutorService;

    .line 64
    new-instance v1, Lcom/amazon/kindle/services/events/MessageQueue;

    iget-object v2, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->deadMessageHandler:Lcom/amazon/kindle/services/events/EventHandler;

    invoke-direct {v1, p0, v0, v2}, Lcom/amazon/kindle/services/events/MessageQueue;-><init>(Lcom/amazon/kindle/services/events/PubSubMessageService;Ljava/util/concurrent/ExecutorService;Lcom/amazon/kindle/services/events/EventHandler;)V

    iput-object v1, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->subscribeLock:Ljava/lang/Object;

    return-void
.end method

.method private RegisterEventHandlers(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/events/EventHandler;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 255
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 259
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->handlersMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    iget-object v2, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->handlersMap:Ljava/util/Map;

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/events/EventHandler;

    if-nez v1, :cond_3

    .line 269
    iget-object v2, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->eventTypeToHandlers:Ljava/util/Map;

    .line 270
    invoke-virtual {v0}, Lcom/amazon/kindle/services/events/EventHandler;->getEventType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-nez v2, :cond_2

    .line 272
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 273
    iget-object v3, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->eventTypeToHandlers:Ljava/util/Map;

    .line 274
    invoke-virtual {v0}, Lcom/amazon/kindle/services/events/EventHandler;->getEventType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_3
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/services/events/BaseEventHandler;->registerListener(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private RegisterTopicHandlers(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/events/TopicEventHandler;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 226
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 233
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->topicHandlersMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 237
    iget-object v2, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->topicHandlersMap:Ljava/util/Map;

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/events/TopicEventHandler;

    if-nez v1, :cond_3

    .line 242
    iget-object v2, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->topicToHandlers:Ljava/util/Map;

    iget-object v3, v0, Lcom/amazon/kindle/services/events/TopicEventHandler;->topic:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-nez v2, :cond_2

    .line 244
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 245
    iget-object v3, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->topicToHandlers:Ljava/util/Map;

    iget-object v4, v0, Lcom/amazon/kindle/services/events/TopicEventHandler;->topic:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_3
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/services/events/BaseEventHandler;->registerListener(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-void

    .line 227
    :cond_5
    :goto_1
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 228
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No topic handlers to register for listener "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_6
    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;
    .locals 2

    .line 93
    sget-object v0, Lcom/amazon/kindle/services/events/PubSubMessageService;->instance:Lcom/amazon/kindle/services/events/PubSubMessageService;

    if-nez v0, :cond_1

    .line 94
    const-class v0, Lcom/amazon/kindle/services/events/PubSubMessageService;

    monitor-enter v0

    .line 95
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/services/events/PubSubMessageService;->instance:Lcom/amazon/kindle/services/events/PubSubMessageService;

    if-nez v1, :cond_0

    .line 96
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->init()V

    .line 97
    new-instance v1, Lcom/amazon/kindle/services/events/PubSubMessageService;

    invoke-direct {v1}, Lcom/amazon/kindle/services/events/PubSubMessageService;-><init>()V

    sput-object v1, Lcom/amazon/kindle/services/events/PubSubMessageService;->instance:Lcom/amazon/kindle/services/events/PubSubMessageService;

    .line 99
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 101
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/kindle/services/events/PubSubMessageService;->instance:Lcom/amazon/kindle/services/events/PubSubMessageService;

    return-object v0
.end method

.method static declared-synchronized getInstance(Ljava/lang/String;)Lcom/amazon/kindle/krx/events/IPubSubEventsManager;
    .locals 1

    const-class v0, Lcom/amazon/kindle/services/events/PubSubMessageService;

    monitor-enter v0

    .line 112
    :try_start_0
    sput-object p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->subscriber_finder_class:Ljava/lang/String;

    const/4 p0, 0x0

    .line 113
    sput-object p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->instance:Lcom/amazon/kindle/services/events/PubSubMessageService;

    .line 114
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static init()V
    .locals 3

    .line 78
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/services/events/PubSubMessageService;->subscriber_finder_class:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/events/ISubscriberFinder;

    sput-object v0, Lcom/amazon/kindle/services/events/PubSubMessageService;->finder:Lcom/amazon/kindle/services/events/ISubscriberFinder;

    .line 81
    sget-object v0, Lcom/amazon/kindle/services/events/PubSubMessageService;->TAG:Ljava/lang/String;

    const-string v1, "PubSub scanned all the subscribers"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    sget-object v0, Lcom/amazon/kindle/services/events/PubSubMessageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/services/events/PubSubMessageService;->subscriber_finder_class:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/kindle/krx/events/IMessageQueue;"
        }
    .end annotation

    .line 130
    iget-object p1, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p1
.end method

.method public declared-synchronized createMessageQueue(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Lcom/amazon/kindle/krx/events/IMessageQueue;"
        }
    .end annotation

    monitor-enter p0

    .line 145
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public createTopicMessageQueue(Ljava/lang/String;)Lcom/amazon/kindle/krx/events/ITopicMessageQueue;
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->topicToQueue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/amazon/kindle/services/events/TopicMessageQueue;

    iget-object v1, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->eventExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->deadMessageHandler:Lcom/amazon/kindle/services/events/EventHandler;

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/amazon/kindle/services/events/TopicMessageQueue;-><init>(Ljava/lang/String;Lcom/amazon/kindle/services/events/PubSubMessageService;Ljava/util/concurrent/ExecutorService;Lcom/amazon/kindle/services/events/EventHandler;)V

    .line 153
    iget-object v1, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->topicToQueue:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method getHandlersForEvent(Lcom/amazon/kindle/krx/events/IEvent;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/events/IEvent;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/events/EventHandler;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->eventTypeToHandlers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method getHandlersForTopic(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/events/TopicEventHandler;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->topicToHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method getMessageQueueExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->eventExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method removeHandler(Lcom/amazon/kindle/services/events/BaseEventHandler;)V
    .locals 2

    .line 323
    invoke-virtual {p1}, Lcom/amazon/kindle/services/events/BaseEventHandler;->hasListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    instance-of v0, p1, Lcom/amazon/kindle/services/events/EventHandler;

    if-eqz v0, :cond_0

    .line 325
    move-object v0, p1

    check-cast v0, Lcom/amazon/kindle/services/events/EventHandler;

    .line 326
    invoke-virtual {v0}, Lcom/amazon/kindle/services/events/EventHandler;->getEventType()Ljava/lang/Class;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->eventTypeToHandlers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 329
    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 330
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 331
    iget-object p1, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->eventTypeToHandlers:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 334
    :cond_0
    instance-of v0, p1, Lcom/amazon/kindle/services/events/TopicEventHandler;

    if-eqz v0, :cond_1

    .line 335
    move-object v0, p1

    check-cast v0, Lcom/amazon/kindle/services/events/TopicEventHandler;

    .line 336
    iget-object v0, v0, Lcom/amazon/kindle/services/events/TopicEventHandler;->topic:Ljava/lang/String;

    .line 337
    iget-object v1, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->topicToHandlers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 339
    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 340
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 341
    iget-object p1, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->topicToHandlers:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method shutdownExecutor(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 353
    iget-object v0, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->eventExecutor:Ljava/util/concurrent/ExecutorService;

    if-eq p1, v0, :cond_0

    .line 354
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-wide/16 v0, 0x64

    .line 357
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 363
    sget-object v0, Lcom/amazon/kindle/services/events/PubSubMessageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error shutting down executor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public subscribe(Ljava/lang/Object;)V
    .locals 7

    .line 187
    iget-object v0, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->subscribeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 194
    iget-object v2, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->handlersMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-nez v2, :cond_1

    .line 197
    sget-object v3, Lcom/amazon/kindle/services/events/PubSubMessageService;->finder:Lcom/amazon/kindle/services/events/ISubscriberFinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 199
    :try_start_1
    sget-object v3, Lcom/amazon/kindle/services/events/PubSubMessageService;->finder:Lcom/amazon/kindle/services/events/ISubscriberFinder;

    invoke-interface {v3, p1}, Lcom/amazon/kindle/services/events/ISubscriberFinder;->findSubscribers(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 201
    :try_start_2
    sget-object v4, Lcom/amazon/kindle/services/events/PubSubMessageService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in findSubscribers "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/services/events/EventHandler;->createEventHandlers(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    .line 207
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/amazon/kindle/services/events/PubSubMessageService;->RegisterEventHandlers(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 209
    iget-object v2, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->topicHandlersMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-nez v1, :cond_3

    .line 211
    sget-object v2, Lcom/amazon/kindle/services/events/PubSubMessageService;->finder:Lcom/amazon/kindle/services/events/ISubscriberFinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    .line 213
    :try_start_3
    sget-object v2, Lcom/amazon/kindle/services/events/PubSubMessageService;->finder:Lcom/amazon/kindle/services/events/ISubscriberFinder;

    invoke-interface {v2, p1}, Lcom/amazon/kindle/services/events/ISubscriberFinder;->findTopicSubscribers(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    .line 215
    :try_start_4
    sget-object v3, Lcom/amazon/kindle/services/events/PubSubMessageService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in findTopicSubscribers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 218
    :cond_2
    invoke-static {p1}, Lcom/amazon/kindle/services/events/TopicEventHandler;->createEventHandlers(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 221
    :cond_3
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/services/events/PubSubMessageService;->RegisterTopicHandlers(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 222
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public unsubscribe(Ljava/lang/Object;)V
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->subscribeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 295
    iget-object v2, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->handlersMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_0

    .line 299
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/services/events/EventHandler;

    .line 300
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/services/events/BaseEventHandler;->unregisterListener(Ljava/lang/Object;)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/services/events/PubSubMessageService;->topicHandlersMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 309
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/services/events/TopicEventHandler;

    .line 310
    invoke-virtual {v2, p1}, Lcom/amazon/kindle/services/events/BaseEventHandler;->unregisterListener(Ljava/lang/Object;)V

    goto :goto_1

    .line 313
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
