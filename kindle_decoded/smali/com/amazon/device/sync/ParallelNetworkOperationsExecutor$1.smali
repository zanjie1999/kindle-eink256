.class Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;
.super Ljava/lang/Object;
.source "ParallelNetworkOperationsExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->submitOperation(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

.field final synthetic val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    iput-object p2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v0, 0xa

    .line 197
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 200
    :try_start_0
    iget-object v2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v2}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$000(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 203
    :try_start_1
    iget-object v3, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v3}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$100(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v4}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getLockKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 204
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 207
    :try_start_2
    iget-object v2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v2}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$200(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    .line 210
    iget-object v2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-static {v2}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->access$300(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 257
    iget-object v2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v2}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$000(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 259
    :try_start_3
    iget-object v3, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v3}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$100(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v4}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getLockKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    iget-object v3, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v3}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$100(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v4}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getLockKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v0}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$100(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v3}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getLockKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    .line 268
    :goto_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    .line 271
    iget-object v2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v2, v0}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$700(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v0}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->shouldRetry()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v0, v1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->setShouldRetry(Z)V

    .line 276
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    iget-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v0, v1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->addOperation(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)Ljava/util/concurrent/Future;

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 268
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 216
    :cond_3
    :try_start_5
    iget-object v2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v2}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$000(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 218
    :try_start_6
    iget-object v3, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v3}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$400(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Lcom/amazon/device/sync/ExecutorTimeout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/sync/ExecutorTimeout;->getWaitTime()J

    move-result-wide v3

    .line 219
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-lez v2, :cond_4

    .line 224
    :try_start_7
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 231
    :catch_0
    :cond_4
    :try_start_8
    iget-object v2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-virtual {v2}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->isNetworkAvailable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 233
    iget-object v2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v2}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$500(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 235
    iget-object v2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v2}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$400(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Lcom/amazon/device/sync/ExecutorTimeout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/sync/ExecutorTimeout;->onNetworkChanged()V

    .line 237
    :cond_5
    iget-object v2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v2}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$500(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 238
    iget-object v2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    iget-object v3, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-static {v2, v3}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$600(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)Z

    goto :goto_1

    .line 242
    :cond_6
    iget-object v2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v2}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$400(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Lcom/amazon/device/sync/ExecutorTimeout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/sync/ExecutorTimeout;->onNetworkUnavailable()V

    .line 243
    iget-object v2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v2}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$500(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 246
    iget-object v2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-static {v2}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->access$300(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 257
    :goto_1
    iget-object v2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v2}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$000(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 259
    :try_start_9
    iget-object v3, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v3}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$100(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v4}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getLockKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 262
    iget-object v3, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v3}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$100(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v4}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getLockKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 266
    :cond_7
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v0}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$100(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v3}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getLockKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    .line 268
    :goto_2
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v0, :cond_8

    .line 271
    iget-object v2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v2, v0}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$700(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V

    .line 273
    :cond_8
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v0}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->shouldRetry()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 275
    :goto_3
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v0, v1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->setShouldRetry(Z)V

    .line 276
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    iget-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v0, v1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->addOperation(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)Ljava/util/concurrent/Future;

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    .line 268
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0

    :catchall_2
    move-exception v3

    .line 219
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_3
    move-exception v3

    .line 204
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception v2

    goto/16 :goto_6

    :catch_1
    move-exception v2

    .line 251
    :try_start_f
    iget-object v3, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    iget-object v3, v3, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v4, "Received Exception while running operation:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v6}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v2, v4, v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 252
    iget-object v2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-static {v2}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->access$300(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 257
    iget-object v2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v2}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$000(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 259
    :try_start_10
    iget-object v3, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v3}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$100(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v4}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getLockKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 262
    iget-object v3, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v3}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$100(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v4}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getLockKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 266
    :cond_9
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v0}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$100(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v3}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getLockKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    .line 268
    :goto_4
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    if-eqz v0, :cond_a

    .line 271
    iget-object v2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v2, v0}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$700(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V

    .line 273
    :cond_a
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v0}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->shouldRetry()Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_3

    :cond_b
    :goto_5
    return-void

    :catchall_5
    move-exception v0

    .line 268
    :try_start_11
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    throw v0

    .line 257
    :goto_6
    iget-object v3, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v3}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$000(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 259
    :try_start_12
    iget-object v4, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v4}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$100(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v5}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getLockKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 262
    iget-object v4, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v4}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$100(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v5}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getLockKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 266
    :cond_c
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v0}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$100(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v4, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v4}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getLockKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    .line 268
    :goto_7
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    if-eqz v0, :cond_d

    .line 271
    iget-object v3, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    invoke-static {v3, v0}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->access$700(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V

    .line 273
    :cond_d
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v0}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->shouldRetry()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 275
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v0, v1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->setShouldRetry(Z)V

    .line 276
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->this$0:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;

    iget-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;->val$operation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {v0, v1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->addOperation(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)Ljava/util/concurrent/Future;

    .line 278
    :cond_e
    throw v2

    :catchall_6
    move-exception v0

    .line 268
    :try_start_13
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    throw v0
.end method
