.class public Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;
.super Ljava/lang/Object;
.source "AsyncTaskExecutor.java"


# static fields
.field private static final THREAD_POOL_SIZE:I = 0x3


# instance fields
.field private executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public executeAsync(Ljava/lang/Runnable;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public executeAsync(Ljava/lang/Runnable;ILjava/util/concurrent/TimeUnit;)V
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
