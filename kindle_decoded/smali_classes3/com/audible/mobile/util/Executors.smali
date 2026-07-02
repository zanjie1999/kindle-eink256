.class public Lcom/audible/mobile/util/Executors;
.super Ljava/lang/Object;
.source "Executors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/util/Executors$NamedThreadFactory;
    }
.end annotation


# static fields
.field private static final SHORT_TASK_EXECUTOR:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "aap-short-task-executor"

    .line 18
    invoke-static {v0}, Lcom/audible/mobile/util/Executors;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/audible/mobile/util/Executors;->SHORT_TASK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static newCachedThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 9

    .line 49
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lcom/audible/mobile/util/Executors$NamedThreadFactory;

    invoke-direct {v7, p1}, Lcom/audible/mobile/util/Executors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-wide/16 v3, 0x3c

    move-object v0, v8

    move v2, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v8
.end method

.method public static newCachedThreadPool(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 36
    new-instance v0, Lcom/audible/mobile/util/Executors$NamedThreadFactory;

    invoke-direct {v0, p0}, Lcom/audible/mobile/util/Executors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static newFixedThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 31
    new-instance v0, Lcom/audible/mobile/util/Executors$NamedThreadFactory;

    invoke-direct {v0, p1}, Lcom/audible/mobile/util/Executors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static newQueueingCachedThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9

    .line 63
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/audible/mobile/util/Executors$NamedThreadFactory;

    invoke-direct {v7, p1}, Lcom/audible/mobile/util/Executors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-wide/16 v3, 0x3c

    move-object v0, v8

    move v2, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v8
.end method

.method public static newScheduledThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 68
    new-instance v0, Lcom/audible/mobile/util/Executors$NamedThreadFactory;

    invoke-direct {v0, p1}, Lcom/audible/mobile/util/Executors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 73
    new-instance v0, Lcom/audible/mobile/util/Executors$NamedThreadFactory;

    invoke-direct {v0, p0}, Lcom/audible/mobile/util/Executors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static newSingleThreadScheduledExecutor(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 78
    new-instance v0, Lcom/audible/mobile/util/Executors$NamedThreadFactory;

    invoke-direct {v0, p0}, Lcom/audible/mobile/util/Executors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method
