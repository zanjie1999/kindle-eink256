.class public abstract Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;
.super Ljava/lang/Object;
.source "AsyncToSyncAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mAsyncTaskDoneLatch:Ljava/util/concurrent/CountDownLatch;

.field private mHasRun:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;->mAsyncTaskDoneLatch:Ljava/util/concurrent/CountDownLatch;

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;->mHasRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method protected asyncOperationComplete()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;->mAsyncTaskDoneLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method protected interruptAsyncOperation()V
    .locals 0

    return-void
.end method

.method protected onTimeout()V
    .locals 0

    return-void
.end method

.method public declared-synchronized run()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 29
    :try_start_0
    invoke-virtual {p0, v0, v0}, Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;->run(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized run(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)V
    .locals 5

    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;->mHasRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget-object p1, Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;->TAG:Ljava/lang/String;

    const-string p2, "Attempted to call run() more than once on the same object."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    .line 44
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;->startAsyncOperation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz p1, :cond_2

    .line 51
    :try_start_2
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;->mAsyncTaskDoneLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 53
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;->onTimeout()V

    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;->mAsyncTaskDoneLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 65
    :catch_0
    :try_start_3
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;->interruptAsyncOperation()V

    .line 68
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;->mAsyncTaskDoneLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 69
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract startAsyncOperation()V
.end method
