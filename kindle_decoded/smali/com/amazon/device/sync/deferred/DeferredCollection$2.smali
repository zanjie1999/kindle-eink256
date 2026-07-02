.class Lcom/amazon/device/sync/deferred/DeferredCollection$2;
.super Ljava/lang/Object;
.source "DeferredCollection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/deferred/DeferredCollection;->scatter(Lcom/amazon/device/sync/deferred/Function;Lcom/amazon/device/sync/gear/RetryPolicy;Lcom/amazon/device/sync/deferred/DeferredCollection;Ljava/util/List;)Lcom/amazon/device/sync/deferred/Deferred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/deferred/DeferredCollection;

.field final synthetic val$fn:Lcom/amazon/device/sync/deferred/Function;

.field final synthetic val$gather:Lcom/amazon/device/sync/deferred/DeferredCollection;

.field final synthetic val$outputs:Ljava/util/List;

.field final synthetic val$retryPolicy:Lcom/amazon/device/sync/gear/RetryPolicy;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/deferred/DeferredCollection;Lcom/amazon/device/sync/deferred/DeferredCollection;Lcom/amazon/device/sync/deferred/Function;Ljava/util/List;Lcom/amazon/device/sync/gear/RetryPolicy;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$2;->this$0:Lcom/amazon/device/sync/deferred/DeferredCollection;

    iput-object p2, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$2;->val$gather:Lcom/amazon/device/sync/deferred/DeferredCollection;

    iput-object p3, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$2;->val$fn:Lcom/amazon/device/sync/deferred/Function;

    iput-object p4, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$2;->val$outputs:Ljava/util/List;

    iput-object p5, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$2;->val$retryPolicy:Lcom/amazon/device/sync/gear/RetryPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 63
    iget-object v0, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$2;->this$0:Lcom/amazon/device/sync/deferred/DeferredCollection;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$2;->val$gather:Lcom/amazon/device/sync/deferred/DeferredCollection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    return-void

    .line 70
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$2;->this$0:Lcom/amazon/device/sync/deferred/DeferredCollection;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 79
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 81
    iget-object v3, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$2;->this$0:Lcom/amazon/device/sync/deferred/DeferredCollection;

    iget-object v3, v3, Lcom/amazon/device/sync/deferred/Deferred;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/amazon/device/sync/deferred/Deferred;

    iget-object v5, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$2;->this$0:Lcom/amazon/device/sync/deferred/DeferredCollection;

    iget-object v5, v5, Lcom/amazon/device/sync/deferred/Deferred;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v6, Lcom/amazon/device/sync/deferred/DeferredCollection$2$2;

    invoke-direct {v6, p0, v2}, Lcom/amazon/device/sync/deferred/DeferredCollection$2$2;-><init>(Lcom/amazon/device/sync/deferred/DeferredCollection$2;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$2;->val$retryPolicy:Lcom/amazon/device/sync/gear/RetryPolicy;

    invoke-direct {v4, v5, v6, v2}, Lcom/amazon/device/sync/deferred/Deferred;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Callable;Lcom/amazon/device/sync/gear/RetryPolicy;)V

    new-instance v2, Lcom/amazon/device/sync/deferred/DeferredCollection$2$1;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/sync/deferred/DeferredCollection$2$1;-><init>(Lcom/amazon/device/sync/deferred/DeferredCollection$2;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v4, v2}, Lcom/amazon/device/sync/deferred/Deferred;->then(Ljava/lang/Runnable;)Lcom/amazon/device/sync/deferred/Deferred;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$2;->val$retryPolicy:Lcom/amazon/device/sync/gear/RetryPolicy;

    invoke-interface {v4}, Lcom/amazon/device/sync/gear/RetryPolicy;->getWaitTime()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v2, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 74
    iget-object v1, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$2;->val$gather:Lcom/amazon/device/sync/deferred/DeferredCollection;

    invoke-virtual {v1, v0}, Lcom/amazon/device/sync/deferred/Deferred;->setException(Ljava/lang/Throwable;)V

    return-void
.end method
