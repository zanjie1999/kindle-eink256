.class Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$1;
.super Ljava/lang/Object;
.source "ListenableNetworkOperationsExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;->submitOperation(Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;

.field final synthetic val$countDownFuture:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;

.field final synthetic val$listenableOperation:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;

    iput-object p2, p0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$1;->val$countDownFuture:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;

    iput-object p3, p0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$1;->val$listenableOperation:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 88
    iget-object v0, p0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$1;->val$countDownFuture:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;

    iget-object v2, p0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$1;->val$listenableOperation:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;

    invoke-virtual {v2}, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;->getOperation()Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->addOperation(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)Ljava/util/concurrent/Future;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_2

    .line 112
    :try_start_2
    iget-object v1, p0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$1;->val$listenableOperation:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;

    invoke-virtual {v1}, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;->onExecutionSuccessful()Ljava/util/List;

    move-result-object v1

    .line 113
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;

    .line 115
    iget-object v3, p0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;

    iget-object v4, p0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$1;->val$countDownFuture:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;

    invoke-static {v3, v2, v4}, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;->access$100(Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$1;->val$countDownFuture:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;

    invoke-virtual {v1}, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;->decrementCount()V

    goto :goto_1

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$1;->val$countDownFuture:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->onCompleted(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v1

    .line 106
    iget-object v2, p0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$1;->val$countDownFuture:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {v2, v1}, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->onException(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    .line 128
    :catch_1
    iget-object v1, p0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$1;->val$countDownFuture:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->onCompleted(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
