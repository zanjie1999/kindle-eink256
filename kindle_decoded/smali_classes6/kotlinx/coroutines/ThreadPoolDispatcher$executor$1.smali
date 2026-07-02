.class final Lkotlinx/coroutines/ThreadPoolDispatcher$executor$1;
.super Ljava/lang/Object;
.source "ThreadPoolDispatcher.kt"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic this$0:Lkotlinx/coroutines/ThreadPoolDispatcher;


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4

    .line 83
    new-instance v0, Lkotlinx/coroutines/PoolThread;

    iget-object v1, p0, Lkotlinx/coroutines/ThreadPoolDispatcher$executor$1;->this$0:Lkotlinx/coroutines/ThreadPoolDispatcher;

    invoke-static {v1}, Lkotlinx/coroutines/ThreadPoolDispatcher;->access$getNThreads$p(Lkotlinx/coroutines/ThreadPoolDispatcher;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lkotlinx/coroutines/ThreadPoolDispatcher$executor$1;->this$0:Lkotlinx/coroutines/ThreadPoolDispatcher;

    invoke-static {v2}, Lkotlinx/coroutines/ThreadPoolDispatcher;->access$getName$p(Lkotlinx/coroutines/ThreadPoolDispatcher;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lkotlinx/coroutines/ThreadPoolDispatcher$executor$1;->this$0:Lkotlinx/coroutines/ThreadPoolDispatcher;

    invoke-static {v3}, Lkotlinx/coroutines/ThreadPoolDispatcher;->access$getName$p(Lkotlinx/coroutines/ThreadPoolDispatcher;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lkotlinx/coroutines/ThreadPoolDispatcher$executor$1;->this$0:Lkotlinx/coroutines/ThreadPoolDispatcher;

    invoke-static {v3}, Lkotlinx/coroutines/ThreadPoolDispatcher;->access$getThreadNo$p(Lkotlinx/coroutines/ThreadPoolDispatcher;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v1, p1, v2}, Lkotlinx/coroutines/PoolThread;-><init>(Lkotlinx/coroutines/ThreadPoolDispatcher;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
