.class public interface abstract Lcom/amazon/foundation/internal/IThreadPoolManager;
.super Ljava/lang/Object;
.source "IThreadPoolManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/thread/IThreadPoolManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;
    }
.end annotation


# virtual methods
.method public abstract ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;
.end method

.method public abstract setStartupCompleted(Lcom/amazon/kindle/krx/foundation/StartupType;)V
.end method

.method public abstract shutdown(Ljava/util/concurrent/ExecutorService;)V
.end method

.method public abstract submit(Ljava/util/concurrent/Callable;Z)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;Z)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract submitSingleThreadTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
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
