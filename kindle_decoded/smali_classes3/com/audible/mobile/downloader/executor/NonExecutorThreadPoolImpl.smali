.class abstract Lcom/audible/mobile/downloader/executor/NonExecutorThreadPoolImpl;
.super Ljava/lang/Object;
.source "NonExecutorThreadPoolImpl.java"

# interfaces
.implements Lcom/audible/mobile/downloader/executor/NonExecutorThreadPool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/audible/mobile/downloader/executor/NonExecutorThreadPoolThread;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/downloader/executor/NonExecutorThreadPool;"
    }
.end annotation


# instance fields
.field private volatile isShutdown:Z

.field protected threadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/audible/mobile/framework/Factory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/audible/mobile/framework/Factory<",
            "TT;>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/audible/mobile/downloader/executor/NonExecutorThreadPoolImpl;->isShutdown:Z

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Must request at least one thread!"

    .line 20
    invoke-static {v1, v2}, Lcom/audible/mobile/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/audible/mobile/downloader/executor/NonExecutorThreadPoolImpl;->threadList:Ljava/util/List;

    :goto_1
    if-ge v0, p1, :cond_1

    .line 24
    invoke-interface {p2}, Lcom/audible/mobile/framework/Factory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/downloader/executor/NonExecutorThreadPoolThread;

    .line 25
    iget-object v2, p0, Lcom/audible/mobile/downloader/executor/NonExecutorThreadPoolImpl;->threadList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-interface {v1}, Lcom/audible/mobile/downloader/executor/NonExecutorThreadPoolThread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public isShutdown()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/executor/NonExecutorThreadPoolImpl;->isShutdown:Z

    return v0
.end method

.method public shutdown()V
    .locals 2

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/audible/mobile/downloader/executor/NonExecutorThreadPoolImpl;->isShutdown:Z

    .line 33
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/NonExecutorThreadPoolImpl;->threadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/downloader/executor/NonExecutorThreadPoolThread;

    .line 34
    invoke-interface {v1}, Lcom/audible/mobile/downloader/executor/NonExecutorThreadPoolThread;->shutdown()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public shutdownNow()V
    .locals 2

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/audible/mobile/downloader/executor/NonExecutorThreadPoolImpl;->isShutdown:Z

    .line 41
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/NonExecutorThreadPoolImpl;->threadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/downloader/executor/NonExecutorThreadPoolThread;

    .line 42
    invoke-interface {v1}, Lcom/audible/mobile/downloader/executor/NonExecutorThreadPoolThread;->shutdownNow()V

    goto :goto_0

    :cond_0
    return-void
.end method
