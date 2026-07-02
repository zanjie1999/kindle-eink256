.class public Lcom/amazon/foundation/internal/ThreadPoolManager;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IThreadPoolManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/foundation/internal/ThreadPoolManager$ExecutorBuilder;,
        Lcom/amazon/foundation/internal/ThreadPoolManager$KARThreadExceptionHandler;
    }
.end annotation


# static fields
.field private static final CACHED_EXECUTOR_CORE_POOL_SIZE:I = 0x2

.field private static final CACHED_EXECUTOR_KEEP_ALIVE_SECONDS:J = 0x3cL

.field private static final PAUSABLE_EXECUTOR_CORE_POOL_SIZE:I = 0x2

.field private static final PAUSABLE_EXECUTOR_KEEP_ALIVE_SECONDS:I = 0x2

.field private static final SCHEDULED_EXECUTOR_CORE_POOL_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final THREAD_NAME_PREFIX:Ljava/lang/String; = "kar-"

.field private static final instance:Lcom/amazon/foundation/internal/IThreadPoolManager;


# instance fields
.field private final NONBLOCKING_STARTUP_TASKS_PAUSE_TIMEOUT:I

.field private final executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mainThreadHandler:Landroid/os/Handler;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final pausableThreadPoolExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

.field private final pauseStartTime:J

.field private final scheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final singleThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final startupCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final startupExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/amazon/foundation/internal/ThreadPoolManager;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/foundation/internal/ThreadPoolManager;->TAG:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/amazon/foundation/internal/ThreadPoolManager;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/ThreadPoolManager;-><init>()V

    sput-object v0, Lcom/amazon/foundation/internal/ThreadPoolManager;->instance:Lcom/amazon/foundation/internal/IThreadPoolManager;

    return-void
.end method

