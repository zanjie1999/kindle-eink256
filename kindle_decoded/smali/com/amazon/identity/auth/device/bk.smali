.class public abstract Lcom/amazon/identity/auth/device/bk;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile hc:Ljava/util/concurrent/CountDownLatch;

.field private hd:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/identity/auth/device/bk;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/bk;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/bk;->hc:Ljava/util/concurrent/CountDownLatch;

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/bk;->hd:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public asyncOperationComplete()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bk;->hc:Ljava/util/concurrent/CountDownLatch;

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
    invoke-virtual {p0, v0, v0, v0}, Lcom/amazon/identity/auth/device/bk;->run(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;Ljava/lang/String;)V
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

.method public declared-synchronized run(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bk;->hd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget-object p1, Lcom/amazon/identity/auth/device/bk;->TAG:Ljava/lang/String;

    const-string p2, "Attempted to call run() more than once on the same object."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Starting the operation %s and waiting for it to finish"

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    .line 44
    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bk;->startAsyncOperation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz p1, :cond_2

    .line 52
    :try_start_2
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bk;->hc:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 54
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bk;->onTimeout()V

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bk;->hc:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 66
    :catch_0
    :try_start_3
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bk;->interruptAsyncOperation()V

    .line 69
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bk;->hc:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    const-string p1, "Completed the operation %s"

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p3, p2, v3

    .line 70
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract startAsyncOperation()V
.end method
