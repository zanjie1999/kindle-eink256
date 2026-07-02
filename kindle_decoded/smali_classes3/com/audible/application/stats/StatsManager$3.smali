.class Lcom/audible/application/stats/StatsManager$3;
.super Ljava/lang/Object;
.source "StatsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/application/stats/StatsManager;-><init>(Landroid/content/Context;Lcom/audible/application/stats/util/IHttpClientManager;Lcom/audible/application/stats/util/IConnectivityManager;Lcom/audible/application/stats/util/IStatsDemoManager;Ljava/net/URI;Ljava/io/File;Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;Lcom/audible/application/stats/storage/IBadgeMetadataRepository;Lcom/audible/application/stats/storage/ICustomerStatsRepository;Lcom/audible/application/stats/util/IStatsNotificationManager;Lcom/audible/application/stats/util/IStatsBadgeImageCallback;Lcom/audible/application/stats/util/IStatsCalendarManager;Ljava/util/concurrent/ExecutorService;Ljava/lang/Integer;Lcom/audible/application/stats/integration/StoreType;Ljava/lang/Boolean;Lcom/audible/application/stats/util/IStatsPositionTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/application/stats/StatsManager;


# direct methods
.method constructor <init>(Lcom/audible/application/stats/StatsManager;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 320
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v0}, Lcom/audible/application/stats/StatsManager;->access$000(Lcom/audible/application/stats/StatsManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v1}, Lcom/audible/application/stats/StatsManager;->access$100(Lcom/audible/application/stats/StatsManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    const-wide/16 v1, 0x2710

    const/4 v3, 0x0

    .line 332
    :try_start_1
    iget-object v4, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v4}, Lcom/audible/application/stats/StatsManager;->access$200(Lcom/audible/application/stats/StatsManager;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 333
    iget-object v4, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v4}, Lcom/audible/application/stats/StatsManager;->access$200(Lcom/audible/application/stats/StatsManager;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/FutureTask;

    invoke-virtual {v4}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v4

    if-nez v4, :cond_1

    .line 335
    iget-object v4, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    iget-object v5, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v5}, Lcom/audible/application/stats/StatsManager;->access$300(Lcom/audible/application/stats/StatsManager;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-static {v4, v5, v1, v2}, Lcom/audible/application/stats/StatsManager;->access$400(Lcom/audible/application/stats/StatsManager;Ljava/lang/Runnable;J)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 338
    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v4}, Lcom/audible/application/stats/StatsManager;->access$200(Lcom/audible/application/stats/StatsManager;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/FutureTask;

    if-eqz v4, :cond_4

    .line 340
    invoke-virtual {v4}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 341
    iget-object v4, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v4, v3}, Lcom/audible/application/stats/StatsManager;->access$502(Lcom/audible/application/stats/StatsManager;I)I

    goto :goto_1

    .line 344
    :cond_2
    iget-object v4, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v4}, Lcom/audible/application/stats/StatsManager;->access$508(Lcom/audible/application/stats/StatsManager;)I

    .line 345
    iget-object v4, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v4}, Lcom/audible/application/stats/StatsManager;->access$500(Lcom/audible/application/stats/StatsManager;)I

    move-result v4

    iget-object v5, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v5}, Lcom/audible/application/stats/StatsManager;->access$600(Lcom/audible/application/stats/StatsManager;)I

    move-result v5
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    :try_start_4
    const-string v4, "StatsManager mDispatchFutureTask failed to send stats to server"

    .line 346
    invoke-static {v4}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 347
    iget-object v4, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v4}, Lcom/audible/application/stats/StatsManager;->access$200(Lcom/audible/application/stats/StatsManager;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v6, :cond_5

    .line 349
    new-instance v4, Ljava/util/concurrent/FutureTask;

    iget-object v5, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v5}, Lcom/audible/application/stats/StatsManager;->access$700(Lcom/audible/application/stats/StatsManager;)Ljava/util/concurrent/Callable;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 350
    iget-object v5, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v5}, Lcom/audible/application/stats/StatsManager;->access$200(Lcom/audible/application/stats/StatsManager;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_3

    :cond_4
    :goto_1
    const/4 v6, 0x0

    goto :goto_4

    :catch_2
    move-exception v4

    const/4 v6, 0x0

    .line 359
    :goto_2
    :try_start_5
    iget-object v5, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v5}, Lcom/audible/application/stats/StatsManager;->access$200(Lcom/audible/application/stats/StatsManager;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    const-string v5, "StatsManager InterruptedException when running mDispatchFutureTask"

    .line 360
    invoke-static {v5, v4}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_3
    move-exception v4

    const/4 v6, 0x0

    .line 356
    :goto_3
    iget-object v5, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v5}, Lcom/audible/application/stats/StatsManager;->access$200(Lcom/audible/application/stats/StatsManager;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    const-string v5, "StatsManager ExecutionException when running mDispatchFutureTask"

    .line 357
    invoke-static {v5, v4}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    if-eqz v6, :cond_6

    .line 364
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v1}, Lcom/audible/application/stats/StatsManager;->access$200(Lcom/audible/application/stats/StatsManager;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 365
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v1, v3}, Lcom/audible/application/stats/StatsManager;->access$502(Lcom/audible/application/stats/StatsManager;I)I

    const-string v1, "StatsManager maxAttemptsToTransmitNetworkDataExceeded clearing queue"

    .line 366
    invoke-static {v1}, Lcom/audible/application/stats/util/LogController;->w(Ljava/lang/String;)V

    goto :goto_5

    .line 368
    :cond_6
    iget-object v3, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v3}, Lcom/audible/application/stats/StatsManager;->access$200(Lcom/audible/application/stats/StatsManager;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "mDispatchFutureTask not empty, executing"

    .line 369
    invoke-static {v3}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 370
    iget-object v3, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v3}, Lcom/audible/application/stats/StatsManager;->access$800(Lcom/audible/application/stats/StatsManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iget-object v4, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v4}, Lcom/audible/application/stats/StatsManager;->access$200(Lcom/audible/application/stats/StatsManager;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 371
    iget-object v3, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    iget-object v4, p0, Lcom/audible/application/stats/StatsManager$3;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-static {v4}, Lcom/audible/application/stats/StatsManager;->access$300(Lcom/audible/application/stats/StatsManager;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Lcom/audible/application/stats/StatsManager;->access$400(Lcom/audible/application/stats/StatsManager;Ljava/lang/Runnable;J)V

    .line 374
    :cond_7
    :goto_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method
