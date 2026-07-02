.class public Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;
.super Ljava/lang/Object;
.source "BackgroundTaskQueue.java"


# instance fields
.field private final mAllTasksCompletedRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mThreadQueue:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;->mTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;->mHandler:Landroid/os/Handler;

    .line 15
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue$1;-><init>(Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;->mAllTasksCompletedRunnable:Ljava/lang/Runnable;

    .line 28
    invoke-static {p1}, Lcom/amazon/whispersync/dcp/framework/MagicExecutors;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;->mThreadQueue:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;->mTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;)Ljava/lang/Runnable;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;->mAllTasksCompletedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;)Landroid/os/Handler;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public isEmpty()Z
    .locals 5

    .line 67
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/ThreadHelpers;->isRunningOnMainThread()Z

    move-result v0

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "You can only check the task queue state from the main thread"

    invoke-static {v0, v1, v4, v3}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkTrue(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;->mTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method protected onAllTasksCompleted()V
    .locals 0

    return-void
.end method

.method public queue(Ljava/lang/Runnable;)V
    .locals 4

    .line 33
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/ThreadHelpers;->isRunningOnMainThread()Z

    move-result v0

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "You can only queue background tasks from the main thread"

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkTrue(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;->mTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 39
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;->mAllTasksCompletedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;->mThreadQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue$2;-><init>(Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;->mThreadQueue:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
