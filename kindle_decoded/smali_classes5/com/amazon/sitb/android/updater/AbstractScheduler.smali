.class public abstract Lcom/amazon/sitb/android/updater/AbstractScheduler;
.super Ljava/lang/Object;
.source "AbstractScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/sitb/android/HasExpiration;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final cache:Lcom/amazon/sitb/android/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/sitb/android/cache/Cache<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final log:Lcom/amazon/sitb/android/ISamplingLogger;

.field private final name:Ljava/lang/String;

.field private final taskRunner:Lcom/amazon/sitb/android/ITaskRunner;

.field private final updateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/sitb/android/updater/AbstractScheduler<",
            "TT;>.UpdateTask;>;"
        }
    .end annotation
.end field

.field private final updater:Lcom/amazon/sitb/android/updater/Updater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/sitb/android/updater/Updater<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/amazon/sitb/android/ITaskRunner;Lcom/amazon/sitb/android/updater/Updater;Lcom/amazon/sitb/android/cache/Cache;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/sitb/android/ITaskRunner;",
            "Lcom/amazon/sitb/android/updater/Updater<",
            "TT;>;",
            "Lcom/amazon/sitb/android/cache/Cache<",
            "TT;>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    .line 42
    iput-object p1, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->name:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->taskRunner:Lcom/amazon/sitb/android/ITaskRunner;

    .line 44
    iput-object p3, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->updater:Lcom/amazon/sitb/android/updater/Updater;

    .line 45
    iput-object p4, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->cache:Lcom/amazon/sitb/android/cache/Cache;

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->updateMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/sitb/android/updater/AbstractScheduler;)Lcom/amazon/sitb/android/cache/Cache;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->cache:Lcom/amazon/sitb/android/cache/Cache;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/sitb/android/updater/AbstractScheduler;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/sitb/android/updater/AbstractScheduler;)Lcom/amazon/sitb/android/ISamplingLogger;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/sitb/android/updater/AbstractScheduler;)Lcom/amazon/sitb/android/ITaskRunner;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->taskRunner:Lcom/amazon/sitb/android/ITaskRunner;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/sitb/android/updater/AbstractScheduler;)Lcom/amazon/sitb/android/updater/Updater;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->updater:Lcom/amazon/sitb/android/updater/Updater;

    return-object p0
.end method

.method private updateAllTasks()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->updateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;

    .line 128
    invoke-virtual {v1}, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->isPaused()Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    invoke-virtual {v1}, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->ensureRecent()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized dataUpdated(Ljava/lang/String;Lcom/amazon/sitb/android/HasExpiration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->updateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->cancel()V

    .line 84
    invoke-virtual {p1, p2}, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->scheduleTaskWhenExpiring(Lcom/amazon/sitb/android/HasExpiration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleApplicationPausedEvent(Lcom/amazon/sitb/android/event/ApplicationPausedEvent;)V
    .locals 6
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 91
    :try_start_0
    iget-object p1, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->updateMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;

    .line 93
    iget-object v1, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v2, "Pausing automatic %s updating for ASIN %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->getAsin()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 96
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleApplicationResumedEvent(Lcom/amazon/sitb/android/event/ApplicationResumedEvent;)V
    .locals 6
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object p1, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->updateMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;

    .line 103
    iget-object v1, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v2, "Resuming automatic %s updating for ASIN %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->getAsin()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 107
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleNetworkConnectivityChangedEvent(Lcom/amazon/sitb/android/event/NetworkConnectivityChangedEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 112
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/NetworkConnectivityChangedEvent;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/amazon/sitb/android/updater/AbstractScheduler;->updateAllTasks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public handleOverlayShownEvent(Lcom/amazon/sitb/android/event/OverlayShownEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 121
    invoke-direct {p0}, Lcom/amazon/sitb/android/updater/AbstractScheduler;->updateAllTasks()V

    return-void
.end method

.method public startAutomaticUpdating(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 51
    invoke-virtual {p0, p1, v0}, Lcom/amazon/sitb/android/updater/AbstractScheduler;->startAutomaticUpdating(Ljava/lang/String;I)V

    return-void
.end method

.method public declared-synchronized startAutomaticUpdating(Ljava/lang/String;I)V
    .locals 5

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->updateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 58
    monitor-exit p0

    return-void

    .line 61
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Starting automatic %s updating for ASIN %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;-><init>(Lcom/amazon/sitb/android/updater/AbstractScheduler;Ljava/lang/String;ILcom/amazon/sitb/android/updater/AbstractScheduler$1;)V

    .line 63
    iget-object p2, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->updateMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {v0}, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->resume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopAutomaticUpdating(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->updateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;

    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v2, "Stopping automatic %s updating for ASIN %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
