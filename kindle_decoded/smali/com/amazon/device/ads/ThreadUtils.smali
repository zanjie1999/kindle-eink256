.class Lcom/amazon/device/ads/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;,
        Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;,
        Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;,
        Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;,
        Lcom/amazon/device/ads/ThreadUtils$ThreadExecutor;,
        Lcom/amazon/device/ads/ThreadUtils$BackgroundThreadRunner;,
        Lcom/amazon/device/ads/ThreadUtils$MainThreadRunner;,
        Lcom/amazon/device/ads/ThreadUtils$SingleThreadScheduler;,
        Lcom/amazon/device/ads/ThreadUtils$ThreadPoolScheduler;,
        Lcom/amazon/device/ads/ThreadUtils$MainThreadScheduler;,
        Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;,
        Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;
    }
.end annotation


# static fields
.field private static threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    invoke-direct {v0}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/ThreadUtils;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    return-void
.end method

.method static synthetic access$000()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    return-object v0
.end method

.method public static executeOnMainThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 114
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    invoke-static {p0, v0}, Lcom/amazon/device/ads/ThreadUtils;->executeOnMainThread(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V

    return-void
.end method

.method public static executeOnMainThread(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V
    .locals 2

    .line 118
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v1, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {p1, p0, v0, v1}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    return-void
.end method

.method public static getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    return-object v0
.end method

.method public static isOnMainThread()Z
    .locals 1

    .line 42
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;->getInstance()Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;->isOnMainThread()Z

    move-result v0

    return v0
.end method

.method public static scheduleOnMainThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 98
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    invoke-static {p0, v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleOnMainThread(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V

    return-void
.end method

.method public static scheduleOnMainThread(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V
    .locals 2

    .line 102
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v1, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {p1, p0, v0, v1}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    return-void
.end method

.method public static scheduleRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 69
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    invoke-static {p0, v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleRunnable(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V

    return-void
.end method

.method public static scheduleRunnable(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V
    .locals 2

    .line 73
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v1, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->BACKGROUND_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {p1, p0, v0, v1}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    return-void
.end method
