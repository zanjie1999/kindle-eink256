.class Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$QueueWorker;
.super Ljava/lang/Thread;
.source "ForwardingLifecycleListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$QueueWorker;->this$0:Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$QueueWorker;-><init>(Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v0, 0xa

    .line 45
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 47
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$QueueWorker;->this$0:Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;

    invoke-static {v0}, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->access$000(Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$QueueWorker;->this$0:Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;

    invoke-static {v0}, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->access$100(Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 49
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 52
    invoke-static {}, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Interrupted while processing work queue."

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
