.class public final Lcom/amazon/kindle/dcaps/common/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# static fields
.field public static final DCAPS_COMMON_THREAD_POOL:Ljava/util/concurrent/Executor;

.field private static final LOCK:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/dcaps/common/ThreadUtils;->DCAPS_COMMON_THREAD_POOL:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    sput-object v0, Lcom/amazon/kindle/dcaps/common/ThreadUtils;->LOCK:[Ljava/lang/Object;

    return-void
.end method

.method public static isRunningOnMainThread()Z
    .locals 2

    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

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

.method public static runOffMainThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 34
    invoke-static {}, Lcom/amazon/kindle/dcaps/common/ThreadUtils;->isRunningOnMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/amazon/kindle/dcaps/common/ThreadUtils;->submitToBackgroundThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static submitToBackgroundThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kindle/dcaps/common/ThreadUtils;->DCAPS_COMMON_THREAD_POOL:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
