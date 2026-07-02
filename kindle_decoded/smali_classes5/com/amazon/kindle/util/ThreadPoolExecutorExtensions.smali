.class public final Lcom/amazon/kindle/util/ThreadPoolExecutorExtensions;
.super Ljava/lang/Object;
.source "ThreadPoolExecutor+Extensions.kt"


# direct methods
.method public static final isTaskInQueue(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)Z
    .locals 1

    const-string v0, "$this$isTaskInQueue"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
