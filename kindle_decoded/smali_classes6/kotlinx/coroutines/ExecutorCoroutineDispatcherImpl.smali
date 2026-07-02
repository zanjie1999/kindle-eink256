.class final Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;
.super Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;
.source "Executors.kt"


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;


# virtual methods
.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 78
    iget-object v0, p0, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method