.method protected constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x4

    .line 75
    iput v1, v0, Lcom/amazon/foundation/internal/ThreadPoolManager;->NONBLOCKING_STARTUP_TASKS_PAUSE_TIMEOUT:I

    .line 81
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lcom/amazon/foundation/internal/ThreadPoolManager;->startupCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v9}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v10, Lcom/amazon/kindle/util/ThreadFactory;

    const/4 v11, 0x1

    new-array v3, v11, [Lcom/amazon/kindle/util/IThreadDecorator;

    new-instance v4, Lcom/amazon/kindle/util/Named;

    const-string v5, "kar-shared"

    invoke-direct {v4, v5}, Lcom/amazon/kindle/util/Named;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    invoke-direct {v10, v3}, Lcom/amazon/kindle/util/ThreadFactory;-><init>([Lcom/amazon/kindle/util/IThreadDecorator;)V

    const/4 v4, 0x2

    const v5, 0x7fffffff

    const-wide/16 v6, 0x3c

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, v0, Lcom/amazon/foundation/internal/ThreadPoolManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 92
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v17, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v18, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v18 .. v18}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v3, Lcom/amazon/kindle/util/ThreadFactory;

    new-array v4, v11, [Lcom/amazon/kindle/util/IThreadDecorator;

    new-instance v5, Lcom/amazon/kindle/util/Named;

    const-string v6, "kar-single"

    invoke-direct {v5, v6}, Lcom/amazon/kindle/util/Named;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v2

    invoke-direct {v3, v4}, Lcom/amazon/kindle/util/ThreadFactory;-><init>([Lcom/amazon/kindle/util/IThreadDecorator;)V

    const/4 v13, 0x1

    const/4 v14, 0x1

    const-wide/16 v15, 0x3c

    move-object v12, v1

    move-object/from16 v19, v3

    invoke-direct/range {v12 .. v19}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, v0, Lcom/amazon/foundation/internal/ThreadPoolManager;->singleThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 99
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lcom/amazon/kindle/util/ThreadFactory;

    new-array v4, v11, [Lcom/amazon/kindle/util/IThreadDecorator;

    new-instance v5, Lcom/amazon/kindle/util/Named;

    const-string v6, "kar-sharedSchedule"

    invoke-direct {v5, v6}, Lcom/amazon/kindle/util/Named;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v2

    invoke-direct {v3, v4}, Lcom/amazon/kindle/util/ThreadFactory;-><init>([Lcom/amazon/kindle/util/IThreadDecorator;)V

    invoke-direct {v1, v11, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v1, v0, Lcom/amazon/foundation/internal/ThreadPoolManager;->scheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 101
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3c

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 102
    iget-object v1, v0, Lcom/amazon/foundation/internal/ThreadPoolManager;->scheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1, v11}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 105
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v10, Lcom/amazon/kindle/util/ThreadFactory;

    new-array v3, v11, [Lcom/amazon/kindle/util/IThreadDecorator;

    new-instance v4, Lcom/amazon/kindle/util/Named;

    const-string v5, "kar-startupShared"

    invoke-direct {v4, v5}, Lcom/amazon/kindle/util/Named;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    invoke-direct {v10, v3}, Lcom/amazon/kindle/util/ThreadFactory;-><init>([Lcom/amazon/kindle/util/IThreadDecorator;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, v0, Lcom/amazon/foundation/internal/ThreadPoolManager;->startupExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 112
    new-instance v1, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    new-instance v17, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v3, Lcom/amazon/kindle/util/ThreadFactory;

    new-array v4, v11, [Lcom/amazon/kindle/util/IThreadDecorator;

    new-instance v5, Lcom/amazon/kindle/util/Named;

    const-string v6, "kar-pausable"

    invoke-direct {v5, v6}, Lcom/amazon/kindle/util/Named;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v2

    invoke-direct {v3, v4}, Lcom/amazon/kindle/util/ThreadFactory;-><init>([Lcom/amazon/kindle/util/IThreadDecorator;)V

    const/4 v13, 0x2

    const v14, 0x7fffffff

    const-wide/16 v15, 0x2

    move-object v12, v1

    move-object/from16 v18, v3

    invoke-direct/range {v12 .. v18}, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, v0, Lcom/amazon/foundation/internal/ThreadPoolManager;->pausableThreadPoolExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amazon/foundation/internal/ThreadPoolManager;->pauseStartTime:J

    .line 118
    iget-object v1, v0, Lcom/amazon/foundation/internal/ThreadPoolManager;->pausableThreadPoolExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->pause(J)V

    .line 119
    iget-object v1, v0, Lcom/amazon/foundation/internal/ThreadPoolManager;->pausableThreadPoolExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    new-instance v2, Lcom/amazon/foundation/internal/ThreadPoolManager$1;

    invoke-direct {v2, v0}, Lcom/amazon/foundation/internal/ThreadPoolManager$1;-><init>(Lcom/amazon/foundation/internal/ThreadPoolManager;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/amazon/foundation/internal/ThreadPoolManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;
    .locals 1

    .line 131
    sget-object v0, Lcom/amazon/foundation/internal/ThreadPoolManager;->instance:Lcom/amazon/foundation/internal/IThreadPoolManager;

    return-object v0
.end method

.method private getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 334
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/foundation/internal/ThreadPoolManager;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object v0
.end method

.method private getThreadPoolState()Ljava/lang/String;
    .locals 3

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Active "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 359
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " largest was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 360
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getLargestPoolSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " total ever "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 361
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;
    .locals 1

    .line 379
    new-instance v0, Lcom/amazon/foundation/internal/ThreadPoolManager$ExecutorBuilder;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/ThreadPoolManager$ExecutorBuilder;-><init>()V

    return-object v0
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    .line 267
    invoke-virtual {p0, p1, v0}, Lcom/amazon/foundation/internal/ThreadPoolManager;->execute(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;Z)V
    .locals 2

    if-nez p2, :cond_0

    .line 303
    iget-object p2, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->startupCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_0

    .line 304
    iget-object p2, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->pausableThreadPoolExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 305
    sget-object p1, Lcom/amazon/foundation/internal/ThreadPoolManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Add unblocking startup task to pausableThreadPoolExecutor, total tasks: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->pausableThreadPoolExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    .line 306
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 305
    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object p2, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public executeOrSubmit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 262
    invoke-virtual {p0, p1}, Lcom/amazon/foundation/internal/ThreadPoolManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public executeOrSubmit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 219
    invoke-virtual {p0, p1}, Lcom/amazon/foundation/internal/ThreadPoolManager;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method protected getMainThreadHandler()Landroid/os/Handler;
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->mainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->mainThreadHandler:Landroid/os/Handler;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->mainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ThreadPoolExecutor;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ThreadPoolExecutor;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isRunningOnMainThread()Z
    .locals 2

    .line 341
    invoke-virtual {p0}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShutdown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 274
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling Runnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->scheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public scheduleOnMainThread(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 290
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Queueing Runnable on main thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setStartupCompleted(Lcom/amazon/kindle/krx/foundation/StartupType;)V
    .locals 6

    .line 318
    iget-object v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->startupCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    sget-object v0, Lcom/amazon/foundation/internal/ThreadPoolManager;->TAG:Ljava/lang/String;

    const-string v1, "Set startupCompleted to true"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/amazon/kindle/krx/foundation/StartupType;->TIME_OUT:Lcom/amazon/kindle/krx/foundation/StartupType;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->pausableThreadPoolExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->resume()V

    .line 325
    :cond_0
    sget-object v0, Lcom/amazon/foundation/internal/ThreadPoolManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nonblocking tasks paused time(ms) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->pauseStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    sget-object v0, Lcom/amazon/foundation/internal/ThreadPoolManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Send out startup Completed event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-direct {p0}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/foundation/StartupEvent;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/krx/foundation/StartupEvent;-><init>(Lcom/amazon/kindle/krx/foundation/StartupType;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method

.method public shutdown(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 425
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 168
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 235
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queueing Runnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getThreadPoolState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 225
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queueing Runnable with result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getThreadPoolState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 194
    invoke-virtual {p0, p1, v0}, Lcom/amazon/foundation/internal/ThreadPoolManager;->submit(Ljava/util/concurrent/Callable;Z)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/util/concurrent/Callable;Z)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;Z)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 199
    iget-object p2, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->startupCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_0

    .line 200
    iget-object p2, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->pausableThreadPoolExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 201
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Submitting non-blocking startup task to pausableThreadPoolExecutor, total tasks: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->pausableThreadPoolExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    .line 202
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object p1

    .line 205
    :cond_0
    iget-object p2, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submitOnMainThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 282
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Queueing Runnable on main thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public submitSingleThreadTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager;->singleThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
