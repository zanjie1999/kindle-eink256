.class public final Lcom/amazon/kindle/krx/tutorial/events/SimpleEventSource;
.super Lcom/amazon/kindle/krx/tutorial/events/BaseEventSource;
.source "SimpleEventSource.java"


# instance fields
.field private final observerMutex:Ljava/lang/Object;

.field private final observers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/amazon/kindle/krx/tutorial/events/BaseEventSource;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/tutorial/events/SimpleEventSource;->observers:Ljava/util/Set;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/tutorial/events/SimpleEventSource;->observerMutex:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/events/SimpleEventSource;->observerMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/krx/tutorial/events/SimpleEventSource;->observers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public notifyObservers(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/events/SimpleEventSource;->observerMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/amazon/kindle/krx/tutorial/events/SimpleEventSource;->observers:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;

    .line 39
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;->notify(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 36
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeObserver(Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/events/SimpleEventSource;->observerMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/krx/tutorial/events/SimpleEventSource;->observers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 64
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
