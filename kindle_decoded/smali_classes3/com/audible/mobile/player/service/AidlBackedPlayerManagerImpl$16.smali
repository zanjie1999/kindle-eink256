.class Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;
.super Ljava/lang/Object;
.source "AidlBackedPlayerManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->bindAndExecuteCommand(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

.field final synthetic val$playerServiceCommand:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    iput-object p2, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->val$playerServiceCommand:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$100(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$200(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    :try_start_1
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->val$playerServiceCommand:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;

    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$300(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;->execute(Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$100(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$100(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 609
    throw v0

    .line 612
    :cond_0
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->Player:Lcom/audible/mobile/metric/logger/AAPCategory;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPSource;->Manager:Lcom/audible/mobile/metric/logger/AAPSource;

    sget-object v3, Lcom/audible/mobile/player/metric/Names;->ServiceBinding:Lcom/audible/mobile/player/metric/Names;

    invoke-direct {v0, v1, v2, v3}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    invoke-virtual {v0}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v0

    .line 613
    invoke-interface {v0}, Lcom/audible/mobile/metric/domain/TimerMetric;->start()V

    .line 615
    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$400(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V

    .line 616
    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$600(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;

    invoke-direct {v3, p0, v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;Lcom/audible/mobile/metric/domain/TimerMetric;)V

    invoke-static {v2, v3}, Lcom/audible/mobile/player/service/PlayerService;->bindToService(Landroid/content/Context;Lcom/audible/mobile/player/service/PlayerService$OnBind;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$502(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    return-void

    :catch_0
    move-exception v0

    .line 600
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
