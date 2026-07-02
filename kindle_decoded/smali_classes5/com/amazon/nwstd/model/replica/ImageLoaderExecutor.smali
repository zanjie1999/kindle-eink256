.class public Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;
.super Ljava/lang/Object;
.source "ImageLoaderExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;,
        Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$CustomThreadFactory;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_THREADS:I = 0x2

.field private static final EXECUTOR_TERMINATION_DURATION:I = 0xa


# instance fields
.field protected mThreadPoolExecutor:Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;


# direct methods
.method public constructor <init>(ILcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;->mThreadPoolExecutor:Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;

    .line 86
    new-instance v0, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;

    new-instance v1, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$CustomThreadFactory;

    invoke-direct {v1, p0, p2}, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$CustomThreadFactory;-><init>(Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;)V

    invoke-direct {v0, p1, v1}, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;->mThreadPoolExecutor:Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;

    .line 87
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->prestartAllCoreThreads()I

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;->mThreadPoolExecutor:Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;->mThreadPoolExecutor:Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->resume()V

    return-void
.end method

.method public shutdown()V
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;->mThreadPoolExecutor:Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;->mThreadPoolExecutor:Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :goto_0
    iput-object v0, p0, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;->mThreadPoolExecutor:Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    const/4 v1, 0x0

    :try_start_1
    const-string v2, "ExecutorService is interrupted"

    .line 150
    invoke-static {v1, v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 152
    :goto_2
    iput-object v0, p0, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;->mThreadPoolExecutor:Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;

    .line 153
    throw v1
.end method

.method public submit(Lcom/amazon/nwstd/model/replica/Job;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;->mThreadPoolExecutor:Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
