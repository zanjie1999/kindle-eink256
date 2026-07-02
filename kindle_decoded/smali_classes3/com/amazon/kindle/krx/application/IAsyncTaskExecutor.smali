.class public interface abstract Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;
.super Ljava/lang/Object;
.source "IAsyncTaskExecutor.java"


# virtual methods
.method public abstract postOnUIThread(Ljava/lang/Runnable;)V
.end method

.method public abstract postOnUIThreadDelayed(Ljava/lang/Runnable;I)V
.end method

.method public abstract submit(Lcom/amazon/kindle/krx/application/IAsyncTask;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/krx/application/IAsyncTask<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation
.end method
