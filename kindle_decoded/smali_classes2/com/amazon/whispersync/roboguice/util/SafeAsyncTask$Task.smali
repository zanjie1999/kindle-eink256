.class public Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;
.super Ljava/lang/Object;
.source "SafeAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected handler:Landroid/os/Handler;

.field protected parent:Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask<",
            "TResultT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask<",
            "TResultT;>;)V"
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->parent:Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;

    .line 164
    iget-object p1, p1, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->doPreExecute()V

    .line 170
    invoke-virtual {p0}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->doCall()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->doSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->doFinally()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 182
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->doThrowable(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 185
    :try_start_2
    invoke-static {v0}, Lcom/amazon/whispersync/roboguice/util/Ln;->e(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 174
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->doException(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 177
    :try_start_4
    invoke-static {v0}, Lcom/amazon/whispersync/roboguice/util/Ln;->e(Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 188
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->doFinally()V

    throw v0
.end method

.method protected doCall()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->parent:Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected doException(Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->parent:Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;

    iget-object v0, v0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;->launchLocation:[Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 219
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->parent:Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;

    iget-object v1, v1, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;->launchLocation:[Ljava/lang/StackTraceElement;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 220
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p1, v0}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 222
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$3;-><init>(Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->postToUiThreadAndWait(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method protected doFinally()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 248
    new-instance v0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$5;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$5;-><init>(Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;)V

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->postToUiThreadAndWait(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method protected doPreExecute()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$1;-><init>(Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;)V

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->postToUiThreadAndWait(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method protected doSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 208
    new-instance v0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$2;-><init>(Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->postToUiThreadAndWait(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method protected doThrowable(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->parent:Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;

    iget-object v0, v0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;->launchLocation:[Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_0

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 236
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->parent:Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;

    iget-object v1, v1, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;->launchLocation:[Ljava/lang/StackTraceElement;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 237
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 239
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$4;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$4;-><init>(Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->postToUiThreadAndWait(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method protected postToUiThreadAndWait(Ljava/util/concurrent/Callable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v1, v1, [Ljava/lang/Exception;

    .line 272
    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$6;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$6;-><init>(Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;Ljava/util/concurrent/Callable;[Ljava/lang/Exception;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    const/4 p1, 0x0

    .line 287
    aget-object v0, v1, p1

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    aget-object p1, v1, p1

    throw p1
.end method
