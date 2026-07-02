.class Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue$2;
.super Ljava/lang/Object;
.source "BackgroundTaskQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;->queue(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;Ljava/lang/Runnable;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue$2;->this$0:Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue$2;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-wide/16 v0, 0x1

    .line 47
    :try_start_0
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue$2;->val$task:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue$2;->this$0:Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;

    invoke-static {v2}, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;->access$000(Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-gtz v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue$2;->this$0:Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;

    invoke-static {v2}, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;->access$200(Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue$2;->this$0:Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;

    invoke-static {v3}, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;->access$100(Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;)Ljava/lang/Runnable;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    .line 51
    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue$2;->this$0:Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;

    invoke-static {v3}, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;->access$000(Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-gtz v3, :cond_1

    .line 53
    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue$2;->this$0:Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;

    invoke-static {v3}, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;->access$200(Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue$2;->this$0:Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;

    invoke-static {v4}, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;->access$100(Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;)Ljava/lang/Runnable;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    throw v2
.end method
