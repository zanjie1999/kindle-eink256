.class public Lcom/amazon/kindle/tutorial/TopicActivationResolver;
.super Ljava/lang/Object;
.source "TopicActivationResolver.java"


# instance fields
.field private eventResolvers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/tutorial/EventActivationResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final factory:Lcom/amazon/kcp/application/IKindleObjectFactory;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/IKindleObjectFactory;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/TopicActivationResolver;->eventResolvers:Ljava/util/Map;

    .line 26
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/TopicActivationResolver;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    return-void
.end method


# virtual methods
.method public declared-synchronized getEventActivationResolver(Ljava/lang/String;)Lcom/amazon/kindle/tutorial/EventActivationResolver;
    .locals 3

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/TopicActivationResolver;->eventResolvers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/TopicActivationResolver;->eventResolvers:Ljava/util/Map;

    new-instance v1, Lcom/amazon/kindle/tutorial/EventActivationResolver;

    iget-object v2, p0, Lcom/amazon/kindle/tutorial/TopicActivationResolver;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-direct {v1, v2}, Lcom/amazon/kindle/tutorial/EventActivationResolver;-><init>(Lcom/amazon/kcp/application/IKindleObjectFactory;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/TopicActivationResolver;->eventResolvers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/tutorial/EventActivationResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resolveActivations(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Lcom/amazon/kindle/tutorial/AndroidTutorialManager;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/tutorial/AndroidTutorialManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/tutorial/model/ActivationInstance;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/TopicActivationResolver;->eventResolvers:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/tutorial/EventActivationResolver;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kindle/tutorial/EventActivationResolver;->resolveActivations(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Lcom/amazon/kindle/tutorial/AndroidTutorialManager;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 43
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
