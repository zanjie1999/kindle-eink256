.class public Lcom/amazon/appexpan/client/event/ResourceSetEventManager;
.super Ljava/lang/Object;
.source "ResourceSetEventManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.appexpan.client.event.ResourceSetEventManager"


# instance fields
.field executor:Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

.field listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/appexpan/client/event/ResourceSetEventListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/amazon/appexpan/client/event/ResourceSetEventManager;->executor:Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/appexpan/client/event/ResourceSetEventManager;->listeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/appexpan/client/event/ResourceSetEventManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onResourceSetAvailable(Ljava/lang/String;)V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/amazon/appexpan/client/event/ResourceSetEventManager;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 96
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazon/appexpan/client/event/ResourceSetEventManager;->listeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    new-instance v0, Lcom/amazon/appexpan/client/event/ResourceSetEventManager$1;

    invoke-direct {v0, p0, v1, p1}, Lcom/amazon/appexpan/client/event/ResourceSetEventManager$1;-><init>(Lcom/amazon/appexpan/client/event/ResourceSetEventManager;Ljava/util/List;Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/amazon/appexpan/client/event/ResourceSetEventManager;->executor:Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    invoke-virtual {p1, v0}, Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;->executeAsync(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 97
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onResourceSetDownloadFailed(Ljava/lang/String;)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/amazon/appexpan/client/event/ResourceSetEventManager;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 138
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazon/appexpan/client/event/ResourceSetEventManager;->listeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 139
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    new-instance v0, Lcom/amazon/appexpan/client/event/ResourceSetEventManager$2;

    invoke-direct {v0, p0, v1, p1}, Lcom/amazon/appexpan/client/event/ResourceSetEventManager$2;-><init>(Lcom/amazon/appexpan/client/event/ResourceSetEventManager;Ljava/util/List;Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/amazon/appexpan/client/event/ResourceSetEventManager;->executor:Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    invoke-virtual {p1, v0}, Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;->executeAsync(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 139
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public registerListener(Lcom/amazon/appexpan/client/event/ResourceSetEventListener;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 47
    sget-object v0, Lcom/amazon/appexpan/client/event/ResourceSetEventManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/appexpan/client/AppExpanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/amazon/appexpan/client/event/ResourceSetEventManager;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/amazon/appexpan/client/event/ResourceSetEventManager;->listeners:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
