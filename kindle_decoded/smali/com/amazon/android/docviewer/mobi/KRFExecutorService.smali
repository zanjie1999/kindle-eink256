.class public Lcom/amazon/android/docviewer/mobi/KRFExecutorService;
.super Ljava/lang/Object;
.source "KRFExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFThreadFactory;,
        Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;,
        Lcom/amazon/android/docviewer/mobi/KRFExecutorService$ComparableFutureTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static executor:Ljava/util/concurrent/ExecutorService;

.field private static krfThreadId:J


# instance fields
.field private callbackThreadHandle:Landroid/os/Handler;

.field private volatile isShutdown:Z

.field private final taskSequence:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 40
    const-class v0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->TAG:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 44
    sput-wide v0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->krfThreadId:J

    .line 46
    new-instance v0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$1;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v9, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFThreadFactory;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$1;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide v5, 0x7fffffffffffffffL

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$1;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->isShutdown:Z

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->taskSequence:Ljava/util/concurrent/atomic/AtomicLong;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->callbackThreadHandle:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->taskSequence:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->isShutdown:Z

    return p0
.end method

.method static synthetic access$600(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->callbackThreadHandle:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$702(J)J
    .locals 0

    .line 39
    sput-wide p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->krfThreadId:J

    return-wide p0
.end method


# virtual methods
.method getKRFCallbackHandler()Landroid/os/Handler;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->callbackThreadHandle:Landroid/os/Handler;

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->isShutdown:Z

    return-void
.end method

.method public submitBlockingTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 115
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->isShutdown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 119
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    sget-wide v4, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->krfThreadId:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 121
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->call()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v0, 0xa

    .line 124
    invoke-static {p1, v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->access$102(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;I)I

    .line 126
    :try_start_0
    sget-object v0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 135
    sget-object v0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->TAG:Ljava/lang/String;

    const-string v2, "ExecutionException in a submitted KRFTask!"

    invoke-static {v0, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;Z)V

    return-void
.end method

.method public submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 153
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->isShutdown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 156
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitBlockingTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)Ljava/lang/Object;

    goto :goto_0

    .line 158
    :cond_1
    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->access$100(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    const/4 p2, 0x5

    .line 159
    invoke-static {p1, p2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->access$102(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;I)I

    .line 161
    :cond_2
    sget-object p2, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 162
    invoke-static {p1, p2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->access$202(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method
