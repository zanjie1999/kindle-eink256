.class public interface abstract Lcom/amazon/kindle/krx/thread/IThreadPoolManager;
.super Ljava/lang/Object;
.source "IThreadPoolManager.java"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# virtual methods
.method public abstract execute(Ljava/lang/Runnable;Z)V
.end method

.method public abstract executeOrSubmit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract executeOrSubmit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract isRunningOnMainThread()Z
.end method

.method public abstract schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
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
.end method

.method public abstract scheduleOnMainThread(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
.end method

.method public abstract submitOnMainThread(Ljava/lang/Runnable;)V
.end method
