.class public Lcom/amazon/xray/model/loader/ContentLoader;
.super Ljava/lang/Object;
.source "ContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/model/loader/ContentLoader$InternalAsyncTask;,
        Lcom/amazon/xray/model/loader/ContentLoader$Task;,
        Lcom/amazon/xray/model/loader/ContentLoader$Strategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.xray.model.loader.ContentLoader"


# instance fields
.field private asyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "TResult;>;"
        }
    .end annotation
.end field

.field private loaded:Z

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResult;"
        }
    .end annotation
.end field

.field private final strategy:Lcom/amazon/xray/model/loader/ContentLoader$Strategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/xray/model/loader/ContentLoader$Strategy<",
            "TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/xray/model/loader/ContentLoader$Strategy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/xray/model/loader/ContentLoader$Strategy<",
            "TResult;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/amazon/xray/model/loader/ContentLoader;->loaded:Z

    .line 39
    iput-object p1, p0, Lcom/amazon/xray/model/loader/ContentLoader;->strategy:Lcom/amazon/xray/model/loader/ContentLoader$Strategy;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/xray/model/loader/ContentLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static load(Lcom/amazon/xray/model/loader/ContentLoader$Task;J)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/xray/model/loader/ContentLoader$Task<",
            "TT;>;J)TT;"
        }
    .end annotation

    const-string v0, "ms]"

    .line 56
    new-instance v1, Lcom/amazon/xray/model/loader/ContentLoader$InternalAsyncTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/amazon/xray/model/loader/ContentLoader$InternalAsyncTask;-><init>(Lcom/amazon/xray/model/loader/ContentLoader;Lcom/amazon/xray/model/loader/ContentLoader$Task;)V

    const/4 p0, 0x0

    new-array v3, p0, [Ljava/lang/Void;

    .line 57
    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    .line 64
    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v6}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 75
    :catch_0
    sget-object p0, Lcom/amazon/xray/model/loader/ContentLoader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Blocking loader timed out, aborting [Timeout="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 71
    :catch_1
    sget-object p0, Lcom/amazon/xray/model/loader/ContentLoader;->TAG:Ljava/lang/String;

    const-string v6, "Blocking loader interrupted, aborting"

    invoke-static {p0, v6}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :catch_2
    move-exception v1

    .line 68
    sget-object v5, Lcom/amazon/xray/model/loader/ContentLoader;->TAG:Ljava/lang/String;

    const-string v6, "Loader asyncTask execution failed"

    invoke-static {v5, v6, v1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v1

    .line 66
    sget-object v5, Lcom/amazon/xray/model/loader/ContentLoader;->TAG:Ljava/lang/String;

    const-string v6, "Loader asyncTask cancelled"

    invoke-static {v5, v6, v1}, Lcom/amazon/xray/plugin/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-nez p0, :cond_0

    .line 80
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 81
    sget-object p0, Lcom/amazon/xray/model/loader/ContentLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loader waited "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms [Timeout="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v2
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/amazon/xray/model/loader/ContentLoader;->asyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/amazon/xray/model/loader/ContentLoader;->asyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/amazon/xray/model/loader/ContentLoader;->asyncTask:Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load()V
    .locals 4

    monitor-enter p0

    .line 109
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/xray/model/loader/ContentLoader;->loaded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/amazon/xray/model/loader/ContentLoader;->strategy:Lcom/amazon/xray/model/loader/ContentLoader$Strategy;

    iget-object v2, p0, Lcom/amazon/xray/model/loader/ContentLoader;->result:Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/amazon/xray/model/loader/ContentLoader$Strategy;->onResult(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 115
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/xray/model/loader/ContentLoader;->strategy:Lcom/amazon/xray/model/loader/ContentLoader$Strategy;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/amazon/xray/model/loader/ContentLoader$Strategy;->onResult(Ljava/lang/Object;Z)V

    .line 118
    iget-object v0, p0, Lcom/amazon/xray/model/loader/ContentLoader;->asyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/xray/model/loader/ContentLoader;->asyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    :cond_1
    new-instance v0, Lcom/amazon/xray/model/loader/ContentLoader$InternalAsyncTask;

    iget-object v2, p0, Lcom/amazon/xray/model/loader/ContentLoader;->strategy:Lcom/amazon/xray/model/loader/ContentLoader$Strategy;

    invoke-interface {v2}, Lcom/amazon/xray/model/loader/ContentLoader$Strategy;->createTask()Lcom/amazon/xray/model/loader/ContentLoader$Task;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/amazon/xray/model/loader/ContentLoader$InternalAsyncTask;-><init>(Lcom/amazon/xray/model/loader/ContentLoader;Lcom/amazon/xray/model/loader/ContentLoader$Task;)V

    iput-object v0, p0, Lcom/amazon/xray/model/loader/ContentLoader;->asyncTask:Landroid/os/AsyncTask;

    new-array v1, v1, [Ljava/lang/Void;

    .line 120
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load(J)V
    .locals 7

    monitor-enter p0

    .line 131
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/xray/model/loader/ContentLoader;->loaded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 132
    iget-object p1, p0, Lcom/amazon/xray/model/loader/ContentLoader;->strategy:Lcom/amazon/xray/model/loader/ContentLoader$Strategy;

    iget-object p2, p0, Lcom/amazon/xray/model/loader/ContentLoader;->result:Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Lcom/amazon/xray/model/loader/ContentLoader$Strategy;->onResult(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 137
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/xray/model/loader/ContentLoader;->asyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/xray/model/loader/ContentLoader;->asyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    :cond_1
    new-instance v0, Lcom/amazon/xray/model/loader/ContentLoader$InternalAsyncTask;

    iget-object v2, p0, Lcom/amazon/xray/model/loader/ContentLoader;->strategy:Lcom/amazon/xray/model/loader/ContentLoader$Strategy;

    invoke-interface {v2}, Lcom/amazon/xray/model/loader/ContentLoader$Strategy;->createTask()Lcom/amazon/xray/model/loader/ContentLoader$Task;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/amazon/xray/model/loader/ContentLoader$InternalAsyncTask;-><init>(Lcom/amazon/xray/model/loader/ContentLoader;Lcom/amazon/xray/model/loader/ContentLoader$Task;)V

    iput-object v0, p0, Lcom/amazon/xray/model/loader/ContentLoader;->asyncTask:Landroid/os/AsyncTask;

    new-array v2, v1, [Ljava/lang/Void;

    .line 139
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 143
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 146
    :try_start_2
    iget-object v4, p0, Lcom/amazon/xray/model/loader/ContentLoader;->asyncTask:Landroid/os/AsyncTask;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p1, p2, v5}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/xray/model/loader/ContentLoader;->result:Ljava/lang/Object;

    .line 147
    iput-boolean v0, p0, Lcom/amazon/xray/model/loader/ContentLoader;->loaded:Z
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 153
    :try_start_3
    sget-object v4, Lcom/amazon/xray/model/loader/ContentLoader;->TAG:Ljava/lang/String;

    const-string v5, "Loader asyncTask interrupted"

    invoke-static {v4, v5, v1}, Lcom/amazon/xray/plugin/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 151
    sget-object v4, Lcom/amazon/xray/model/loader/ContentLoader;->TAG:Ljava/lang/String;

    const-string v5, "Loader asyncTask execution failed"

    invoke-static {v4, v5, v0}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v0

    .line 149
    sget-object v4, Lcom/amazon/xray/model/loader/ContentLoader;->TAG:Ljava/lang/String;

    const-string v5, "Loader asyncTask cancelled"

    invoke-static {v4, v5, v0}, Lcom/amazon/xray/plugin/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz v1, :cond_3

    .line 160
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    sget-object v0, Lcom/amazon/xray/model/loader/ContentLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loader waited until timeout [Timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 164
    :cond_3
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    sget-object v0, Lcom/amazon/xray/model/loader/ContentLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loader waited "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms [Timeout="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms]"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/amazon/xray/model/loader/ContentLoader;->strategy:Lcom/amazon/xray/model/loader/ContentLoader$Strategy;

    iget-object p2, p0, Lcom/amazon/xray/model/loader/ContentLoader;->result:Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Lcom/amazon/xray/model/loader/ContentLoader$Strategy;->onResult(Ljava/lang/Object;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized processResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    monitor-enter p0

    .line 179
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/xray/model/loader/ContentLoader;->loaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 180
    monitor-exit p0

    return-void

    .line 183
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/amazon/xray/model/loader/ContentLoader;->result:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/amazon/xray/model/loader/ContentLoader;->loaded:Z

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/amazon/xray/model/loader/ContentLoader;->asyncTask:Landroid/os/AsyncTask;

    .line 186
    iget-object v0, p0, Lcom/amazon/xray/model/loader/ContentLoader;->strategy:Lcom/amazon/xray/model/loader/ContentLoader$Strategy;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/xray/model/loader/ContentLoader$Strategy;->onResult(Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unload()V
    .locals 1

    monitor-enter p0

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/xray/model/loader/ContentLoader;->cancel()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/amazon/xray/model/loader/ContentLoader;->result:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/amazon/xray/model/loader/ContentLoader;->loaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
